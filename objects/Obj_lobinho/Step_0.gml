/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//checando se o porco está no chão 
var _chao = place_meeting(x, y + 1, obj_chao);



if(_chao)
{
	
	
	//se o tempo acabou decido andar 
	if(tempo_decidir_andar)
	{
	   andando = choose(true, false);
	   
	   show_debug_message(andando);
	   
	   
	   //escolhendo a direcao
	   vel = choose(-1, 1);
	   
	   
	   //resetando o tempo 
	   tempo_decidir_andar = game_set_speed (60, gamespeed_fps);
	}
	
	
	
//checando se estou andando 
if(andando)
{
//estando no chao, andar para um lado e outro
velh = vel;
}
else
{
	velh = 0;
}


//animação do inimigo
if(velh != 0)
{
	sprite_index = spr_lobo_idle;
	image_xscale = sign(velh);
}
else
{
	 sprite_index = spr_lobo_idle;
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



/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
