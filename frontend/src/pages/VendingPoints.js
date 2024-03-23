import React, { useEffect } from "react";
import LayoutPage from "./LayoutPage";
import VendingPointList from "../components/VendingPointList";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import { getMe } from "../features/authSlice";

const VendingPoints = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { isError } = useSelector((state) => state.auth);

  useEffect(() => {
    dispatch(getMe());
  }, [dispatch]);

  useEffect(() => {
    if (isError) {
      navigate("/");
    }
  }, [isError, navigate]);
  return (
    <LayoutPage>
      <VendingPointList />
    </LayoutPage>
  );
};

export default VendingPoints;
