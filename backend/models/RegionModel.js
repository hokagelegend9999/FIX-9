import { DataTypes } from 'sequelize';
import db from '../config/Database.js';
import User from './UserModel.js';

const Region = db.define('region', {
    uuid: {
        type: DataTypes.UUID,
        defaultValue: DataTypes.UUIDV4,
        allowNull: false,
        comment: 'Unique identifier for the region'
    },
    country: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            notEmpty: true,
            len: [3, 100]
        },
        comment: 'Country name'
    },
    province: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            notEmpty: true,
            len: [3, 100]
        },
        comment: 'Province name'
    },
    city: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            notEmpty: true,
            len: [3, 100]
        },
        comment: 'City name'
    },
    userId: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            notEmpty: true
        },
        comment: 'Identifier of the user associated with this region'
    }
}, {
    freezeTableName: true
});

// Definisi relasi antara User dan Region
User.hasMany(Region);
Region.belongsTo(User, { foreignKey: 'userId' });

// Sinkronisasi model dengan basis data
Region.sync();

export default Region;
