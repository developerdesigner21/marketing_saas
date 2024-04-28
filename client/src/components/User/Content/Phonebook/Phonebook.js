import React, { useEffect, useState } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom';
import TagManage from './TagManage/TagManage';
import ContactsManage from './ContactsManage/ContactsManage';

export default function Phonebook() {
  const [searchParams] = useSearchParams();
  const navigate =  useNavigate()
  const [selectedTab, setSelectedTab] = useState("") 

  useEffect(()=>{
    const tab = searchParams.get('tab')
    if(tab && ["tags","contacts"].includes(tab)){
      setSelectedTab(tab)
    }else{
      navigate("/user/Phonebook?tab=tags")
    }
  },[searchParams])

  switch (selectedTab) {
    case 'tags':
      return <TagManage />;
    case 'contacts':
      return <ContactsManage />;
    default:
      return <div></div>;
  }
}
