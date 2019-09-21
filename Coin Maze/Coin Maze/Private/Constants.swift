//
//  Constants.swift
//  Coin Maze
//
//  Created by Angel Buenrostro on 9/21/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import Foundation

struct Constants {
    let baseApiURL = URL(string: "https://lambda-treasure-hunt.herokuapp.com/api/")
    let apiKey = "cd63c937162158db3a2bb3909472905ab455077c"
    
    
    // INIT
//    curl -X GET -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/init/
    
    // MOVEMENT
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json" -d '{"direction":"n"}'
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/move/
    
    // WISE EXPLORER - Predict next room to get a reduction in cooldown bonus
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json" -d '{"direction":"s", "next_room_id": "0"}'
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/move/

    // TREASURE
    //Pickup
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json" -d '{"name":"treasure"}'
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/take/
    //Drop
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json" -d '{"name":"treasure"}'
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/drop/
    
    // SELL TREASURE - First must find the shop within the map
    // TWO STEPS
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json" -d '{"name":"treasure"}'
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/sell/
    // CONFIRM SALE
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json" -d '{"name":"treasure", "confirm":"yes"}'
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/sell/
    
    // STATUS
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json"
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/status/
    
    // EXAMINE
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json" -d '{"name":"[NAME OF ITEM OR PLAYER]"}'
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/examine/
    
    // EQUIPMENT
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json" -d '{"name":"[NAME OF WEARABLE]"}'
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/wear/
    
    // NAME CHANGER - Only available at the name changer
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json" -d '{"name":"[NEW NAME]"}'
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/change_name/

    // SHRINE - Pray at the shrine to earn new powers
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json"
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/pray/
    
    // FLIGHT - Avoid movement penalties on elevated terrain
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json" -d '{"direction":"n"}'
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/fly/

    // DASH
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json" -d '{"direction":"n", "num_rooms":"5", "next_room_ids":"10,19,20,63,72"}'
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/dash/
    
    // CARRY + RECEIVE - May find a ghost to hold your heaviest item
    // Give to ghost
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json" -d '{"name":"[ITEM_NAME]"}'
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/carry/
    // Take from ghost
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json"
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/receive/
    
    
    // MARK: - Lambda Coins
    
    // MINE - Must find mining room
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json" -d '{"proof":new_proof}'
//    https://lambda-treasure-hunt.herokuapp.com/api/bc/mine/
    
    // PROOF- Does hash(last_proof, proof) contain N leading zeroes, where N is the current difficulty level?
//    curl -X GET -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    https://lambda-treasure-hunt.herokuapp.com/api/bc/last_proof/
//    {
//      "proof": 123456,
//      "difficulty": 8,
//      "cooldown": 1.0,
//      "messages": [],
//      "errors": []
//    }
    
    // BALANCE - Get your lambda coin balance
//    curl -X GET -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    https://lambda-treasure-hunt.herokuapp.com/api/bc/get_balance/
//    {
//       "cooldown": 1.0,
//       "messages": ["You have a balance of 35.0 Lambda Coins"],
//       "errors": []
//    }
    
    // TRANSMORGIFY - Spend coins to turn items into powerful equipment at transmorgifier
//    curl -X POST -H 'Authorization: Token 7a375b52bdc410eebbc878ed3e58b2e94a8cb607'
//    -H "Content-Type: application/json" -d '{"name":"[NAME OF ITEM]"}'
//    https://lambda-treasure-hunt.herokuapp.com/api/adv/transmogrify/
}
