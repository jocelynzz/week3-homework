#challenge one

Place.delete_all

Place.create(title: 'Sears Tower', photo_url: 'http://upload.wikimedia.org/wikipedia/commons/b/ba/Sears_Tower_ss.jpg', price: 50,
description: 'One of the most iconic places')
Place.create(title: 'Millenium Park', photo_url: 'http://www.art-days.com/wp-content/uploads/2014/01/cloud-gate-reflects-snow-storm-chicago-15.jpg', price: 0,
description: 'Cloud Gate is in the park')
Place.create(title: 'Michicagn Avenue', photo_url: 'http://bestchicagotravelguide.com/images/magnificent-mile-chicago-001.jpg', price: 0,
description: 'A must-visit in Chicago')
Place.create(title: 'Trump Tower', photo_url: 'http://upload.wikimedia.org/wikipedia/commons/4/40/Chicago_(8).jpg', price: 100,
description: 'Great View')
Place.create(title: 'John Hancock Center', photo_url: 'http://upload.wikimedia.org/wikipedia/commons/9/97/John_Hancock_Center.jpg', price: 100,
description: 'One of the tallest tower')