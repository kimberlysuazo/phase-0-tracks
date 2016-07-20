


mall = {
  floor_1: {
      victorias_secret: [
        'Bras',
        'Panties',
        'Pajamas',
        'Perfumes',
        'Lotions'
        ],
      best_buy: [
        'TVs',
        'Computers',
        'Cellphones'
        ],
      old_navy: [ 
        'Pants',
        'Shirts',
        'Skirts',
        'Dresses',
        'Flip-flops'
        ]
  },   
  floor_2: {
      food_court: {
          burger_king: {
              burgers: [
                  'Whopper',
                  'Whopper Jr' 
                  ],
              chicken_sandwiches: [
                  'Tendergrill Chicken Sandwich', 
                  'Original Chicken Sandwich', 
                  'Club Chicken Sandwich'
                  ],
              side_items: [
                  'Onion Rings',
                  'French Fries',
                  'Garden Salad'
                  ] 
          },        
          jamba_juice: [
                  'Smoothies',
                  'Wheatgrass',
                  'Fruit'
                  ],  
          starbucks: {
              drink_categories: [
                  'Coffee',
                  'Frapuccino',
                  'Lemonade',
                  'Tea'
                  ],
              food: [
                  'Pastries',
                  'Sandwiches', 
                  'Pre-packaged Snacks'
                ]
          },      
          chick_fil_a: {
              Classics: [
                  'Chick-fil-A Nuggets',
                  'Chick-fil-A Chick-n-Strips',
                  'Chick-fil-A Chicken Sandwich'
                  ],
              side_items: [
                  'Chick-fil-A Waffles Fries',
                  'Chicken Soup',
                  'Fruit Cup', 
                  'Side Salad'
                  ],
              Desserts: [ 
                'Chocolate Cookie', 
                'Icedream',
                'Milkshakes' => [ 
                  'Cookies and Cream',
                  'Peach',
                  'Strawberry',
                  'Vanilla'
                  ] 
              ]    
          }        
      },  
      Restrooms: {
          male: [
              'Toilet Booths', 
              'Urinals',
              'Sinks',
              'Mirrors'
              ],
          female: [
              'Toilet Booths', 
              'Sinks',
              'Mirrors'
            ]
      }
  },
  floor_3: {
      movie_theater: [ 
            'Ticket Booth', 
            'Concession Stand',
            'Theater Room 1', 
            'Theater Room 2'
            ]
  }

} 


 

#Calls entire array under Best Buy key. 
p mall[:floor_1]['Best Buy'] 
#Calls Shirts
p mall[:floor_1]['Old Navy'][1] 
#Calls Theather Room 2
p mall[:floor_3]['Movie Theater'][-1]
#Calls Strawberry: the third milkshake listed under Chick-fil-A desserts. 
p mall[:floor_2][:food_court][:chick_fil_a]['Desserts'][2]['Milkshakes'][2]

