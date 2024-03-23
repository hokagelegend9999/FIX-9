import VendingPoint from "../models/VendingPointModel.js";
import User from "../models/UserModel.js";
import { Op } from "sequelize";

export const updateVendingPointStatus = async (req, res) => {
    try {
        let response;
        if (req.role === "admin") {
            response = await VendingPoint.findAll({
                attributes: ['uuid', 'pointname', 'region', 'address', 'contactperson', 'tlp', 'email', 'status'],
                include: [{
                    model: User,
                    attributes: ['name', 'email']
                }]
            });
        } else {
            response = await VendingPoint.findAll({
                attributes: ['uuid', 'pointname', 'region', 'address', 'contactperson', 'tlp', 'email', 'status'],
                where: {
                    userId: req.userId
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
// VendingPoints.js

export const getVendingPointById = async (req, res) => {
    try {
        const vendingpoint = await VendingPoint.findOne({
            where: {
                uuid: req.params.id
            }
        });
        if (!vendingpoint) return res.status(404).json({ msg: "Data tidak ditemukan" });
        let response;
        if (req.role === "admin") {
            response = await VendingPoint.findOne({
                attributes: ['uuid', 'pointname', 'region', 'address', 'contactperson', 'tlp', 'email', 'status'],
                where: {
                    id: vendingpoint.id
                },
                include: [{
                    model: User,
                    attributes: ['name', 'email']
                }]
            });
        } else {
            response = await VendingPoint.findOne({
                attributes: ['uuid', 'pointname', 'region', 'address', 'contactperson', 'tlp', 'email', 'status'],
                where: {
                    [Op.and]: [{ id: vendingpoint.id }, { userId: req.userId }]
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


// VendingPoints.js

export const getVendingPoints = async (req, res) => {
    try {
        let response;
        if (req.role === "admin") {
            response = await VendingPoint.findAll({
                attributes: ['uuid', 'pointname', 'region', 'address', 'contactperson', 'tlp', 'email', 'status'],
                include: [{
                    model: User,
                    attributes: ['name', 'email']
                }]
            });
        } else {
            response = await VendingPoint.findAll({
                attributes: ['uuid', 'pointname', 'region', 'address', 'contactperson', 'tlp', 'email', 'status'],
                where: {
                    userId: req.userId
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


export const createVendingPoint = async (req, res) => {
    const { pointname, region, address, contactperson, tlp, email,status } = req.body;
    try {
        await VendingPoint.create({
            pointname: pointname,
            region: region,
            address: address,
            contactperson: contactperson,
            tlp: tlp,
            email: email,
            status: status,
            userId: req.userId
        });
        res.status(201).json({ msg: "Vending Point Created Successfully" });
    } catch (error) {
        res.status(500).json({ msg: error.message });
    }
};

export const updateVendingPoint = async (req, res) => {
    const { status } = req.body;
    try {
        const vendingpoint = await VendingPoint.findOne({
            where: {
                uuid: req.params.id
            }
        });

        if (!vendingpoint) return res.status(404).json({ msg: "Data tidak ditemukan" });

        // Perbarui status vending point
        vendingpoint.status = status;
        await vendingpoint.save();

        res.status(200).json({ msg: "Status vending point diperbarui" });
    } catch (error) {
        res.status(500).json({ msg: error.message });
    }
};

export const deleteVendingPoint = async (req, res) => {
    try {
        const vendingpoint = await VendingPoint.findOne({
            where: {
                uuid: req.params.id
            }
        });
        if (!vendingpoint) return res.status(404).json({ msg: "Data tidak ditemukan" });

        if (req.role === "admin") {
            await VendingPoint.destroy({
                where: {
                    id: vendingpoint.id
                }
            });
        } else {
            if (req.userId !== vendingpoint.userId) return res.status(403).json({ msg: "Akses terlarang" });
            await VendingPoint.destroy({
                where: {
                    [Op.and]: [{ id: vendingpoint.id }, { userId: req.userId }]
                }
            });
        }
        res.status(200).json({ msg: "Vending Point deleted successfully" });
    } catch (error) {
        res.status(500).json({ msg: error.message });
    }
};
