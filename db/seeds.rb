# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Ben T', email: 'trevorb@nextcapital.com')
User.create(name: 'Jason S', email: 'shanmughamj@nextcapital.com')
User.create(name: 'Chris P', email: 'passolanoc@nextcapital.com')
User.create(name: 'Zhengchao L', email: 'liuz@nextcapital.com')

['Italian', 'American', 'Japanese', 'Chinese', 'Mediterranean', 'Mexican', 'Healthy', 'Chicken'].each do |category_name|
  Category.create(name: category_name)
end

Restaurant.create(name: 'Potbelly', address: '200 S Michigan Ave #140, Chicago, IL 60604', image_url: 'https://www.dialogtech.com/wp-content/uploads/2014/12/POTBELLY_COLOR_LOGO_1.jpg' categories: [Category['American']])
Restaurant.create(name: 'Jimmy Johns', address: '6 E Madison St, Chicago, IL 60604', image_url: 'http://static3.businessinsider.com/image/55c0d696371d2232008bc80f/jimmy-johns-ceo-is-under-fire-for-photos-showing-him-allegedly-hunting-big-game-animals.jpg', categories: [Category['American']])
Restaurant.create(name: 'Subway', address: '60 E Jackson Blvd, Chicago, IL 60604', image_url: 'https://fm.cnbc.com/applications/cnbc.com/resources/img/editorial/2016/02/25/103420068-SUBWAY-Carved-Turkey-&-Bacon-with-Simply-Products.1910x1000.jpg', categories: [Category['American']])
Restaurant.create(name: 'Chipotle', address: '8 E Madison St, Chicago, IL 60602', image_url: 'https://drpma142ptgxf.cloudfront.net/assets/logo.svg', categories: [Category['Mexican']])
Restaurant.create(name: 'Pret', address: '108 S Michigan Ave, Chicago, IL 60603', image_url: 'https://odcdn2.zenedge.com/pretamanger-usa/Header_Images/Pret_logo.png', categories: [Category['Healthy']])
Restaurant.create(name: 'McDonalds', address: '144 S Wabash Ave, Chicago, IL 60603', image_url: 'http://is2.mzstatic.com/image/thumb/Purple127/v4/8a/4d/a0/8a4da0bc-2f59-9f66-4923-05fd8e4959e6/source/1200x630bb.jpg', categories: [Category['American'], Category['Healthy']])
Restaurant.create(name: 'IDOF', address: '60 E Jackson Blvd, Chicago, IL 60604', image_url: 'http://www.idreamoffalafel.com/wp-content/themes/IDOF/images/logo_IDOF.png', categories: [Category['Mediterranean']])
Restaurant.create(name: 'Noodles', address: '47 S Clark St, Chicago, IL 60603', image_url: 'http://s3.amazonaws.com/media.fundable.com/media-assets/1381034565-noodles-startup.jpg', categories: [Category['American'], Category['Italian']])
Restaurant.create(name: 'Tokyo Lunchbox', address: '37 N Wells St, Chicago, IL 60606', image_url: 'http://chicago.seriouseats.com/images/2012/09/20120920-221963-lunch-in-the-loop-tokyo-lunchbox-main.jpg', categories: [Category['Japanese']])
Restaurant.create(name: 'Chik Fil A', address: '177 N State St #1a, Chicago, IL 60601', image_url: 'https://www.chick-fil-a.com/-/media/Images/CFACOM/Default-Images/chick-fil-a-logo-vector.ashx', categories: [Category['American'],[Category['Chicken']])
Restaurant.create(name: 'Qdoba', address: '58 E Randolph St, Chicago, IL 60601', image_url: 'http://www.exploredowntown.org/_files/images/qdob.jpg', categories: [Category['Mexican']])
Restaurant.create(name: 'Flattop Grill', address: '30 S Wabash Ave, Chicago, IL 60603', image_url: 'http://40.media.tumblr.com/33c8a55b766ad8770c83537c7b9c5abe/tumblr_nd8xabEQhA1rj2odzo1_500.jpg', categories: [Category['Stirfry']])
Restaurant.create(name: 'Shake Shack', address: '12 S Michigan Ave, Chicago, IL 60603', image_url: 'https://cdn.shakeshack.com/wp-content/uploads/2015/03/Shake-Shack.png', categories: [Category['American']])
