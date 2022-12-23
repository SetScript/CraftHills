require 'ruby2d'
version=(1.2)
set title: "CraftHills" 
set width: 1000
set height: 500
Image.new('fon.png')#bagraund photo
pos = Sprite.new(#add new sprite|Player
	'player.png',#file way
	x: 101,#coordinates of x
	y: 380,#coordinates of y
	clip_width: 84,#size in sprite list
	animations: {walk:1..6}#action shot
)
ppos = Sprite.new(#add new sprite|pig|ppos==pig postion
  'pig.png',#file way
  x: 100,#coordinates of x
  y: 380,#coordinates of y
  clip_width: 100,#size in sprite list
  animations: { walk:1..3}#action shot
)
rand(0..500)
rtgY=rand
rand(0..1000)
rtgX=rand
tree = Sprite.new(#add new sprite|tree
  'tree.png',#file way
  x:rtgX,#coordinates of x
  y:rtgY,#coordinates of y
  clip_width: 84,#size in sprite list
  time: 300,
  loop: true
)
sound = Sound.new('Sound_go_frass.mp3')
music = Music.new('Song.mp3', loop: true)
music.play
tree.play
on :key do |event|
	#responsible for move
	case event.key
	when 'w'
		pos.y -= 5
	when 's'
		pos.y += 5
	when 'a'
		pos.x -= 5
	when 'd'
		pos.x += 5
	end
	#responsible for animations
	case event.key
	when 'w'
		pos.play
	when 's'
		pos.play
	when 'a'
		pos.play
	when 'd'
		pos.play
	end
	#responsible for sounds
	case event.key
	when 'w'
		sound.play
	when 's'
		sound.play
	when 'a'
		sound.play
	when 'd'
		sound.play
	end
end
show