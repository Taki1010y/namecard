work_category_names = ["デザイン", "料理", "美容" ,"エンジニア", "アート"]
design_categories = ["グラフィックデザイン", "インテリアデザイン", "Webデザイン", "パッケージデザイン", "編集デザイン", "ディスプレイデザイン", "ファッションデザイン", "キャラクターデザイン"]
cook_categories = ["日本料理調理", "すし職人", "西洋料理調理", "中華料理調理", "給食調理"]
beauty_categories = ["美容師", "美容講師", "ネイリスト", "ヘアスタイリスト"]
engineer_categories = ["データベースエンジニア", "ネットワークエンジニア", "テストエンジニア", "セールスエンジニア", "プログラマー(Web・アプリケーション)", "システムエンジニア"]
art_categories = ["漫画家", "イラストレーター", "フォトグラファー", "コーディネーター", "デコレーター", "美術講師"]

    work_category_names.each do |work_category_name|
        if work_category_name == "デザイン"


            design_categories.each do |design_category|
                Category.create(
                    genre_name: design_category,
                    description: design_category,
                    work_category_name: work_category_name
                )
            end
        elsif work_category_name == "料理"
            cook_categories.each do |cook_category|
                Category.create(
                    genre_name: cook_category,
                    description: cook_category,
                    work_category_name: work_category_name
                )
            end
        elsif work_category_name == "美容"
            beauty_categories.each do |beauty_category|
                Category.create(
                    genre_name: beauty_category,
                    description: beauty_category,
                    work_category_name: work_category_name
                )
            end
        elsif work_category_name == "エンジニア"
            engineer_categories.each do |engineer_category|
                Category.create(
                    genre_name: engineer_category,
                    description: engineer_category,
                    work_category_name: work_category_name
                )
            end
        elsif work_category_name == "アート"
            art_categories.each do |art_category|
                Category.create(
                    genre_name: art_category,
                    description: art_category,
                    work_category_name: work_category_name
                )
            end
        end
    end

    company_ids = [*1..30]
    company_names = [*"1".."30"]
    company_ids = [*1..18,*1..12]
    array_number = 0

    company_ids.each do
        Company.create(
            name: company_names[array_number],
            company_name: company_names[array_number],
            category_id: category_ids[array_number]
        )
        array_number += 1
    end

    