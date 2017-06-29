=begin
*make hash container for bridal party
*make each name a sub-hash
*create array for each for duties
*create hash for each for outfit
=end

bridal_party = {
  maid_of_honor: {
    name: 'Jamie',
    outfit: {
      dress_length: 'cocktail',
      dress_color: 'lavender',
      shoes: 'heals',
      shoe_color: 'gold'
    },
    duties: ['plan bridal shower', 'plan bachalorette', 'go to gym with bride', 'attend dress shopping', 'manage wedding day'],
    plus_one: ['devon']
  },

  matron_of_honor: {
    name: 'Paula',
    outfit: {
      dress_length: 'floor length',
      dress_color: 'lavender',
      shoes: 'flats',
      shoe_color: 'black'
   },
   duties: ['plan bridal shower', 'go to gym with bride', 'attend dress shopping', 'help with wedding day', 'help make decorations'],
   plus_one: ['Gaincarlos', 'Gabriel']
  },
  braidsmaid_1: {
    name: 'Marlena',
    outfit: {
      dress_length: 'short',
      dress_color: 'lavender',
      shoes: 'heels',
      shoe_color: 'gold'
    },
    duties: ['attend dress shopping', 'watch childern day of' 'watch dogs day of'],
    plus_one: []
  },
  bridesmaid_2: {
    name: 'Lexi',
    outfit: {
      dress_length: 'cocktail',
      dress_color: 'lavender',
      shoes: 'heels',
      shoe_color: 'gold'
    },
    duties: ['help organize logistics', 'make decorations', 'attend dress shopping', 'make sure no one gets too drunk day of wedding' 'do bridal make-up'],
    plus_one: ['brandon']
  },
  bridesmaid_3: {
    name: 'Stephanie',
    outfit: {
      dress_length: 'long',
      dress_color: 'lavender',
      shoes: 'flip-flops',
      shoe_color: 'gold'
    },
    duties: ['attend dress shopping', 'keep bride calm', 'give speech funny'],
    plus_one: ['Lorna']
  },
  flower_boy: {
    name: 'James',
    outfit: {
      suspenders: 'teal',
      shirt: 'white',
      pants: 'black',
      shoes: 'converse',
      shoe_color: 'black'
    },
    duties: ['throw flowers down isle', 'give boquet to mothers', 'look handsome af'],
    plus_one: []
  },
  brides_man: {
    name: 'Ryan',
    outfit: {
      vest: 'teal',
      shirt: 'white',
      pants: 'black',
      shoes: 'converse',
      shoe_color: 'black'
    },
    duties: ['do not annoy sister'],
    plus_one: []
  }
}


p bridal_party

p bridal_party[:maid_of_honor][:outfit][:shoes]

p bridal_party[:matron_of_honor][:plus_one][1]

p bridal_party[:bridesmaid_1][:plus_one][0]

p bridal_party[:bridesmaid_1][:plus_one][0] = "Remington"

p bridal_party[:brides_man][:outfit]

p bridal_party[:maid_of_honor][:name] = 'Bestie'

p bridal_party