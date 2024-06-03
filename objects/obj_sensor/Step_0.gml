/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//checar se estou colidindo com o player

var _player = place_meeting(x,y, obj_lila2);

//Espaço
var _espaco = keyboard_check_released(vk_space);

//O player esta colidindo comigo 
if(_player && _espaco)
{
	//Código da transicao 
	//vai escurecer a tela ao chegar no sensor e liga na tela seguinte 
	
	var _tran = instance_create_layer(0,0, layer, obj_transicao);
	
	//tem que ser criado no objeto de transicao 
	_tran.destino = destino;
	_tran.destino_x = destino_x;
	_tran.destino_y = destino_y;
	
	
	
}