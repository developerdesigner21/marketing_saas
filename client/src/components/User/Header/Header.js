import React, { useEffect, useState } from "react";
import PropTypes from "prop-types";
import AppBar from "@mui/material/AppBar";
import Avatar from "@mui/material/Avatar";
import Button from "@mui/material/Button";
import Grid from "@mui/material/Grid";
import HelpIcon from "@mui/icons-material/Help";
import IconButton from "@mui/material/IconButton";
import Link from "@mui/material/Link";
import MenuIcon from "@mui/icons-material/Menu";
import NotificationsIcon from "@mui/icons-material/Notifications";
import Tab from "@mui/material/Tab";
import Tabs from "@mui/material/Tabs";
import Toolbar from "@mui/material/Toolbar";
import Tooltip from "@mui/material/Tooltip";
import Typography from "@mui/material/Typography";
import { useLocation, useNavigate, useSearchParams } from "react-router-dom";
import { Menu, MenuItem } from "@mui/material";

const lightColor = "rgba(255, 255, 255, 0.7)";

const tabData = [
  {
    name: "Dashboard",
    link: "/user",
    tabs: [
      {
        name: "Whatsapp Marketing",
        value: "whatsapp",
        link: "/user?tab=whatsapp",
      },
      {
        name: "Email Marketing",
        value: "email",
        link: "/user?tab=email",
      },
    ],
  },
  {
    name: "Phonebook",
    link: "/user/Phonebook",
    tabs: [
      {
        name: "Tags",
        value: "tags",
        link: "/user/Phonebook?tab=tags",
      },
      {
        name: "Contacts",
        value: "contacts",
        link: "/user/Phonebook?tab=contacts",
      },
    ],
  },
  {
    name: "Broadcast",
    link: "/user/Broadcast",
    tabs: [
      {
        name: "Template",
        value: "tamplate",
        link: "/user/Broadcast?tab=tamplate",
      },
      {
        name: "Broadcast",
        value: "broadcast",
        link: "/user/Broadcast?tab=broadcast",
      },
    ],
  },
  {
    name: "Inbox",
    link: "/user/Inbox",
    tabs: [],
  },
  {
    name: "More feature",
    link: "/user/MoreFeature",
    tabs: [
      {
        name: "Role",
        value: "role",
        link: "/user/MoreFeature?tab=role",
      },
      {
        name: "User Managment",
        value: "user",
        link: "/user/MoreFeature?tab=user",
      },
    ],
  },
];

function Header(props) {
  const { onDrawerToggle } = props;
  const location = useLocation();
  const [searchParams] = useSearchParams();
  const navigate = useNavigate();

  const [currentSectionData, setCurrentSectionData] = useState({});
  const [selectedTab, setSelectedTab] = useState("");
  const [myAccountElm,setMyAccountElm]=useState(null);
  const [openMyAccount, setMyAccount]=useState(false);

  const handleCloseMyAccount = () => {
     setMyAccountElm(null);
     setMyAccount(false);
  }
  const handleLogOut = () => {
    localStorage.clear();
    navigate('/login');
    
  }
  const handleOpenMyAccount = (e) => {
    setMyAccountElm(e.currentTarget);
    setMyAccount(true)
  }

  useEffect(() => {
    const tab = searchParams.get("tab");
    if (tab) {
      setSelectedTab(tab);
    }
  }, [searchParams]);

  useEffect(() => {
    console.log("path::::", location.pathname);
    setCurrentSectionData(
      tabData.find((e) => e.link === location.pathname) || {}
    );
  }, [location.pathname]);

  const handleChange = (event, newValue) => {
    const link = currentSectionData?.tabs?.find(
      (e) => e.value === newValue
    ).link;
    console.log("newvalue:::", link, newValue);
    navigate(link);
  };

  console.log("currentSectionData::::",currentSectionData)
  return (
    <>
      <React.Fragment>
        <AppBar color="primary" position="sticky" elevation={0}>
          <Toolbar>
            <Grid container spacing={1} alignItems="center">
              <Grid sx={{ display: { sm: "none", xs: "block" } }} item>
                <IconButton
                  color="inherit"
                  aria-label="open drawer"
                  onClick={onDrawerToggle}
                  edge="start"
                >
                  <MenuIcon />
                </IconButton>
              </Grid>
              <Grid item xs />
              <Grid item>
                <Link
                  href="/"
                  variant="body2"
                  sx={{
                    textDecoration: "none",
                    color: lightColor,
                    "&:hover": {
                      color: "common.white",
                    },
                  }}
                  rel="noopener noreferrer"
                  target="_blank"
                >
                  Go to docs
                </Link>
              </Grid>
              <Grid item>
                <Tooltip title="Alerts • No alerts">
                  <IconButton color="inherit">
                    <NotificationsIcon />
                  </IconButton>
                </Tooltip>
              </Grid>
              <Grid item>
                <IconButton color="inherit" sx={{ p: 0.5 }} onClick={handleOpenMyAccount}>
                  <Avatar src="/static/images/avatar/1.jpg" alt="My Avatar" />
                </IconButton>

                <Menu anchorEl={myAccountElm} open={openMyAccount} onClose={handleCloseMyAccount}>
                  <MenuItem onClick={handleCloseMyAccount}>Profile</MenuItem>
                  <MenuItem onClick={handleLogOut}>LogOut</MenuItem>
                </Menu>

              </Grid>
            </Grid>
          </Toolbar>
          <Toolbar>
            <Grid container alignItems="center" spacing={1}>
              <Grid item xs className="flex justify-start">
                <Typography color="inherit" variant="h5" component="h1">
                  {currentSectionData.name}
                </Typography>
              </Grid>
              <Grid item>
                <Button
                  sx={{ borderColor: lightColor }}
                  variant="outlined"
                  color="inherit"
                  size="small"
                >
                  Web setup
                </Button>
              </Grid>
              <Grid item>
                <Tooltip title="Help">
                  <IconButton color="inherit">
                    <HelpIcon />
                  </IconButton>
                </Tooltip>
              </Grid>
            </Grid>
          </Toolbar>
          {currentSectionData?.tabs && currentSectionData?.tabs?.length > 0 && (
            <Tabs
              value={selectedTab}
              onChange={handleChange}
              textColor="inherit"
              variant="scrollable"
              scrollButtons="auto"
              aria-label="scrollable auto tabs example"
            >
              {currentSectionData?.tabs?.map((tab) => {
                return <Tab value={tab.value} label={tab.name} />;
              })}
            </Tabs>
          )}
        </AppBar>
      </React.Fragment>
    </>
  );
}

Header.propTypes = {
  onDrawerToggle: PropTypes.func.isRequired,
};

export default Header;
