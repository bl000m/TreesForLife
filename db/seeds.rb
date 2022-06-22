# TODO: implement your seeds
Tree.destroy_all
User.destroy_all

john = User.create!(
  first_name: 'John',
  last_name: 'Doe',
  password: 'secret',
  email: 'john@gmail.com'
)

apple_tree = Tree.create!(
  name: 'John’s apple tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'This apple tree produces both sweet and sour apples. They will be    perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
  price_per_year: 175,
  quantity_by_year: 5,
  fruits: 'apple',
  user: john
)

apricot_tree = Tree.create!(
  name: 'John’s apricot tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'This apricot tree produces both sweet and sour apples. They will be    perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
  price_per_year: 225,
  quantity_by_year: 8,
  fruits: 'apricot',
  user: john
)

mandarin_tree = Tree.create!(
  name: 'John’s mandarin tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'This apricot tree produces both sweet and sour apples. They will be    perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
  price_per_year: 225,
  quantity_by_year: 12,
  fruits: 'mandarin',
  user: john
)

orange_tree = Tree.create!(
  name: 'John’s orange tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'This apricot tree produces both sweet and sour apples. They will be    perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
  price_per_year: 225,
  quantity_by_year: 10,
  fruits: 'orange',
  user: john
)
