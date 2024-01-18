
struct Enemy
{
    var health : Int
    var attackStrength : Int
    
    init(health: Int, attackStrength: Int) {
        self.health = health
        self.attackStrength = attackStrength
    }
    
    func move()
    {
        print("walk forwords.")
    }
    
    
    
    mutating func takeDamage(amount: Int)
    {
        health = health - amount
    }
    
    func attack()
    {
        print("Land a heat, does \(attackStrength) damage.")
    }
}
