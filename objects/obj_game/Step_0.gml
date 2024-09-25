/// @description Insert description here

zombies = instance_number(obj_enemy);

if(max_zombies == -1)
{
	alarm[0] = 0;
	
	if(zombies == 0 && alarm[0] == 0){alarm[2]=1}

}


_sal += 1;
if(_sal == 99)
{
_sal  = 0
_sec += 1
	if(_sec == 59 && _sal == 99 )
	{
		_min += 1
		_sec = 0
	}
}