// fazer ele cair
//y += grav;

var _chao = place_meeting(x, y +1, obj_chao);

//Controlando o player 
var _left, _right, _jump;

_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);


//só posso me controlar caso não tenha tomado dano
if( timer_dano <= 0)
{
	velh = (_right - _left) * vel; 
}




//pulando 
if(_chao)
{
	if(_jump)
	{
	velv = -vel_jump; 
	}
	
	//se eu estou no chão e me movendo 
	if(velh !=0)
	{
		
	//mudo a sprite 
	 sprite_index = spr_lilaosso2;
	 
	 
	 //olhar para onde esta indo 
	 
	 image_xscale = sign(velh);
	
	}
	else 
	{
		sprite_index = spr_lila2;	
	}
	
}
else
{
	
	if (velv < 0)
	{
		sprite_index = spr_lila2;
	}
	else
	{
		sprite_index = spr_lilaosso2;
		
		//Se eu estou indo para baixo, ai eu posso cair na cabeça do inimigo 
		
		var _inimigo = instance_place(x, y + 5, obj_inimigo_pai);
		
		
		//Se eu cair no inimigo 
		if(_inimigo)
	    {
			dano = false;
			
		   	//subo no ar novamente
			velv = -vel_jump;
			
			//Avisando para o inimigo que eu acertei que ele tomou dano 
			_inimigo.dano = true;
			
			
			
			
		 }
	}
	

	
	//aplicando a gravidade 

	velv += grav; 
	


}

if(dano)
{
	sprite_index = spr_lila_dano;
}

//Se o timer do dano é maior do que zero, eu diminuo ele
if(timer_dano > 0 )
{
	timer_dano--;	
}else
{
	//Acabou meu timer do dano
	dano = false;
}



if(inv_timer > 0)
{
	inv_timer--;
	
	//piscar transparente
	image_alpha = .5;
}
else
{
	image_alpha = 1;
}


//tomando dano 
var _inimigo = instance_place (x, y, obj_inimigo_pai);

if(_inimigo && inv_timer <= 0)
{
	
	
	if(_inimigo.dano == false)
	{
		dano = true;
		
		//dando o valor do timer dano
		timer_dano = tempo_dano;
		inv_timer = inv_tempo;
	}
}
