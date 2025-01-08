class HomeController < ApplicationController
  def index
    @kanji = generate_kanji
    @katakana = generate_katakana
    @kanji2 = generate_kanji
  end

  private

  def generate_kanji
    # 漢字をランダムに生成
    kanji_list = ['山', '川', '海', '空', '月', '日', '星', '火', '水', '木', '金',
                  '土', '花', '草', '雲', '風', '鳥', '魚', '虫', '犬', '猫', '馬',
                  '牛', '虎', '象', '熊', '狼', '龍', '雪', '雨', '雷', '光', '玉',
                  '石', '桜', '桃', '梅', '柿', '茶', '竹', '松', '杉', '富', '士',
                  '笛', '和', '敬', '愛', '希', '夢', '勇', '心', '魂', '力', '知',
                  '学', '音', '声', '美', '舞', '書', '絵', '歌', '詩', '戦', '平',
                  '和', '録', '古', '新', '遠', '近', '赤', '青', '黄', '白', '黒',
                  '夢', '望', '愛', '勇', '力', '魂', '学', '光', '星', '音', '声',
                  '花', '美', '草', '雲', '鳥', '雪']
    random_count = rand(2..4)
    kanji_list.sample(random_count).join
  end

  def generate_katakana
    # カタカナをランダムに生成
    katakana_list = ['ア', 'イ', 'ウ', 'エ', 'オ', 'カ', 'キ', 'ク', 'ケ', 'コ',
                     'サ', 'シ', 'ス', 'セ', 'ソ', 'タ', 'チ', 'ツ', 'テ', 'ト',
                     'ナ', 'ニ', 'ヌ', 'ネ', 'ノ', 'ハ', 'ヒ', 'フ', 'ヘ', 'ホ',
                     'マ', 'ミ', 'ム', 'メ', 'モ', 'ヤ', 'ユ', 'ヨ', 'ラ', 'リ', 'ル', 'レ', 'ロ',
                     'ワ', 'ヲ', 'ン', 'ー', 'ガ', 'ギ', 'グ', 'ゲ', 'ゴ',
                     'ザ', 'ジ', 'ズ', 'ゼ', 'ゾ',
                     'ダ', 'ヂ', 'ヅ', 'デ', 'ド',
                     'バ', 'ビ', 'ブ', 'ベ', 'ボ',
                     'パ', 'ピ', 'プ', 'ペ', 'ポ']
    random_count = rand(4..6)
    katakana_list.sample(random_count).join
  end
end
