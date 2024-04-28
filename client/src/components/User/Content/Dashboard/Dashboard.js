import React, { useEffect, useState } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom';
import WhatsappDashBoard from './WhatsappDashboard/WhatsappDashboard';
import EmailDashboard from './EmailDashboard/EmailDashboard';

export default function Dashboard() {
  const [searchParams] = useSearchParams();
  const navigate =  useNavigate()
  const [selectedTab, setSelectedTab] = useState("") 

  useEffect(()=>{
    const tab = searchParams.get('tab')
    if(tab && ["whatsapp","email"].includes(tab)){
      setSelectedTab(tab)
    }else{
      navigate("/user?tab=whatsapp")
    }
  },[searchParams])

  switch (selectedTab) {
    case 'whatsapp':
      return <WhatsappDashBoard />;
    case 'email':
      return <EmailDashboard />;
    default:
      return <div></div>;
  }
}
