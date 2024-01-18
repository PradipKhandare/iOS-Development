
var skeleton = Enemy(health: 10, attackStrength: 12)

var skeleton1 = skeleton //It will create new object

skeleton1.takeDamage(amount: 2)
print(skeleton.health)
print(skeleton1.health)

