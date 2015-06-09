post = Post.create({ title: 'Ruby on Rails is fantastisch', body: 'Vind je dat ook? Reageer dan hieronder!' })
post.comments.create({ body: 'Helemaal mee eens!' })