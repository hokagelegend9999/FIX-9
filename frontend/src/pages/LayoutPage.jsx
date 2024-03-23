import React, { useState, useEffect } from 'react';

import { useDispatch, useSelector } from "react-redux";
import { useNavigate, NavLink } from "react-router-dom"; // Import NavLink
import { getMe } from "../features/authSlice";
import { LogOut, reset } from "../features/authSlice";
import {
    AccountBookOutlined,
    BarChartOutlined,
    ClusterOutlined,
    MenuFoldOutlined,
    MenuUnfoldOutlined,
    MoneyCollectOutlined,
    BankOutlined,
    UserOutlined,
    DeploymentUnitOutlined,
    DashboardOutlined,
    AppstoreOutlined,
    HomeOutlined,
    EnvironmentOutlined,
    SolutionOutlined,
    TeamOutlined,
    TagsOutlined,
    ToolOutlined,
    PercentageOutlined,
    PieChartOutlined,
    SafetyOutlined,
    SettingOutlined,
    ProfileOutlined,
    
  LogoutOutlined,
  } from '@ant-design/icons';
import { Layout, Menu, Button, theme, Image, Dropdown, Avatar } from 'antd';
const { Header, Sider} = Layout;


const LayoutPage = ({ children }) => {
  const [collapsed, setCollapsed] = useState(false);
  const {
    token: { colorBgContainer },
  } = theme.useToken();
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

  const handleLogout = () => {
    dispatch(LogOut()); // Memanggil action creator logout
    navigate("/"); // Redirect ke halaman login setelah logout
  };

  // Fungsi menu pengaturan
  const handleSettings = () => {
    // Lakukan logika menu pengaturan di sini
    console.log('Settings clicked');
  };

  const menu = (
    <Menu>
      <Menu.Item key="logout" icon={<LogoutOutlined />} onClick={handleLogout}>
        Logout
      </Menu.Item>
      <Menu.Item key="settings" icon={<SettingOutlined />} onClick={handleSettings}>
        Settings
      </Menu.Item>
    </Menu>
  );

  return (
    <Layout>
      <Sider 
      style={{ 
        background: 'white', // Set background to white
      }}
      trigger={null}
       collapsible collapsed={collapsed}>
        <div>
          <Image
            src="./linuxw.jpg"
            alt=""
            style={{
              boxShadow: '0 4px 6px rgba(0, 0, 0, 0.1)',
              borderRadius: '8px',
            }}
          />
        </div>
        <div className="demo-logo-vertical" />
        <Menu
                    theme="light"
                    mode="inline"
                    defaultSelectedKeys={['1']}
                >
                    <Menu.Item key="1" icon={<BankOutlined />}>
                        <NavLink to="/">Dashboard</NavLink>
                    </Menu.Item>
                    <Menu.SubMenu key="sub1" icon={<HomeOutlined />} title="System">
                        <Menu.Item key="3" icon={<DeploymentUnitOutlined />}>
                            <NavLink to="/Region">Region</NavLink>
                        </Menu.Item>
                        {/* Tambahkan link menuju halaman Region.js */}
                        <Menu.Item key="4" icon={<AppstoreOutlined />}>
                            <NavLink to="/products">Product</NavLink>
                        </Menu.Item>
                        <Menu.Item key="5" icon={<EnvironmentOutlined />}>
                            <NavLink to="/vendingpoints">Vending Point</NavLink>
                        </Menu.Item>
                        <Menu.Item key="6" icon={<SolutionOutlined />}>
                            <NavLink to="/user-group">User Group</NavLink>
                        </Menu.Item>
                        <Menu.Item key="7" icon={<TeamOutlined />}>
                            <NavLink to="/users">User</NavLink>
                        </Menu.Item>
                        <Menu.Item key="8" icon={<PercentageOutlined />}>
                            <NavLink to="/tarif">Tarif</NavLink>
                        </Menu.Item>
                        <Menu.Item key="9" icon={<SafetyOutlined />}>
                            <NavLink to="/securitymodule">Security Module</NavLink>
                        </Menu.Item>
                        <Menu.Item key="10" icon={<SettingOutlined />}>
                            <NavLink to="/setup">Setup</NavLink>
                        </Menu.Item>
                    </Menu.SubMenu>
                    <Menu.SubMenu key="sub2" icon={<ProfileOutlined />} title="Registration">
                        <Menu.Item key="11" icon={<UserOutlined />}>
                            <NavLink to="/consumer">Consumer</NavLink>
                        </Menu.Item>
                        <Menu.Item key="12" icon={<DashboardOutlined />}>
                            <NavLink to="/meters">Meters</NavLink>
                        </Menu.Item>
                    </Menu.SubMenu>
                    <Menu.Item key="13" icon={<TagsOutlined />}>
                        <NavLink to="/vendingpoints">Vending Point</NavLink>
                    </Menu.Item>
                    <Menu.SubMenu key="sub3" icon={<ToolOutlined />} title="Engineering">
                        <Menu.Item key="14" icon={<ClusterOutlined />}>
                            <NavLink to="/meter-specific">Meter-specific</NavLink>
                        </Menu.Item>
                        <Menu.Item key="15" icon={<BankOutlined />}>
                            <NavLink to="/non-meter-specific">Non-meter-specific</NavLink>
                        </Menu.Item>
                    </Menu.SubMenu>
                    <Menu.SubMenu key="sub4" icon={<PieChartOutlined />} title="Report">
                        <Menu.Item key="16" icon={<BarChartOutlined />}>
                            <NavLink to="/sales">Sales</NavLink>
                        </Menu.Item>
                        <Menu.Item key="17" icon={<MoneyCollectOutlined />}>
                            <NavLink to="/token-record">Token Record</NavLink>
                        </Menu.Item>
                        <Menu.Item key="18" icon={<AccountBookOutlined />}>
                            <NavLink to="/consumer">Consumer</NavLink>
                        </Menu.Item>
                        {/* Add more Menu.Item here if needed */}
                    </Menu.SubMenu>
                    {/* Add more SubMenu and Menu.Item as needed */}
                </Menu>
      </Sider>
      <Layout>
      <Header
          style={{
            display: 'flex',
            justifyContent: 'space-between',
            alignItems: 'center',
            padding: '5px',
            margin:'5px',
            background: colorBgContainer,
          }}
        >
          <Button
            type="text"
            icon={collapsed ? <MenuUnfoldOutlined /> : <MenuFoldOutlined />}
            onClick={() => setCollapsed(!collapsed)}
            style={{
              fontSize: '16px',
              width: 64,
              height: 64,
            }}
          />
          <div style={{ display: 'flex', alignItems: 'center' }}>
            <Dropdown overlay={menu} placement="topRight">
              <Avatar size={40} src="./linuxw.jpg" />
            </Dropdown>
            <span style={{ marginRight: '8px' }}>Username</span>
          </div>
        </Header>
        <main>{children}</main>
       
      </Layout>
    </Layout>
  );
};

export default LayoutPage;
