/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


var _mouse_sobre = position_meeting(mouse_x, mouse_y, self);
var _mouse_click = mouse_check_button_pressed(mb_left);


//se o mouse está sobre mim 
if(_mouse_sobre)
{
	//Se o Mouse clicou 
	if(_mouse_click)
	{
		if(meu_texto == noone)
		{
		meu_texto = instance_create_layer(x, y, layer, obj_texto);
	    meu_texto.texto = texto;
		}
		else
		{
			instance_destroy(meu_texto);
			meu_texto = noone;
		}
	}
	
	
}
