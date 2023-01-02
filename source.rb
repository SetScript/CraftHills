require 'ruby2d'#require libary ruby2d
version=(1.3)#project version
set title: "CraftHills"#add title "crafthills"
set width: 1000#set width 1000
set height: 500#set height 500
Image.new('assets/fon.png')#bagraund photo
pos = Sprite.new(#add new sprite|Player
	'assets/player.png',#file way
	x: 101,#coordinates of x
	y: 10,#coordinates of y
	clip_width: 84,#size in sprite list
	animations: {walk:1..6}#action shot
)
ppos = Sprite.new(#add new sprite|pig|ppos==pig postion
  'assets/pig.png',#file way
  x: 100,#coordinates of x
  y: 380,#coordinates of y
  clip_width: 100,#size in sprite list
  animations: { walk:1..3}#action shot
)
tree = Sprite.new(#add new sprite|tree
  'assets/tree.png',#file way
  x:100,#coordinates of x
  y:100,#coordinates of y
  clip_width: 84,#size in sprite list
  time: 300,
  loop: true
)
sound = Sound.new('sounds/Sound_go_frass.mp3')#create sound going grass
music = Music.new('sounds/Song.mp3', loop: true)#create music
music.play#sing music
sound.play#sing sound
on :key do |event|
	#responsible for move
	case event.key
	when 'w'
		pos.y -= 5 and pos.play and sound.play
	when 's'
		pos.y += 5 and pos.play and sound.play
	when 'a'
		pos.x -= 5 and pos.play and sound.play
	when 'd'
		pos.x += 5 and pos.play and sound.play
	when 'c'
		system 'cls' and puts "Console clear!"
	end
end
show