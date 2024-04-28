import React, { useEffect, useState } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom';
import BroadcastManage from './BroadcastManage/BroadcastManage';
import TemplateManage from './TemplateManage/TemplateManage';

export default function Broadcast() {
  const [searchParams] = useSearchParams();
  const navigate =  useNavigate()
  const [selectedTab, setSelectedTab] = useState("") 

  useEffect(()=>{
    const tab = searchParams.get('tab')
    if(tab && ["broadcast","tamplate"].includes(tab)){
      setSelectedTab(tab)
    }else{
      navigate("/user/Broadcast?tab=broadcast")
    }
  },[searchParams])

  switch (selectedTab) {
    case 'broadcast':
      return <BroadcastManage />;
    case 'tamplate':
      return <TemplateManage />;
    default:
      return <div></div>;
  }
}
