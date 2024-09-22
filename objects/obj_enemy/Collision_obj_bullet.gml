if (hp>0)
{
	
	hp = hp -5;
	
	instance_destroy(other);
	//image_alpha = 1;
}
else
instance_destroy(self);

