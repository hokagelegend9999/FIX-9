import User from "../models/UserModel.js";
import argon2 from "argon2";
import { Op } from "sequelize";

export const getUsers = async(req, res) => {
    try {
        const response = await User.findAll({
            attributes:['uuid','name','email','role','status','region','address','gender']
        });
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

export const getUserById = async (req, res) => {
    try {
        const user = await User.findOne({
            where: {
                uuid: req.params.id
            }
        });
        if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });

        let response;
        if (req.role === "admin") {
            response = await User.findOne({
                attributes: ['uuid','name','email','role','status','region','address','gender'],
                where: {
                    uuid: req.params.id
                },
                include: [{
                    model: User,
                    attributes: ['name', 'email']
                }]
            });
        } else {
            response = await User.findOne({
                attributes: ['uuid', 'name','password','confPassword', 'email', 'role', 'status','region'],
                where: {
                    [Op.and]: [{ uuid: req.params.id }, { userId: req.userId }]
                },
                include: [{
                    model: User,
                    attributes: ['name', 'email']
                }]
            });
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({ msg: error.message });
    }
};

export const createUser = async(req, res) => {
    const { name, email, password, confPassword, role, status,address,gender,region } = req.body;
    if (password !== confPassword) return res.status(400).json({ msg: "Password dan Confirm Password tidak cocok" });
    const hashPassword = await argon2.hash(password);
    try {
        await User.create({
            name: name,
            email: email,
            status: status,
            password: hashPassword,
            address: address,
            status: status,
            gender: gender,
            region: region,
            role: role,
            userId: req.userId
        });
        res.status(201).json({ msg: "Registrasi berhasil" });
    } catch (error) {
        res.status(400).json({ msg: error.message });
    }
}

export const updateUser = async(req, res) => {
    const user = await User.findOne({
        where: {
            uuid: req.params.id
        }
    });
    if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });
    const { name, email, password, role, status,address,gender,region } = req.body;

    try {
        await User.update({
            name: name,
            email: email,
            password: password,
            status: status,
            region: region,
           
            gender: gender,
            address: address,
            role: role,
        }, {
            where: {
                uuid: req.params.id
            }
        });
        res.status(200).json({ msg: "User diperbarui" });
    } catch (error) {
        res.status(400).json({ msg: error.message });
    }
}

export const deleteUser = async(req, res) => {
    const user = await User.findOne({
        where: {
            uuid: req.params.id
        }
    });
    if (!user) return res.status(404).json({ msg: "User tidak ditemukan" });
    try {
        await User.destroy({
            where: {
                uuid: req.params.id
            }
        });
        res.status(200).json({ msg: "User dihapus" });
    } catch (error) {
        res.status(400).json({ msg: error.message });
    }
}
