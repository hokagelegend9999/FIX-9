import Region from "../models/RegionModel.js";
import User from "../models/UserModel.js";
import {Op} from "sequelize";

export const getRegion = async (req, res) =>{
    try {
        let response;
        if(req.role === "admin"){
            response = await Region.findAll({
                attributes:['uuid','country','province','city'],
                include:[{
                    model: User,
                    attributes:['name','email']
                }]
            });
        }else{
            response = await Region.findAll({
                attributes:['uuid','country','province','city'],
                where:{
                    userId: req.userId
                },
                include:[{
                    model: User,
                    attributes:['name','email']
                }]
            });
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

export const getRegionById = async(req, res) =>{
    try {
        const region = await Region.findOne({
            where:{
                uuid: req.params.id
            }
        });
        if(!region) return res.status(404).json({msg: "Data tidak ditemukan"});
        let response;
        if(req.role === "admin"){
            response = await Region.findOne({
                attributes:['uuid','country','province','city'],
                where:{
                    id: region.id
                },
                include:[{
                    model: User,
                    attributes:['name','email']
                }]
            });
        }else{
            response = await Region.findOne({
                attributes:['uuid','country','province','city'],
                where:{
                    [Op.and]:[{id: region.id}, {userId: req.userId}]
                },
                include:[{
                    model: User,
                    attributes:['name','email']
                }]
            });
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

export const createRegion = async(req, res) =>{
    const {country, province, city } = req.body;
    try {
        await Region.create({
            country: country,
            province: province,
            city: city,
            userId: req.userId
        });
        res.status(201).json({msg: "Region Created Successfuly"});
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

export const updateRegion = async(req, res) =>{
    try {
        const region = await Region.findOne({
            where:{
                uuid: req.params.id
            }
        });
        if(!region) return res.status(404).json({msg: "Data tidak ditemukan"});
        const {country, province, city} = req.body;
        if(req.role === "admin"){
            await Region.update({country, province, city},{
                where:{
                    id: region.id
                }
            });
        }else{
            if(req.userId !== region.userId) return res.status(403).json({msg: "Akses terlarang"});
            await Region.update({country, province, city},{
                where:{
                    [Op.and]:[{id: region.id}, {userId: req.userId}]
                }
            });
        }
        res.status(200).json({msg: "Region updated successfuly"});
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

export const deleteRegion = async(req, res) =>{
    try {
        const region = await Region.findOne({
            where:{
                uuid: req.params.id
            }
        });
        if(!region) return res.status(404).json({msg: "Data tidak ditemukan"});
        const {country, province, city} = req.body;
        if(req.role === "admin"){
            await Region.destroy({
                where:{
                    id: region.id
                }
            });
        }else{
            if(req.userId !== region.userId) return res.status(403).json({msg: "Akses terlarang"});
            await Region.destroy({
                where:{
                    [Op.and]:[{id: region.id}, {userId: req.userId}]
                }
            });
        }
        res.status(200).json({msg: "Region deleted successfuly"});
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}