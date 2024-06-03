/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//checando se o porco está no chão 
var _chao = place_meeting(x, y + 1, obj_colisor_morcego);



if(_chao)
{
	tempo_decidir_andar -= 1;
	
	//se o tempo acabou decido andar 
	if(tempo_decidir_andar <= 0)
	{
	   andando = choose(true, false);
	   

	   
	   
	   //escolhendo a direcao se ele decidiu andar 
	   if(andando)
	   {
	   velh = choose(vel, -vel);
	   }
	   else
	   {
		  velh = 0;  
	   }
	   
	   
	   //resetando o tempo 
	tempo_decidir_andar = room_speed;
	}
	
	



//animação do inimigo
if(velh != 0 && dano == false)
{
	sprite_index = spr_morcego;
	image_xscale = sign(velh);
}
else
{
	 sprite_index = spr_morcego;
}

//Se eu bater na parede eu mudo de direção
if(place_meeting(x + velh, y, obj_chao))
{
	velh *= -1;
}



}
else
{
velv += grav;
velh = 0;

if(velh != 0)
{
  image_xscale = sign (velh);	
}
}

//Checando se eu estou tomando dano 
if(dano)
{
	sprite_index = spr_morcego_dano;
	velh = 0;
}



