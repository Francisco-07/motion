
// librerias
import styled from 'styled-components';
// elements
import Box from '../elements/box';
import { Slide } from "react-awesome-reveal";

function Servicios() {
    return(
        <>
        <SubTitle>LO QUE HACEMOS</SubTitle>
        <Title>SERVICIOS</Title>
        
        <Container>
        <Slide triggerOnce cascade>
        <Box image={'/img/1.jpg'} text={"CONSULTORIA Y GESTION"}/>
        <Box image={'/img/2.jpg'} text={"MARKETING Y PUBLICIDAD"}/>
        <Box image={'/img/3.jpg'} text={"DISEÑO WEB"}/>
        </Slide>
        </Container>
        
        </>
    )
}

const SubTitle = styled.h2`
    margin-top:100px;
    text-align: center;
    color: #000a1ea1;
    font-size: 18px;
    margin-bottom: -35px;
`

const Title = styled.h2`
    text-align: center;
    color: #000a1ea1;
    font-size: 45px;
`

const Container = styled.div`
    display: flex;
    justify-content: space-evenly;
    gap: 1px;
    @media (max-width: 900px) {
        flex-direction: column;
    }
`


export default Servicios;