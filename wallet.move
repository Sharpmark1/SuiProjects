// Module: wallet
module wallet::wallet;
use std::string::String;

public struct Wallet has key{
    id: UID,
    owner_address: address,
    token: Token,
}

public struct Token has store{
    name: String,
    balance: u64,
}

public fun create_wallet(ctx: &mut TxContext){
    let wallet = Wallet{
        id: object::new(ctx),
        owner_address: ctx.sender(),
        token: Token{
            name: b"Sharp".to_string(),
            balance: 0,
        }
    };
    transfer::transfer(wallet, ctx.sender())    
}