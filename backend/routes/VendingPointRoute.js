import express from "express";
import {
    getVendingPoints,
    getVendingPointById,
    createVendingPoint,
    updateVendingPoint,
    deleteVendingPoint,
    updateVendingPointStatus // Tambahkan ini
} from "../controllers/VendingPoints.js";
import { verifyUser } from "../middleware/AuthUser.js";

const router = express.Router();

router.get('/vendingpoints', verifyUser, getVendingPoints);
router.get('/vendingpoints/:id', verifyUser, getVendingPointById);
router.post('/vendingpoints', verifyUser, createVendingPoint);
router.patch('/vendingpoints/:id', verifyUser, updateVendingPoint);
router.patch('/vendingpoints/:id/status', verifyUser, updateVendingPointStatus); // Tambahkan ini
router.delete('/vendingpoints/:id', verifyUser, deleteVendingPoint);

export default router;
