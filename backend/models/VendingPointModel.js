import { Sequelize } from "sequelize";
import db from "../config/Database.js";
import Users from "./UserModel.js";

const { DataTypes } = Sequelize;

const VendingPoints = db.define('vendingpoint', {
    uuid: {
        type: DataTypes.UUID,
        defaultValue: Sequelize.UUIDV4,
        allowNull: false
    },
    pointname: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [3, 255] // Ubah panjang batasan sesuai kebutuhan
        }
    },
    region: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [3, 255] // Ubah panjang batasan sesuai kebutuhan
        }
    },
    address: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [3, 255] // Ubah panjang batasan sesuai kebutuhan
        }
    },
    contactperson: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [3, 255] // Ubah panjang batasan sesuai kebutuhan
        }
    },
    tlp: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [3, 20] // Ubah panjang batasan sesuai kebutuhan
        }
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [3, 255], // Ubah panjang batasan sesuai kebutuhan
            isEmail: true // Validasi bahwa nilai email harus berupa alamat email yang valid
        }
    },
    status: {
        type: DataTypes.ENUM('active', 'inactive'), // Definisikan jenis data status
        allowNull: false,
        defaultValue: 'active' // Atur nilai default untuk status
    },
    userId:{
        type: DataTypes.INTEGER,
        allowNull: false,
        validate:{
            notEmpty: true
        }
    }
}, {
    freezeTableName: true
});

Users.hasMany(VendingPoints);
VendingPoints.belongsTo(Users, { foreignKey: 'userId' });

export default VendingPoints;
