class Item < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ワクワクして、チームのみんなと最適なリーダーシップを構築することにフォーカスする' },
    { id: 2, name: '自分の意見は言わずに、どのような可能性があるかを議論する' },
    { id: 3, name: '自分が場を仕切り、最短最速で結果を出すことにフォーカスする' },
    { id: 4, name: 'スタートをする前に論理的に考え、仕事内容のアウトラインを作り上げる' },
    { id: 5, name: 'フレンドリー、温かみがあり、創造性がある' },
    { id: 6, name: '社交的で楽しくエネルギーが高い' },
    { id: 7, name: '場をコントロールして、自信たっぷり' },
    { id: 8, name: '静かに見守り、賢く見せる' },
    { id: 9, name: '優柔不断で弱々しい' },
    { id: 10, name: '忘れっぽく、いつも遅刻して、だらしがない' },
    { id: 11, name: '超つまんない真面目の堅物' },
    { id: 12, name: '不愛想で、物質主義で、感情を全く見せない' },
    { id: 13, name: '自分の感情を伝えたり、表現をしたい' },
    { id: 14, name: '自分の感情は無視して、もっと大事なことにフォーカスする' },
    { id: 15, name: '遊びに出かけて、外で楽しいことをして、嫌なことは忘れる、後で解決すればいい' },
    { id: 16, name: '自分の感情や胸の内を表現する事だけは絶対にしたくないので、それを避けるためだったらなんだってする' },
    { id: 17, name: '想像的、サポート力がある、人助けする人' },
    { id: 18, name: 'コントロール力があり、詳細に細かく、論理的' },
    { id: 19, name: 'エネルギーが高く、楽観的で楽しい' },
    { id: 20, name: '攻撃的で、頭がよく自信家' },
    { id: 21, name: '期限は必ず守らないといけないので、今すぐやる' },
    { id: 22, name: '期限は守れるようにベストを尽くす' },
    { id: 23, name: '期限があると、プレッシャーを感じる' },
    { id: 24, name: '時間を守るだけでなく、仕事もちゃんと正確にやらねばならない' },
    { id: 25, name: '目的意識が高く、攻撃的で自信家' },
    { id: 26, name: '頭脳明晰、効率的で几帳面' },
    { id: 27, name: 'とても社交的で、面白く突発的' },
    { id: 28, name: '思いやりがあり、創造的で積極的' },
    { id: 29, name: '溜まっている家事をこなし、読書タイム' },
    { id: 30, name: '外出して何か楽しいことをする' },
    { id: 31, name: 'ボランティアしたり、創造的なことをする' },
    { id: 32, name: '自分へのご褒美、と称して、贅沢なことをする' },
    { id: 33, name: '衝動的' },
    { id: 34, name: '芸術的' },
    { id: 35, name: '几帳面' },
    { id: 36, name: '印象的' },
    { id: 37, name: 'お洒落' },
    { id: 38, name: '対抗的' },
    { id: 39, name: '保守的' },
    { id: 40, name: '突発的' },
    { id: 41, name: '支配的' },
    { id: 42, name: '神経質' },
    { id: 43, name: '論理的' },
    { id: 44, name: '哲学的' },
    { id: 45, name: '内向的' },
    { id: 46, name: '外交的' },
    { id: 47, name: '時間厳守' },
    { id: 48, name: '楽観的' },
    { id: 49, name: '思慮深い' },
    { id: 50, name: '自己主張が強い' },
    { id: 51, name: '決定的' },
    { id: 52, name: '繊細' },
    { id: 53, name: 'ユーモアがある' },
    { id: 54, name: '質素' },
    { id: 55, name: '誠実' },
    { id: 56, name: 'モチベーションが高い' }
  ]

  include ActiveHash::Associations
  has_many :tests
end
