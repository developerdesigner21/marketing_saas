import React, { useEffect, useState } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom';
import UserManage from './UserManage/UserManage';
import RoleManage from './RoleManage/RoleManage';

export default function MoreFeature() {
  const [searchParams] = useSearchParams();
  const navigate =  useNavigate()
  const [selectedTab, setSelectedTab] = useState("") 

  useEffect(()=>{
    const tab = searchParams.get('tab')
    if(tab && ["user","role"].includes(tab)){
      setSelectedTab(tab)
    }else{
      navigate("/user/MoreFeature?tab=role")
    }
  },[searchParams])

  switch (selectedTab) {
    case 'user':
      return <UserManage />;
    case 'role':
      return <RoleManage />;
    default:
      return <div></div>;
  }
}
