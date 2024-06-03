/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//já mudei a room
if (mudei)
{
	alpha -= 0.01;
}
else //ainda não mudeid de room
{
	alpha += .01;
}

//Quando o alpha passar de 1, mudo de room
if(alpha >= 1)
{
	room_goto(destino);	
	
	
	//controlando a posicao do player 
	obj_lila2.x = destino_x;
	obj_lila2.y = destino_y;
}
