actor MiniATM {
    var balance : Nat = 1000;

    public func withdraw(amount : Nat) : async Nat {
        if (amount <= balance) {
            balance := balance - amount;
            return balance;
        } else {
            return 0;
        }
    };

    public func deposit(amount : Nat) : async Nat {
        balance := balance + amount;
        return balance;
    };

    public query func checkBalance() : async Nat {
        return balance;
    };
};