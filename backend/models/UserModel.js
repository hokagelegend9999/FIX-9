import { Sequelize } from "sequelize";
import db from "../config/Database.js";
import argon2 from "argon2";

const {DataTypes} = Sequelize;

const Users = db.define('users',{
    userId: {
        type: DataTypes.INTEGER, // Ubah sesuai dengan tipe data yang sesuai
        allowNull: false,
        references: {
            model: 'users', // Ubah sesuai dengan nama tabel yang sesuai
            key: 'id' // Ubah sesuai dengan nama kolom yang sesuai di tabel referensi
        }
    },
    uuid:{
        type: DataTypes.STRING,
        defaultValue: DataTypes.UUIDV4,
        allowNull: false,
        validate:{
            notEmpty: true
        }
    },
    name:{
        type: DataTypes.STRING,
        allowNull: false,
        validate:{
            notEmpty: true,
            len: [3, 100]
        }
    },
    email:{
        type: DataTypes.STRING,
        allowNull: false,
        validate:{
            notEmpty: true,
            isEmail: true
        }
    },
    gender: {
        type: DataTypes.STRING,
        allowNull: true,
        
    },
    region: {
        type: DataTypes.STRING,
        allowNull: true,
        
    },
    password:{
        type: DataTypes.STRING,
        allowNull: false,
        validate:{
            notEmpty: true
        }
    },
    status: {
        type: DataTypes.ENUM('Aktif', 'Nonaktif'), // Definisikan jenis data status
        allowNull: false,
        defaultValue: 'active' // Atur nilai default untuk status
    },
    role:{
        type: DataTypes.STRING,
        allowNull: false,
        validate:{
            notEmpty: true
        }
    }
},{
    freezeTableName: true,
    hooks: {
        beforeCreate: async (user) => {
            if (user.password) {
                user.password = await argon2.hash(user.password);
            }
        },
        beforeUpdate: async (user) => {
            if (user.changed('password')) {
                user.password = await argon2.hash(user.password);
            }
        }
    }
});

export default Users;
