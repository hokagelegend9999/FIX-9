import express from "express";
import {
    getRegion,
    getRegionById,
    createRegion,
    updateRegion,
    deleteRegion
} from "../controllers/Region.js";
import { verifyUser } from "../middleware/AuthUser.js";

const router = express.Router();

router.get('/region',verifyUser, getRegion);
router.get('/region/:id',verifyUser, getRegionById);
router.post('/region',verifyUser, createRegion);
router.patch('/region/:id',verifyUser, updateRegion);
router.delete('/region/:id',verifyUser, deleteRegion);

export default router;