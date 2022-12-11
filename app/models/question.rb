class Question < ActiveHash::Base
  self.data = [
    { id: 1, name: 'よく知らないリーダーとビジネスのプロジェクトを一緒に行うときに、私は以下の傾向があります:' },
    { id: 2, name: '社交的なイベントに参加してる時に、私の物腰は：' },
    { id: 3, name: '交際している相手が以下のような性格だと、かなり嫌に感じる:' },
    { id: 4, name: '何か、感情がかき乱される出来事があると、私は以下の傾向にある:' },
    { id: 5, name: 'ビジネス会議をしてる時に、他人は私のことをこう思っているだろう:' },
    { id: 6, name: 'ビジネスの期限があるときには、私はこのような態度を取ります:' },
    { id: 7, name: '私は、他人にこのような印象を与えるのが好きです:' },
    { id: 8, name: '時間が余ると私はこのようなことをします:' }
  ]

  include ActiveHash::Associations
  has_many :tests
end