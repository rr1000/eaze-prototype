#*************************
# Ryan Rich 2015
# Eaze Mobile Prototype
#*************************

#*************************
# White BG
#*************************
whiteBg = new Layer
		backgroundColor: "#fff"
		height: 1300
		width: 750
whiteBg.center()

#*************************
# Define Cards
#*************************
kushCard = new Layer
		image: "images/cards/card-kush.png"
		width: 730
		height: 758
		y: 200
		scale: 0.96
		index: 2

lillikoiCard = new Layer
		image: "images/cards/card-lillikoi.png"
		width: 730
		height: 758
		y: 280
		scale: 0.97
		index: 3

afgooCard = new Layer
		image: "images/cards/card-afgoo.png"
		width: 730
		height: 758
		y: 360
		scale: 0.98
		index: 4

jackqueenCard = new Layer
		image: "images/cards/card-jackqueen.png"
		width: 730
		height: 758
		y: 440
		scale: 0.99
		index: 5

acdcCard = new Layer
		image: "images/cards/card-acdc.png"
		width: 730
		height: 758
		y: 520
		scale: 1.0
		index: 6

acdcCardClone = new Layer
		image: "images/cards/card-acdc.png"
		width: 730
		height: 758
		y: 200
		scale: 0.95
		index: 1
		opacity: 0

cardBtn = new Layer
		image: "images/cards/active-btn.png"
		width: 654
		height: 84
		y: 1085
		
cardGallery = new Layer
		image: "images/cards/view-btn.png"
		width: 654
		height: 84
		y: 1085
		opacity: 0

#*************************
# App Assets
#*************************
mainHeaderBg = new Layer
		image: "images/assets/main-header-bg.png"
		width: 750
		height: 102

mainHeaderLogo = new Layer
		image: "images/assets/logo.png"
		width: 120
		height: 22
		scale: 1.2
		y: 40

mainHeaderVerify = new Layer
		image: "images/assets/verified-banner.png"
		width: 750
		height: 94
		y: 100

mainHeaderNav = new Layer
		image: "images/assets/nav.png"
		width: 58
		height: 54
		y: 23
		x: 20

mainHeaderFilter = new Layer
		image: "images/assets/filter.png"
		width: 50
		height: 60
		y: 23
		x: 680

mainBodyCart = new Layer
		image: "images/assets/cart-rect.png"
		width: 750
		height: 92
		y: 1241
		
mainBodyCategory = new Layer
		image: "images/assets/categories.png"
		width: 84
		height: 72
		x: 20
		y: 1252

mainBodyCategoryMenu = new Layer
		image: "images/assets/category-menu.png"
		width: 330
		height: 290
		x: -350
		y: 952

mainBodyCartConf = new Layer
		image: "images/assets/cart-conf.png"
		width: 750
		height: 1334
		opacity: 0

mainBodyCartBtn = new Layer
		image: "images/assets/conf-btn.png"
		width: 654
		height: 172
		opacity: 0
		y: 900

mainBodyMainMenu = new Layer
		image: "images/assets/main-menu.png"
		width: 376
		height: 1334
		x: -390

#*************************
# Center Header Objects
#*************************
mainHeaderBg.centerX()
mainHeaderLogo.centerX()
mainHeaderVerify.centerX()
mainBodyCart.centerX()

#*************************
# Center Cards
#*************************
kushCard.centerX()
lillikoiCard.centerX()
afgooCard.centerX()
jackqueenCard.centerX()
acdcCard.centerX()
acdcCardClone.centerX()

#*************************
# Center Buttons
#*************************
cardBtn.centerX()
mainBodyCartBtn.centerX()
cardGallery.centerX()

#*************************
# Events & States
#*************************
acdcCard.states.add
	second: {
		scale: 1.05
		y: 370
	}

cardBtn.states.add
	second: {
		scale: 1.05
		opacity: 0
		y: 935
	}

cardGallery.states.add
	second: {
		scale: 1.05
		opacity: 1
		y: 935
	}

mainBodyCategoryMenu.states.add 
	second: {
		x: 0
	}

mainBodyMainMenu.states.add
	second: {
		x: 0
	}

mainBodyCartConf.states.add
	second: {
		opacity: 1
	}

mainBodyCartBtn.states.add
	second: {
		opacity: 1
	}

#*************************
# Animation Options
#*************************
cardGallery.states.animationOptions =
cardBtn.states.animationOptions = 
acdcCard.states.animationOptions = 
	curve: "spring(600,30,1)"

mainBodyMainMenu.states.animationOptions =
mainBodyCategoryMenu.states.animationOptions = 
	curve: "spring(100,10,0)"

#*************************
# Clicks
#*************************
mainBodyCategory.on Events.Click, ->
	mainBodyCategoryMenu.states.next()

jackqueenCard.on Events.Click, ->
	jackqueenCard.animate
		properties:
			y: 520
			scale: 1.0
			index: 5
	acdcCard.animate
		properties:
			index: 4
			opacity: 0
	afgooCard.animate
		properties:
			y: 440
			index: 4
	lillikoiCard.animate
		properties:
			y: 360
			index: 3
	kushCard.animate
		properties:
			y: 280
			index: 2
	acdcCardClone.animate
		properties:
			y: 200
			opacity: 1

acdcCard.on Events.Click, ->
	acdcCard.states.next()
	cardBtn.states.next()
	cardGallery.states.next()

cardBtn.on Events.Click, ->
	mainBodyCartConf.states.next()
	mainBodyCartBtn.states.next()
	cardBtn.animate
		properties:
			curve: "spring(300,30,1)"
			opacity: 0
	acdcCard.animate
		properties:
			curve: "spring(300,30,1)"
			opacity: 0

mainBodyCartBtn.on Events.Click, ->
	mainBodyCartBtn.animate
		properties:
			opacity: 0
	mainBodyCartConf.animate
		properties:
			opacity: 0

mainBodyMainMenu.on Events.Click, ->
	mainBodyMainMenu.states.next()

mainHeaderNav.on Events.Click, ->
	mainBodyMainMenu.states.next()