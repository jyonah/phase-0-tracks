castro_bars = [
  {twin_peaks: {
    name: "Twin Peaks",
    address: "401 Castro St, San Francisco, CA 94114",
    jonah_favorite: false,
    fave_value: nil,
    staff_known: nil,
  }
},
  {four_fourty: {
    name: "440",
    address: "440 Castro St, San Francisco, CA 94114",
    jonah_favorite: true,
    fave_value: 1,
    staff_known: {
      marty: {
        name: "Marty",
        role: "Owner",
      },
      junior: {
        name: "Junior",
        role: "Bartender",
      },
      shando: {
        name: "Shando",
        role: "Bartender",
      },
      benjamin: {
        name: "Benjamin",
        role: "Bouncer",
      },
    },
  }
},
  {edge: {
    name: "The Edge",
    address: "4149 18th St, San Francisco, CA 94114",
    jonah_favorite: true,
    fave_value: 2,
    staff_known: {
      eric: {
        name: "Eric",
        role: "Bartender",
      },
      who: {
        name: "not known by Jonah",
        role: "Bouncer",
      },
    },
  }
},
  {badlands: {
    name: "Badlands",
    address: "4121 18th St, San Francisco, CA 94114",
    jonah_favorite: false,
    fave_value: nil,
    staff_known: {
      matt: {
        name: "Matt",
        role: "Bartender",
      },
    },
  }
},
  {toad_hall: {
    name: "Toad Hall",
    address: "4146 18th St, San Francisco, CA 94114",
    jonah_favorite: false,
    fave_value: nil,
    staff_known: {
      matt: {
        name: "Matt",
        role: "Bartender",
      },
    },
  }
},
  {midnight_sun: {
    name: "Midnight Sun",
    address: "4067 18th St, San Francisco, CA 94114",
    jonah_favorite: true,
    fave_value: 3,
    staff_known: {
      billy: {
        name: "Billy",
        role: "Bartender",
      }
    },
  }
},
  {high_tops: {
    name: "High Tops",
    address: "2247 Market St, San Francisco, CA 94114",
    jonah_favorite: true,
    fave_value: 4,
    staff_known: nil,
  }
}
]



p "The #{castro_bars[1][:four_fourty][:staff_known][:junior][:role]} Jonah knows best at #{castro_bars[1][:four_fourty][:name]} is #{castro_bars[1][:four_fourty][:staff_known][:junior][:name]}"
p "Jonah's number #{castro_bars[2][:edge][:fave_value]} favorite bar is #{castro_bars[2][:edge][:name]} and is located at #{castro_bars[2][:edge][:address]}"
