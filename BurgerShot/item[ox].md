['burgerbuff'] = {
    label = 'Hamburger de bison',
    weight = 350,
    client = {
        status = { hunger = 500 },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
        prop = { model = 'prop_food_burger_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 2500,
        notification = 'Vous avez mangé un hamburger de bison'
    },
    description = 'Un hamburger au bison.'
},

['burgerpoissson'] = {
    label = 'Hamburger de poisson',
    weight = 350,
    client = {
        status = { hunger = 500 },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
        prop = { model = 'prop_food_burger_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 2500,
        notification = 'Vous avez mangé un hamburger de poisson'
    },
    description = 'Un hamburger au poisson.'
},

['burgerpoulet'] = {
    label = 'Hamburger de poulet',
    weight = 350,
    client = {
        status = { hunger = 500 },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
        prop = { model = 'prop_food_burger_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 2500,
        notification = 'Vous avez mangé un hamburger de poulet'
    },
    description = 'Un hamburger au poulet.'
},

['viande'] = {
    label = 'Viande',
    weight = 55,
    client = {
        status = { hunger = 50000 },
        anim = { dict = 'mp_player_eat', clip = 'loop_burger' },
        prop = { model = 'prop_food_burger', pos = vec3(0.01, 0.01, 0.06), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 1500,
        notification = 'Vous avez mangé de la viande'
    },
    description = 'Viande de qualité, parfaite pour un bon repas.'
},

['salade'] = {
    label = 'Salade',
    weight = 150,
    client = {
        status = { hunger = 30000 },
        anim = { dict = 'mp_player_inteat@salade', clip = 'mp_player_int_eat_salade' },
        prop = { model = 'prop_food_salade', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 2500,
        notification = 'Vous avez mangé une salade'
    },
    description = 'Salade fraîche.'
},

['tomate'] = {
    label = 'Tomate',
    weight = 55,
    client = {
        status = { hunger = 15000 },
        anim = { dict = 'mp_player_eat', clip = 'loop_burger' },
        prop = { model = 'prop_tomato', pos = vec3(0.01, 0.01, 0.06), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2000,
        notification = 'Vous avez mangé une tomate'
    },
    description = 'Tomate fraîche.'
},

['cheddar'] = {
    label = 'Cheddar',
    weight = 55,
    description = 'Fromage cheddar.'
},

['poulet'] = {
    label = 'Poulet',
    weight = 250,
    client = {
        status = { hunger = 40000 },
        anim = { dict = 'mp_player_inteat@poulet', clip = 'mp_player_int_eat_poulet' },
        prop = { model = 'prop_food_poulet', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 2500,
        notification = 'Vous avez mangé du poulet'
    },
    description = 'Poulet'
},

['poisson'] = {
    label = 'Poisson',
    weight = 55,
    client = {
        status = { hunger = 30000 },
        anim = { dict = 'mp_player_eat', clip = 'loop_burger' },
        prop = { model = 'prop_fish', pos = vec3(0.01, 0.01, 0.06), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 3000,
        notification = 'Vous avez mangé du poisson'
    },
    description = 'Poisson frais.'
},


['wrap_chevre'] = {
    label = 'Wrap Chèvre',
    weight = 250,
    client = {
        status = { hunger = 60000 },
        anim = { dict = 'mp_player_eat', clip = 'loop' },
        prop = { model = prop_wrap, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 3000,
        notification = 'Vous mangez un wrap au fromage de chèvre'
    },
    description = 'Un wrap au fromage de chèvre, pour les amateurs de saveurs riches.'
},

['chevre'] = {
    label = 'Fromage de Chèvre',
    weight = 200,
    client = {
        status = { hunger = 30000 },
        anim = { dict = 'mp_player_inteat@burger', clip = 'loop_burger' },
        prop = { model = prop_chevre, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 1500,
        notification = 'Vous avez mangé du fromage de chèvre'
    },
    description = 'Un fromage de chèvre crémeux, parfait pour les wraps et les salades.'
},

['wrap'] = {
    label = 'Wrap',
    weight = 150,
    client = {
        status = { hunger = 25000 },
        anim = { dict = 'mp_player_inteat@burger', clip = 'loop_burger' },
        prop = { model = prop_wrap, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 2000,
        notification = 'Vous avez mangé un wrap'
    },
    description = 'Une tortilla souple, idéale pour préparer des wraps.'
},

['taco_shell'] = {
    label = 'Coque de Taco',
    weight = 100,
    client = {
        status = { hunger = 15000 },
        anim = { dict = 'mp_player_inteat@burger', clip = 'loop_burger' },
        prop = { model = prop_taco_shell, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 1500,
        notification = 'Vous avez mangé une coque de taco'
    },
    description = 'Une coque de taco croustillante, idéale pour préparer des tacos délicieux.'
},

['glace_orangetang'] = {
    label = 'Glace OrangeTang',
    weight = 150,
    client = {
        status = { hunger = 50000 },
        anim = { dict = 'mp_player_eat', clip = 'loop' },
        prop = { model = prop_icecream, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 3000,
        notification = 'Vous mangez une glace OrangeTang'
    },
    description = 'Une délicieuse glace à l\'orange avec une touche de Tang.'
},

['meteorite_sunday'] = {
    label = 'Meteorite Sunday',
    weight = 200,
    client = {
        status = { hunger = 50000 },
        anim = { dict = 'mp_player_eat', clip = 'loop' },
        prop = { model = prop_icecream, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 3000,
        notification = 'Vous mangez un Meteorite Sunday'
    },
    description = 'Un dessert cosmique avec des morceaux de météorite chocolatée.'
},


['cupcake'] = {
    label = 'Cupcake',
    weight = 150,
    client = {
        status = { hunger = 25000 },
        anim = { dict = 'mp_player_inteat@cake', clip = 'mp_player_int_eat_cake' },
        prop = { model = 'prop_food_cupcake', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 2500,
        notification = 'Vous avez mangé un cupcake'
    },
    description = 'Délicieux cupcake.'
},

['donut'] = {
    label = 'Beignet',
    weight = 150,
    client = {
        status = { hunger = 25000 },
        anim = { dict = 'mp_player_inteat@cake', clip = 'mp_player_int_eat_cake' },
        prop = { model = 'prop_food_donut', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 2500,
        notification = 'Vous avez mangé un beignet'
    },
    description = 'Beignet sucré.'
},

['colabs'] = {
    label = 'Cola Classic',
    weight = 275,
    client = {
        status = { thirst = 30000 },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = 'prop_cs_cola', pos = vec3(0.01, 0.01, 0.06), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
        notification = 'Vous avez bu un Cola Classic'
    },
    description = 'Une canette de Cola Classic.'
},

['sprunk'] = {
    label = 'Sprunk',
    weight = 275,
    client = {
        status = { thirst = 30000 },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = 'prop_cs_cola', pos = vec3(0.01, 0.01, 0.06), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
        notification = 'Vous avez bu un Sprunk'
    },
    description = 'Une canette de Sprunk.'
},

['ecola'] = {
    label = 'E-Cola',
    weight = 275,
    client = {
        status = { thirst = 30000 },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = 'prop_cs_cola', pos = vec3(0.01, 0.01, 0.06), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
        notification = 'Vous avez bu une canette d\'E-Cola'
    },
    description = 'Une canette d\'E-Cola.'
},

['lemonade'] = {
    label = 'Limonade',
    weight = 1,
    client = {
        status = { thirst = 20000 },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 1500,
        notification = 'Vous avez bu une limonade'
    },
    description = 'Limonade bien bien'
},

['jusdorange'] = {
    label = 'Jus d\'Orange',
    weight = 275,
    client = {
        status = { thirst = 30000 },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = 'prop_cs_cola', pos = vec3(0.01, 0.01, 0.06), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
        notification = 'Vous avez bu du jus d\'orange'
    },
    description = 'Une bouteille de jus d\'orange.'
},

['painburger'] = {
    label = 'Pain Burger',
    weight = 55,
    description = 'Pain fraîchement cuit.'
},