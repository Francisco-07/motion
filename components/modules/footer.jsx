// librerias
import styled from 'styled-components';
import { FaInstagramSquare } from 'react-icons/fa'; 
import { FaTwitterSquare } from 'react-icons/fa'; 
import { FaFacebookSquare } from 'react-icons/fa'; 
import { MdKeyboardArrowRight } from 'react-icons/md'; 
import { GrMail } from 'react-icons/gr'; 
import React, { useState } from "react";
import Contacto from './contacto';
import { Fade } from "react-awesome-reveal";

function Footer() {
    const [show, setShow] = useState(false);
    return(
        <>
        <FooterContainer>
            <FooterBrand>
                <Fade triggerOnce cascade delay={250}>
                <FooterTitle>BIN</FooterTitle>
                <FooterTitle>MOTION</FooterTitle>
                </Fade>
            </FooterBrand>
            <Fade triggerOnce cascade delay={250}>
            <FooterSection>
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
            </FooterSection>
            <FooterSection>
                <FooterTitle>SERVICIOS</FooterTitle>
                <FooterText>Consultoria y gestion</FooterText>
                <FooterText>Marketing y publicidad</FooterText>
                <FooterText>Diseño web</FooterText>
            </FooterSection>
            </Fade>
        </FooterContainer>
        <Fade triggerOnce cascade delay={250}>
        <Author id="Contacto">Desarrollo<a target="_blank" rel="noreferrer" href="https://github.com/Francisco-07"> <MdKeyboardArrowRight/> Francisco Garciarena</a></Author>
        </Fade>
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
    display: flex;
    justify-content: space-around;
    border-top: 2px solid white;
    background-color: #1B4C80;
    @media (max-width: 750px) {
        flex-direction: column;
    }
`

const FooterBrand = styled.div`
    margin-top: 40px;
    & h2 {
        text-align: start;
        font-size: 45px;
        margin-bottom: 0;
        margin-top: 0;
    }
    @media (max-width: 750px) {
        & h2 {
            text-align: center;
        }
    }
`

const FooterSection = styled.div`
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
    justify-content: center;
    flex-direction: column;
    align-items: center;
    margin-top: 25px;
`


const Author = styled.p`
    display: flex;
    justify-content: center;
    align-items: center;
    color: white;
    background-color: #1B4C80;
    padding:20px;
    margin-bottom: 0;
    margin-top: 0px;
    border-top: 2px solid white;
    & a {
        display: flex;
        justify-content: center;
        color: white;
        opacity: 0.5;
    align-items: center;
        &:hover {
            opacity: 1;
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