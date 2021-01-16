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

# Menu
Menu.create!(
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
      topping6: 'カラメ'
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
      start_at: nil,
      end_at: nil
    }
  ]
)
