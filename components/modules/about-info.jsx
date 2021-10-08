// librerias
import styled from 'styled-components';
import { RiFocus3Line } from 'react-icons/ri'; 
import { GiChessKnight } from 'react-icons/gi'; 
import { HiOutlineLightBulb } from 'react-icons/hi'; 
import { FaUniversity } from 'react-icons/fa'; 
import { Fade } from "react-awesome-reveal";

function AboutInfo() {
    return(
        <>
        <InfoContainer>
            <Fade triggerOnce delay={650}>
            <IconTextContainer>
            < RiFocus3Line/>
            <InfoTitle>100% ENFOCADOS</InfoTitle>
            <InfoText>Nos ocupamos de fijar y cumplir todos tus objetivos de negocio de manera fácil, rápida y efectiva.</InfoText>
            </IconTextContainer>

            <IconTextContainer>
            < GiChessKnight/>
            <InfoTitle>ESTRATEGAS</InfoTitle>
            <InfoText>Creamos estrategias que garantizan que tu empresa cumpla sus objetivos a corto, mediano y largo plazo.</InfoText>
            </IconTextContainer>

            <IconTextContainer>
            < HiOutlineLightBulb  />
            <InfoTitle>INNOVADORES</InfoTitle>
            <InfoText>Creamos soluciones innovadoras para cualquier tipo de empresa u organización.</InfoText>
            </IconTextContainer>

            <IconTextContainer>
            < FaUniversity/>
            <InfoTitle>CAPACITADOS</InfoTitle>
            <InfoText>Contamos con profesionales altamente calificados y con trayectoria para abordar cualquier proyecto.</InfoText>
            </IconTextContainer>
            </Fade>
        </InfoContainer>
        </>
    )
}

export default AboutInfo;

const InfoContainer = styled.div`
    margin-top: 80px;    
    display:flex;
    justify-content: center;
    align-items: center;
    gap: 45px;
    & svg {
        font-size: 70px;
    }
    @media (max-width: 900px) {
        flex-direction: column;
    }
`

const IconTextContainer = styled.div`
    display:flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
`

const InfoTitle = styled.p`
    text-align: center;
    color: #000a1ea1;
    font-size: 25px;
`

const InfoText = styled.p`
    text-align: center;
    color: #000a1ea1;
    font-size: 16px;
`