require 'ruby2d'
version=(1.3)
set title: "CraftHills" 
set width: 1000
set height: 500
Image.new('fon.png')#bagraund photo
pos = Sprite.new(#add new sprite|Player
	'player.png',#file way
	x: 101,#coordinates of x
	y: 10,#coordinates of y
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
tree = Sprite.new(#add new sprite|tree
  'tree.png',#file way
  x:100,#coordinates of x
  y:100,#coordinates of y
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
on :mouse_down do |event|
  # Log the button tap
  case event.button
  when :left
    puts "left button is tap!"
  when :middle
    puts "middle button is tap!"
  when :right
    puts "right button is tap!"
  end
end
show
x=0
while x != 1
	ppos.x += 1
	ppos.x += 1
end
