// librerias
import styled from 'styled-components';


function Hero() {
    return (
        <>
        <Container>
                <HeroTitle>BINMOTION</HeroTitle>
                <HeroSub>POTENCIAMOS TU NEGOCIO</HeroSub>
        </Container> 
        </>
        )
}


export default Hero;


const Container = styled.div`
    height: 92vh;
    display: flex;
    background-image: linear-gradient(
        rgba(57, 121, 191, 0.45), 
        rgba(57, 121, 191, 0.45)
      ), url('/img/hero.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    position: relative;
    align-items:start;
    justify-content: start;
    flex-direction: column;
    clip-path: ellipse(100% 55% at 48% 44%);
    @media (max-width: 788px) {
        gap: 22px;
        height: 92vh;
        align-items:center;
        justify-content: center;
      }
`

const HeroTitle = styled.h1`
    text-align:center;
    color: #fff;
    font-size: 100px;
    margin-top: 130px;
    margin-bottom: 20px;
    margin-left: 45px;
    @media (max-width: 900px) {
        font-size: 60px;
    }
    @media (max-width: 750px) {
        font-size: 42px;
        margin-top: 30px;
        margin-left: 0px;
    }
`
const HeroSub = styled.h2`
    text-align:center;
    color: #fff;
    font-size: 35px;
    color: #FF5100;
    margin-bottom: 0px;
    margin-top: 0px;
    margin-left: 45px;
    @media (max-width: 750px) {
        font-size: 25px;
        margin-left: 0px;
    }
`
