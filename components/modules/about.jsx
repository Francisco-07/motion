import AboutInfo from './about-info';
// librerias
import styled from 'styled-components';

function About() {
    return(
        <>
        <AboutTitle>CONSULTORES DE EMPRESAS</AboutTitle>
        <AboutSub>ASESORES PARA EMPRESAS, NEGOCIOS Y ORGANIZACIONES.</AboutSub>
        <AboutInfo/>
        </>
    )
}

export default About;

const AboutTitle= styled.h2`
    text-align: center;
    color: #000a1ea1;
    font-size: 45px;
`
const AboutSub= styled.p`
    text-align: center;
    color: #000a1ea1;
    font-size: 18px;
`
