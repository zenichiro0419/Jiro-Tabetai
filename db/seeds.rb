# Jiro
Jiro.create!(
  [
    {
      name: '千里眼',
      address: '東京都大田区北千束2-7-9',
      phone_number: '080-3352-5556',
      access: '東急大井町線から徒歩6分',
      hp_url: 'https://www.instagram.com/?hl=ja',
      is_parking_area: false,
      seat_count: 6,
      payment_method: 1,
      how_to_order: 1,
      call_timing: 1,
      information: 'ヤサイマシマシにすると他店舗よりも多い量が来るので注意。ヤサイマシマシにすると他店舗よりも多い量が来るので注意。ヤサイマシマシにすると他店舗よりも多い量が来るので注意。ヤサイマシマシにすると他店舗よりも多い量が来るので注意。',
      is_closed: false,
      registered_jirolian_id: 1,
      image: File.open('app/assets/images/千里眼.jpeg')
    },
    {
      name: '用心棒',
      address: '東京都江東区大島1-5-7',
      phone_number: '080-3352-4446',
      access: '都営新宿線大島駅から徒歩6分',
      hp_url: 'https://twitter.com/home',
      is_parking_area: true,
      seat_count: 10,
      payment_method: 1,
      how_to_order: 2,
      call_timing: 1,
      information: '総帥が麺上げしてくれているときは味が安定する。総帥が麺上げしてくれているときは味が安定する。総帥が麺上げしてくれているときは味が安定する。総帥が麺上げしてくれているときは味が安定する。',
      is_closed: false,
      registered_jirolian_id: 2,
      image: File.open('app/assets/images/用心棒.jpg')
    },
    {
      name: '鷹の目',
      address: '群馬県前橋市文京町3-13-4',
      phone_number: '080-3352-2226',
      access: 'JR前橋駅から車で１０分',
      hp_url: 'https://twitter.com/home',
      seat_count: 10,
      payment_method: 1,
      how_to_order: 2,
      call_timing: 1,
      information: '地元の味がする。',
      is_closed: false,
      registered_jirolian_id: 3,
      image: File.open('app/assets/images/鷹の目.jpg')
    }
  ]
)
# Facility
Facility.create!(
  [
    {
      jiro_id: 1,
      in_store_pending: true,
      is_apron: false,
      is_hair_tie: true,
      is_renge: false,
      is_tissue: true,
      is_trash_box: true,
      is_vending_machine: false,
      is_water_server: true,
      seasoning1: 1,
      seasoning2: 2,
      seasoning3: 3,
      seasoning4: 4,
      seasoning5: 5
    },
    {
      jiro_id: 2,
      in_store_pending: true,
      is_apron: false,
      is_hair_tie: true,
      is_renge: false,
      is_tissue: true,
      is_trash_box: true,
      is_vending_machine: false,
      is_water_server: true
    },
    {
      jiro_id: 3
    }
  ]
)

# MenuItem
MenuItem.create!(
  [
    {
      name: 'ラーメン(小)',
      jiro_id: 1,
      price: 650,
      is_main: true,
      noodle_quantity: 250,
      note: 'マシマシ禁止',
      topping1: 'ヤサイ',
      topping2: 'アブラ',
      topping3: 'ニンニク',
      topping4: 'ショウガ',
      topping5: 'カラアゲ'
    },
    {
      name: '冷やし中華(小)',
      jiro_id: 1,
      price: 750,
      is_main: true,
      noodle_quantity: 400,
      note: 'ブタの代わりに鶏肉',
      topping1: 'ヤサイ',
      topping2: 'アブラ',
      topping3: 'ニンニク',
      topping4: 'ショウガ',
      topping5: 'カラアゲ',
      topping6: 'ガリマヨ',
      topping7: 'カラメ'
    },
    {
      jiro_id: 1,
      is_main: false,
      name: '生卵',
      price: 50
    },
    {
      jiro_id: 1,
      is_main: false,
      name: '魚粉',
      price: 70
    },
    {
      jiro_id: 1,
      is_main: false,
      name: '豚追加',
      price: 150
    },
    {
      jiro_id: 1,
      is_main: false,
      name: 'ネギ',
      price: 100
    }
  ]
)

# BusinessHour
BusinessHour.create!(
  [
    {
      jiro_id: 1,
      wday: 0,
      is_holiday: true,
      category: 1,
      start_at: nil,
      end_at: nil
    },
    {
      jiro_id: 1,
      wday: 0,
      is_holiday: true,
      category: 2,
      start_at: nil,
      end_at: nil
    },
    {
      jiro_id: 1,
      wday: 1,
      is_holiday: false,
      category: 1,
      start_at: '11:00',
      end_at: '15:00'
    },
    {
      jiro_id: 1,
      wday: 1,
      is_holiday: false,
      category: 2,
      start_at: '17:00',
      end_at: '21:00'
    },
    {
      jiro_id: 1,
      wday: 2,
      is_holiday: false,
      category: 1,
      start_at: '11:00',
      end_at: '15:00'
    },
    {
      jiro_id: 1,
      wday: 2,
      is_holiday: false,
      category: 2,
      start_at: '17:00',
      end_at: '21:00'
    },
    {
      jiro_id: 1,
      wday: 3,
      is_holiday: false,
      category: 1,
      start_at: '11:00',
      end_at: '15:00'
    },
    {
      jiro_id: 1,
      wday: 3,
      is_holiday: false,
      category: 2,
      start_at: '17:00',
      end_at: '21:00'
    },
    {
      jiro_id: 1,
      wday: 4,
      is_holiday: false,
      category: 1,
      start_at: '11:00',
      end_at: '15:00'
    },
    {
      jiro_id: 1,
      wday: 4,
      is_holiday: false,
      category: 2,
      start_at: '17:00',
      end_at: '21:00'
    },
    {
      jiro_id: 1,
      wday: 5,
      is_holiday: false,
      category: 1,
      start_at: '11:00',
      end_at: '15:00'
    },
    {
      jiro_id: 1,
      wday: 5,
      is_holiday: false,
      category: 2,
      start_at: '17:00',
      end_at: '21:00'
    },
    {
      jiro_id: 1,
      wday: 6,
      is_holiday: false,
      category: 1,
      start_at: '11:00',
      end_at: '15:00'
    },
    {
      jiro_id: 1,
      wday: 6,
      is_holiday: false,
      category: 2,
      start_at: nil,
      end_at: nil
    }
  ]
)

