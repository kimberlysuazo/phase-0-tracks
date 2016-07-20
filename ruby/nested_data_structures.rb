


mall = {
  floor_1: {
      'Victorias Secret' => [
        'Bras',
        'Panties',
        'Pajamas',
        'Perfumes',
        'Lotions'
        ],
      'Best Buy' => [
        'TVs',
        'Computers',
        'Cellphones'
        ],
      'Old Navy' => [ 
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
              'Burgers' => [
                  'Whopper',
                  'Whopper Jr' 
                  ],
              'Chicken Sandwiches' => [
                  'Tendergrill Chicken Sandwich', 
                  'Original Chicken Sandwich', 
                  'Club Chicken Sandwich'
                  ],
              'Side Items' => [
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
              'Furniture' => [
                  'Chairs',
                  'Tables',
                  'Stools'
                  ],
              'Food' => [
                  'Coffee',
                  'Milk',
                  'Tea',
                  'Pastries',
                  'Sandwiches'
                ]
          },      
          chick_fil_a: {
              'Classics' => [
                  'Chick-fil-A Nuggets',
                  'Chick-fil-A Chick-n-Strips',
                  'Chick-fil-A Chicken Sandwich'
                  ],
              'Side Items' => [
                  'Chick-fil-A Waffles Fries',
                  'Chicken Soup',
                  'Fruit Cup', 
                  'Side Salad'
                  ],
              'Desserts' => [ 
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
          'Male' => [
              'Toilet Booths', 
              'Urinals',
              'Sinks',
              'Mirrors'
              ],
          'Female' => [
              'Toilet Booths', 
              'Sinks',
              'Mirrors'
            ]
      }
  }

} 

=begin



Floor 3: HASH
  Movie theather (Key)=>
    [ 
    Ticket Booth 
    Concession Stand
    Theather Room 1 
    Theater Room 2
    ]

Floor -1 : HASH
  parking lot (Key)=> cars 


}
=end 
 
#p mall[:floor_1]['Best Buy'] 
#p mall[:floor_1]['Old Navy'][1] 


=begin
Once you've built it, print a few individual pieces of deeply nested data from the structure, 
showing that you know how to use multiple indexes or hash keys (or both) to access nested items. 
Try to demonstrate a few different types of access.
=end 