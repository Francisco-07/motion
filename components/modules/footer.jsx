// librerias
import styled from 'styled-components';
import { FaInstagramSquare } from 'react-icons/fa'; 
import { FaTwitterSquare } from 'react-icons/fa'; 
import { FaFacebookSquare } from 'react-icons/fa'; 
import { MdKeyboardArrowRight } from 'react-icons/md'; 
import { GrMail } from 'react-icons/gr'; 
import React, { useState } from "react";
import Contacto from './contacto';


function Footer() {
    const [show, setShow] = useState(false);
    return(
        <>
        <FooterContainer>
            <FooterBrand>
                <FooterTitle>BIN</FooterTitle>
                <FooterTitle>MOTION</FooterTitle>
            </FooterBrand>
            <FooterContact>
                <FooterTitle>REDES SOCIALES</FooterTitle>
                <RedesIcons>
                <FaInstagramSquare/>
                <FaFacebookSquare/>
                <FaTwitterSquare/>
                </RedesIcons>
                <MailContact>
                <FooterTitle>CONTACTO</FooterTitle>
                <Mail onClick={() => setShow(!show)}/>
                </MailContact>
            </FooterContact>
            <FooterServicios>
                <FooterTitle>SERVICIOS</FooterTitle>
                <FooterText>Consultoria y gestion</FooterText>
                <FooterText>Marketing y publicidad</FooterText>
                <FooterText>Diseño web</FooterText>
            </FooterServicios>
        </FooterContainer>
        <Author id="Contacto">Desarrollo<a target="_blank" rel="noreferrer" href="https://github.com/Francisco-07"> <MdKeyboardArrowRight/> Francisco Garciarena</a></Author>
        <Contacto show={show} setShow={setShow}/>
        </>
    )
}



export default Footer;

const Mail = styled(GrMail)`
  color: white;
  font-size: 35px;
  opacity: 0.5;
  & :hover {
    opacity: 1;
}
`

const FooterContainer = styled.div`
    margin-top: 40px;
    display: flex;
    justify-content: space-around;
    background-color: #1B4C80;
    @media (max-width: 750px) {
        flex-direction: column;
    }
`

const FooterBrand = styled.div`
    margin-top: 40px;
    & h2 {
        font-size: 45px;
        text-align: start;
        margin-bottom: 0;
        margin-top: 0;
    }
    @media (max-width: 750px) {
        & h2 {
            text-align: center;
        }
    }
`

const FooterContact = styled.div`
    @media (max-width: 750px) {
        margin-top: 40px;
    }
`

const FooterServicios = styled.div`
     @media (max-width: 750px) {
        margin-top: 40px;
    }
`
const FooterTitle = styled.h2`
    text-align: center;
    color: white;
`
const FooterText = styled.p`
    text-align: center;
    color: white;
`
const RedesIcons = styled.div`
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 15px;
    & svg {
        font-size: 40px;
        color: white;
        opacity: 0.5;
        & :hover {
            opacity: 1;
        }
    }
`
const MailContact = styled.div`
    display: flex;
    margin-top: 25px;
    justify-content: center;
    align-items: center;
    flex-direction: column;
`


const Author = styled.p`
    padding:20px;
    color: white;
    margin-bottom: 0;
    background-color: #1B4C80;
    display: flex;
    justify-content: center;
    margin-top: 0px;
    border-top: 2px solid white;
    & a {
        display: flex;
        color: white;
        &:hover {
            color: #FF5100;
    }
    & svg {
        cursor: pointer;
        margin-left: 2px;
        margin-right: 2px;
        font-size: 25px;
      }
    }
    @media (max-width: 918px) {
        text-align: center;
    }
    @media (max-width: 788px) {
        border-radius: 0;
      }
`