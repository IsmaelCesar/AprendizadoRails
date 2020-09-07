# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mining_types = MiningType.create([
                                  {description: 'SHA-256', acronym:'SHA'},
                                  {description: 'ETHASH', acronym:'ETH'},
                                  {description: 'SCRYPT', acronym:'SCR'},
                                  {description: 'EQUIHASH', acronym:'EQH'},
                                  {description: 'CRYPTONIGHT', acronym: 'CRN'}, 
                                  {description: 'X11', acronym: 'X11'}
                                ])

Coin.create([
    {
     description: 'Bitcoin', 
     acronym:'BTC', 
     price:10174.98, 
     url_image:'https://tse3.mm.bing.net/th?id=OIP.jcUZF81fQadzdHRiI1jHAAHaHa&pid=Api&P=0&w=300&h=300', 
     mining_type_id: mining_types.first().id 
     },
     {
      description: 'Ethereum', 
      acronym:'ETH', 
      price:347.46, 
      url_image:'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/1200px-Ethereum_logo_2014.svg.png', 
      mining_type_id: mining_types[1].id 
     },
     {
      description: 'Tether', 
      acronym:'USDT', 
      price:347.46, 
      url_image:'https://i.insider.com/5a71a5e9ec1ade273f1f5aed?width=400', 
      mining_type_id: mining_types[2].id 
     },
     {
      description: 'XRP', 
      acronym:'XRP', 
      price:0.240081, 
      url_image:'https://s2.coinmarketcap.com/static/img/coins/200x200/52.png?_=ee28eae', 
      mining_type_id: mining_types[3].id 
     },
     {
      description: 'Litecoin', 
      acronym:'LTC', 
      price:48.03, 
      url_image:'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/LTC-400.png/1200px-LTC-400.png', 
      mining_type_id: mining_types[2].id 
     },
     {
      description: 'Stellar', 
      acronym:'XLM', 
      price:0.076924, 
      url_image:'https://tse3.mm.bing.net/th?id=OIP.rbz3er18E058rPRbrrM1pQAAAA&pid=Api&P=0&w=222&h=189', 
      mining_type_id: mining_types[4].id 
     },
     {
      description: 'Monero', 
      acronym:'XMR', 
      price:80.63, 
      url_image:'https://dwglogo.com/wp-content/uploads/2017/08/1200px-Monero_logo.png', 
      mining_type_id: mining_types[2].id 
     },
     {
      description: 'Huobi Token', 
      acronym:'HT', 
      price:4.55, 
      url_image:'https://dynamic-assets.coinbase.com/d512d6219938a7c8f22a777d9df216744d14477af70d56d72dbea43fb06905ab7e26f004ce3bccf061262fdd8fb84740a152e6bf1f559dae0dda9d61d2ed97ff/asset_icons/8fcd4007a962479e24c06744b8512a632e8f5427b9b4337871511922fb3dc02b.png', 
      mining_type_id: mining_types[1].id 
     },
     {
      description: 'IOTA', 
      acronym:'MIOTA', 
      price:0.273576, 
      url_image:'https://dl.airtable.com/qU3WA8l7RNugSz7XGaNn_large_a2d0a422b38e8427adb36450d17e69f1_11156357cf86_t.png', 
      mining_type_id: mining_types[3].id 
     },
     {
      description: 'DASH', 
      acronym:'DASH', 
      price:74.38, 
      url_image:'https://tse2.mm.bing.net/th?id=OIP.gi0uFRkWDmYtJGrgryzccwHaHa&pid=Api&P=0&w=300&h=300', 
      mining_type_id: mining_types[4].id 
     },
     {
      description: 'Aave', 
      acronym:'LEND', 
      price:0.550775, 
      url_image:'https://cryptologos.cc/logos/aave-lend-logo.svg?v=003',
      mining_type_id: mining_types[2].id 
     },
     {
      description: 'Marker', 
      acronym:'MKR', 
      price:510.13, 
      url_image:'https://tse1.mm.bing.net/th?id=OIP.fzJmh7BvFbLOM2gMMLpx8AHaHa&pid=Api&P=0&w=300&h=300',
      mining_type_id: mining_types[1].id 
     },
     {
      description: 'Dogecoin', 
      acronym:'DOGE', 
      price:0.002787, 
      url_image:'https://tse1.mm.bing.net/th?id=OIP.sK9t9EoDOwgGW8jTtyc8TAHaHa&pid=Api&P=0&w=300&h=300',
      mining_type_id: mining_types[4].id 
     },
     {
      description: 'Zcash', 
      acronym:'ZEC', 
      price:60.98, 
      url_image:'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/512/Zcash-ZEC-icon.png',
      mining_type_id: mining_types[5].id 
     }
    ])


