﻿package {	import flash.display.MovieClip;	import flash.events.KeyboardEvent;	import flash.events.Event;	import flash.text.TextField;	import flash.text.TextFormat;	public class Copter extends MovieClip	{		private var haut:Boolean = false;		private var bas:Boolean = true;		private var velocite:Number = 0;		public function Copter()		{		}				public function update():void		{			//augmente et diminue la vélocité			if (haut == true)			{				velocite -=  0.4;			}			else			{				velocite +=  0.4;			}						//applique la vélocité			y +=  velocite;						//replace au centre si le haut ou le bas du terrain sont atteint sans avoir touché de mur			if (y <= 0 || y >= 400)			{				y = 200;				velocite = 0;			}		}				//fonction qui attribue les touches du clavier à des variables booléenne		public function etablirDirections(e : KeyboardEvent):void		{			if ((e.keyCode == 38 || e.keyCode == 32) && e.type == KeyboardEvent.KEY_DOWN)			{				haut = true;				bas = false;			}			else			{				haut = false;				bas = true;			}		}	}}