# Jirolian
jirolians =
  [
    {
      username: 'ぜん',
      email: 'zenichiro0419@gmail.com',
      gender: 1,
      home_jiro: '千里眼',
      hp_url: 'https://twitter.com/home',
      introduction: 'ヤサイマシ必須です。',
      approved_favorited: true,
      password: '123456789',
      confirmation_sent_at: '2020-04-18 00:00:00',
      confirmation_token: 'asdfghjk',
      confirmed_at: '2020-04-19 00:00:00',
      image: File.open('app/assets/images/mario.png')
    },
    {
      username: 'いちろう',
      email: 'zenichiro.ishikawa@gmail.com',
      gender: 2,
      home_jiro: '用心棒',
      hp_url: 'https://twitter.com/home',
      introduction: 'アブラマシ必須です。',
      approved_favorited: false,
      password: '123456789',
      confirmation_sent_at: '2020-04-18 00:00:00',
      confirmation_token: 'zxcvbnm',
      confirmed_at: '2020-04-19 00:00:00',
      image: File.open('app/assets/images/ruige.png')
    },
    {
      username: '石川さん',
      email: 'z.ishikawa@toreta.in',
      gender: 1,
      home_jiro: '鷹の目',
      hp_url: 'https://twitter.com/home',
      introduction: 'カラメ必須です。',
      approved_favorited: true,
      password: '123456789',
      confirmation_sent_at: '2020-04-18 00:00:00',
      confirmation_token: 'qwertyuio',
      confirmed_at: '2020-04-19 00:00:00',
      image: File.open('app/assets/images/teresa.jpg')
    },
    {
      username: '善一郎さん',
      email: 'zenichiro.ishikawa@lovegraph.me',
      gender: 1,
      home_jiro: '富士丸',
      hp_url: 'https://twitter.com/home',
      introduction: 'お残しは許しません。',
      approved_favorited: true,
      password: '123456789',
      confirmation_sent_at: '2020-04-18 00:00:00',
      confirmation_token: 'mnbvcxz',
      confirmed_at: '2020-04-19 00:00:00',
      image: File.open('app/assets/images/kuppa.png')
    }
  ]
jirolians.each do |record|
  Jirolian.create!(record) unless Jirolian.find_by(email: record[:email])
end

# Post
Post.create!(
  [
    {
      jirolian_id: 1,
      jiro_id: 1,
      content: 'ほげほげほげほげ',
      soup: 1,
      noodle: 1,
      boiled_vegetable: 1,
      roasted_pork: 1,
      called: 'ヤサイマシマシアブラマシマシ',
      wating_time: 20
    },
    {
      jirolian_id: 1,
      jiro_id: 2,
      content: 'フガフガ',
      soup: 1,
      noodle: 1,
      boiled_vegetable: 1,
      roasted_pork: 1,
      called: '別皿ニンニクガリマヨ',
      wating_time: 100
    },
    {
      jirolian_id: 1,
      jiro_id: 3,
      content: 'ぴよぴよぴよ',
      soup: 1,
      noodle: 1,
      boiled_vegetable: 1,
      roasted_pork: 1,
      called: 'カラアゲ半分'
    },
    {
      jirolian_id: 2,
      jiro_id: 1,
      content: 'ほげほげほげほげ',
      soup: 2,
      noodle: 2,
      boiled_vegetable: 2,
      roasted_pork: 2,
      called: 'ヤサイマシマシアブラ'
    },
    {
      jirolian_id: 2,
      jiro_id: 2,
      content: 'フガフガ',
      soup: 2,
      noodle: 2,
      boiled_vegetable: 2,
      roasted_pork: 2,
      called: '別皿ニンニク',
      wating_time: 25
    },
    {
      jirolian_id: 2,
      jiro_id: 3,
      content: 'ぴよぴよぴよ',
      soup: 2,
      noodle: 2,
      boiled_vegetable: 2,
      roasted_pork: 2,
      called: 'アブラ'
    },
    {
      jirolian_id: 3,
      jiro_id: 1,
      content: 'ほげほげほげほげ',
      soup: 3,
      noodle: 3,
      boiled_vegetable: 3,
      roasted_pork: 3,
      called: 'ヤサイマシアブラマシマシ',
      wating_time: 100
    },
    {
      jirolian_id: 3,
      jiro_id: 2,
      content: 'フガフガ',
      soup: 3,
      noodle: 3,
      boiled_vegetable: 3,
      roasted_pork: 3,
      called: '別皿ガリマヨ',
      wating_time: 50
    },
    {
      jirolian_id: 3,
      jiro_id: 3,
      content: 'ぴよぴよぴよ',
      soup: 3,
      noodle: 3,
      boiled_vegetable: 3,
      roasted_pork: 3,
      called: 'ヤサイ',
      wating_time: 30
    }
  ]
)
