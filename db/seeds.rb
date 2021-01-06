# Jiro
Jiro.create!(
  [
    {
      name: 'zenjiro',
      address: '東京都大田区北千束2-7-9',
      phone_number: '080-3352-5556',
      access: '東急大井町線から徒歩6分',
      hp_url: 'https://www.instagram.com/?hl=ja',
      is_parking_area: false,
      seat_count: 6,
      payment_method: 1,
      how_to_order: 1,
      call_timing: 1,
      is_renge: false,
      is_tissue: true,
      is_apron: true,
      is_water_server: false,
      is_trash_box: true,
      is_rest_room: true,
      in_store_pending: 6,
      information: 'ヤサイマシマシにすると他店舗よりも多い量が来るので注意。ヤサイマシマシにすると他店舗よりも多い量が来るので注意。ヤサイマシマシにすると他店舗よりも多い量が来るので注意。ヤサイマシマシにすると他店舗よりも多い量が来るので注意。',
      is_closed: false,
      registered_jirolian_id: 1
    },
    {
      name: 'narijiro',
      address: '東京都江東区大島1-5-7',
      phone_number: '080-3352-4446',
      access: '都営新宿線大島駅から徒歩6分',
      hp_url: 'https://twitter.com/home',
      is_parking_area: true,
      seat_count: 10,
      payment_method: 1,
      how_to_order: 2,
      call_timing: 1,
      is_renge: true,
      is_tissue: false,
      is_apron: false,
      is_water_server: true,
      is_trash_box: true,
      is_rest_room: false,
      in_store_pending: 3,
      information: '総帥が麺上げしてくれているときは味が安定する。総帥が麺上げしてくれているときは味が安定する。総帥が麺上げしてくれているときは味が安定する。総帥が麺上げしてくれているときは味が安定する。',
      is_closed: false,
      registered_jirolian_id: 2
    },
    {
      name: 'kumajiro',
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
      registered_jirolian_id: 3
    }
  ]
)
# TableSeasoning
TableSeasoning.create!(
  [
    {
      name: 'カエシ醤油',
      jiro_id: 1
    },
    {
      name: '白コショウ',
      jiro_id: 1
    },
    {
      name: '黒コショウ',
      jiro_id: 1
    },
    {
      name: '一味唐辛子',
      jiro_id: 1
    }
  ]
)
# MainMenu
MainMenu.create!(
  [
    {
      name: 'ラーメン(小)',
      noodles_quantity: 250,
      note: 'マシマシ禁止',
      price: 650,
      jiro_id: 1
    },
    {
      name: '冷やし中華(小)',
      noodles_quantity: 400,
      note: 'ブタの代わりに鶏肉',
      price: 750,
      jiro_id: 1
    }
  ]
)
# OptionMenu
OptionMenu.create!(
  [
    {
      name: '生卵',
      price: 50,
      jiro_id: 1
    },
    {
      name: '豚追加',
      price: 150,
      jiro_id: 1
    },
    {
      name: 'ネギ',
      price: 100,
      jiro_id: 1
    },
    {
      name: '魚粉',
      price: 100,
      jiro_id: 1
    }
  ]
)

# Topping
Topping.create!(
  [
    {
      name: 'ヤサイ',
      main_menu_id: 1
    },
    {
      name: 'アブラ',
      main_menu_id: 1
    },
    {
      name: 'ニンニク',
      main_menu_id: 1
    },
    {
      name: 'ヤサイ',
      main_menu_id: 2
    },
    {
      name: 'アブラ',
      main_menu_id: 2
    },
    {
      name: 'ニンニク',
      main_menu_id: 2
    },
    {
      name: 'カラメ',
      main_menu_id: 2
    },
    {
      name: 'ショウガ',
      main_menu_id: 2
    }
  ]
)

# BusinessHour
BusinessHour.create!(
  [
    {
      jiro_id: 1,
      wday: 0,
      category: 3,
      start_at: nil,
      end_at: nil
    },
    {
      jiro_id: 1,
      wday: 1,
      category: 1,
      start_at: '11:00',
      end_at: '15:00'
    },
    {
      jiro_id: 1,
      wday: 1,
      category: 2,
      start_at: '17:00',
      end_at: '21:00'
    },
    {
      jiro_id: 1,
      wday: 2,
      category: 1,
      start_at: '11:00',
      end_at: '15:00'
    },
    {
      jiro_id: 1,
      wday: 2,
      category: 2,
      start_at: '17:00',
      end_at: '21:00'
    },
    {
      jiro_id: 1,
      wday: 3,
      category: 1,
      start_at: '11:00',
      end_at: '15:00'
    },
    {
      jiro_id: 1,
      wday: 3,
      category: 2,
      start_at: '17:00',
      end_at: '21:00'
    },
    {
      jiro_id: 1,
      wday: 4,
      category: 1,
      start_at: '11:00',
      end_at: '15:00'
    },
    {
      jiro_id: 1,
      wday: 4,
      category: 2,
      start_at: '17:00',
      end_at: '21:00'
    },
    {
      jiro_id: 1,
      wday: 5,
      category: 1,
      start_at: '11:00',
      end_at: '15:00'
    },
    {
      jiro_id: 1,
      wday: 5,
      category: 2,
      start_at: '17:00',
      end_at: '21:00'
    },
    {
      jiro_id: 1,
      wday: 6,
      category: 1,
      start_at: '11:00',
      end_at: '15:00'
    },
    {
      jiro_id: 1,
      wday: 6,
      category: 2,
      start_at: '17:00',
      end_at: '21:00'
    }
  ]
)
