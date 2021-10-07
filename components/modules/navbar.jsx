// libraries
import React, { useState } from "react";
import styled from "styled-components";
import { GiHamburgerMenu } from 'react-icons/gi'; 
import { ImCross } from 'react-icons/im'; 
import { GrMail } from 'react-icons/gr'; 
import { IconContext } from "react-icons";
// next 
import Link from 'next/link'
// component
import Contacto from "./contacto";



const Navbar = () => {
  const [isOpen, setIsOpen] = useState(false);
  const [show, setShow] = useState(false);
 
  return (
    <>
    <Nav>
      <Logo>
      <Link href="/"><h1>BM</h1></Link>
      </Logo>
      <Hamburger onClick={() => setIsOpen(!isOpen)}>
      {isOpen ? (
          <IconContext.Provider value={{  size: '25px' }}>
        <ImCross/>
        </IconContext.Provider>
        ) :
        (
          <IconContext.Provider value={{  size: '35px' }}>
          <GiHamburgerMenu/>
          </IconContext.Provider>
          ) }
      </Hamburger>
      <Menu isOpen={isOpen}>
        <Link href="/">SERVICIOS</Link>
        <Link href="/">SOBRE NOSOTROS</Link>
        <Mail onClick={() => {setShow(!show); setIsOpen(false)}}/>
      </Menu>
      <Contacto show={show} setShow={setShow}/>
    </Nav>
    </>
  );
};


export default Navbar;


const Mail = styled(GrMail)`
  color: white;
  font-size: 25px;
  margin-right:25px;
  @media (max-width: 788px) {
    margin-right:0px;
  }
`

const Nav = styled.div`
  display: flex;
  position: absolute;
  justify-content: space-between;
  z-index:999;
  align-items: center;
  flex-wrap: wrap;
  top: 0;
  left: 0;
  right: 0;
  @media (max-width: 788px) {
    border-radius: 0;
    position: fixed;
    background: transparent;
  }
`;

const Logo = styled.div`
  margin-left:35px;
  z-index: 1999;
  & a{
  padding: 0;
  color: white;
  text-decoration: none;
  }
  & h1{
    border: 2px solid transparent;
    color: #FF5100;
    cursor: pointer;
    padding: 0 7px;
    & :hover {
      border: 2px solid #FF5100;
      color: #FF5100;
    }
  }
  @media (max-width: 750px) {
    font-size: 18px;
}
`;

const Menu = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
  
  & a {
    margin-right: 35px;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    color: white;
    border-right: 2px solid transparent;
    padding-right: 20px;
    opacity: 0.8;
  
    &:hover {
      color: white;
      border-right: 2px solid white;
      opacity: 1;
    }
  }

  @media (max-width: 808px) {
    position: fixed;
    top: 50%;
    transform: translate(-50%, -50%);
    flex-direction: column;
    align-items: center;
    justify-content: center;
    z-index: 999;
    background:#1B4C80;
    left: ${({ isOpen }) => (isOpen ? "50%" : "-100%")};
    transition:  0.5s ease-in-out;
    width: 100vw;
    height: 120vh;
    & a {
      align-text: center;
      margin-bottom: 25px;
      margin-right: 0;
      cursor: pointer;
      text-align: center;
      text-decoration: none;
      color: white;
      border: 2px solid transparent;
      padding: 10px;
      opacity: 0.8;

      &:hover {
        color: white;
        border: 2px solid white;
        opacity: 1;
      }

      }
    }
  }
`;

const Hamburger = styled.div`
  display: none;
  padding: 0 2rem;
  flex-direction: column;
  justify-content: center;
  cursor: pointer;
  z-index: 1999;
  & svg {
    color: #fff;
  }
 
  @media (max-width: 808px) {
    display: flex;
  }
`;


