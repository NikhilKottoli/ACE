// Fab.js

import React from 'react';
import Fab from '@mui/material/Fab';
import NavigationIcon from '@mui/icons-material/Navigation';
import { Link } from 'react-router-dom';

function MyFab({ link }) {
  return (
    <Fab variant="extended" component={Link} to={link}>
      <NavigationIcon sx={{ mr: 1 }} />
      Navigate
    </Fab>
  );
}

export default MyFab;