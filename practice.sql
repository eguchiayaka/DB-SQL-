-- 問1
-- 国名を全て抽出してください。
mysql> SELECT
    -> name
    -> FROM
    -> countries
    -> ;

-- 問2
-- ヨーロッパに属する国をすべて抽出してください。
mysql> SELECT
    -> code,
    -> name,
    -> continent,
    -> region,
    -> surface_area
    -> FROM
    -> countries
    -> WHERE
    -> continent = "Europe"
    -> ;

-- 問3
-- ヨーロッパ以外に属する国をすべて抽出してください。
mysql> SELECT
    -> code,
    -> name,
    -> continent,
    -> region,
    -> surface_area
    -> FROM
    -> countries
    -> WHERE
    -> continent != "Europe"
    -> ;

-- 問4
-- 人口が10万人以上の国をすべて抽出してください。
mysql> SELECT
    -> code,
    -> name,
    -> continent,
    -> region,
    -> surface_area,
    -> indep_year,
    -> population
    -> FROM
    -> countries
    -> WHERE
    -> population >= 100000
    -> ;


-- 問5
-- 平均寿命が56歳から76歳の国をすべて抽出してください。
mysql> SELECT
    -> code,
    -> name,
    -> continent,
    -> region,
    -> surface_area,
    -> indep_year,
    -> life_expectancy
    -> FROM
    -> countries
    -> WHERE
    -> life_expectancy >= 56 AND
    -> life_expectancy < 76
    -> ;

-- 問6
-- 国コードがNLB,ALB,DZAのもの市区町村をすべて抽出してください。
mysql> SELECT
    -> id,
    -> name,
    -> country_code,
    -> district,
    -> population
    -> FROM
    -> cities
    -> WHERE
    -> country_code = NLB  OR
    -> country_code = ALB  OR
    -> country_code = DZA
    -> ;

-- 問7
-- 独立独立記念日がない国をすべて抽出してください。
mysql> SELECT
    -> code,
    -> name,
    -> continent,
    -> region,
    -> surface_area,
    -> indep_year
    -> FROM
    -> countries
    -> WHERE
    -> indep_year = NULL
    -> ;

-- 問8
-- 独立独立記念日がある国をすべて抽出してください。
mysql> SELECT
    -> code,
    -> name,
    -> continent,
    -> region,
    -> surface_area,
    -> indep_year
    -> FROM
    -> countries
    -> WHERE
    -> indep_year != NULL
    -> ;

-- 問9
-- 名前の末尾が「ia」で終わる国を抽出してください。
mysql> SELECT
    -> code,
    -> name,
    -> continent,
    -> region,
    -> surface_area
    -> FROM
    -> countries
    -> WHERE
    -> name LIKE "%ia"
    -> ;

-- 問10
-- 名前の中に「st」が含まれる国を抽出してください。
mysql> SELECT
    -> code,
    -> name,
    -> continent,
    -> region,
    -> surface_area
    -> FROM
    -> countries
    -> WHERE
    -> name LIKE "%st%"
    -> ;

-- 問11
-- 名前が「an」で始まる国を抽出してください。
mysql> SELECT
    -> code,
    -> name,
    -> continent,
    -> region,
    -> surface_area,
    -> indep_year
    -> FROM
    -> countries
    -> WHERE
    -> name LIKE "an%"
    -> ;

-- 問12
-- 全国の中から独立記念日が1990年より前または人口が10万人より多い国を全て抽出してください。
mysql> SELECT
    -> code,
    -> name,
    -> continent,
    -> region,
    -> surface_area,
    -> indep_year
    -> FROM
    -> countries
    -> WHERE
    -> indep_year <= 1990 OR
    -> population >= 100000
    -> ;

-- 問13
-- コードがDZAもしくはALBかつ独立記念日が1990年より前の国を全て抽出してください。
mysql> SELECT
    -> code,
    -> name,
    -> continent,
    -> region,
    -> surface_area,
    -> indep_year
    -> FROM
    -> countries
    -> WHERE
    -> (code = "DZA" OR code = "ALB") AND
    -> indep_year <= 1990 
    -> ;

-- 問14
-- 全ての地方をグループ化せずに表示してください。
mysql> SELECT
    -> region
    -> FROM
    -> countries
    -> ;

-- 問15
-- 国名と人口を以下のように表示させてください。シングルクォートに注意してください。
-- 「Arubaの人口は103000人です」
mysql> SELECT
    -> CONCAT(name,"の人口は",population,"人です")
    -> FROM
    -> countries
    -> ;


-- 問16
-- 平均寿命が短い順に国名を表示させてください。ただしNULLは表示させないでください。
mysql> SELECT
    -> name,
    -> life_expectancy
    -> FROM
    -> countries
    -> WHERE
    -> life_expectancy IS NOT NULL
    -> ORDER BY
    -> life_expectancy ASC
    -> ;


-- 問17
-- 平均寿命が長い順に国名を表示させてください。ただしNULLは表示させないでください。
mysql> SELECT
    -> name,
    -> life_expectancy
    -> FROM
    -> countries
    -> WHERE
    -> life_expectancy IS NOT NULL
    -> ORDER BY
    -> life_expectancy DESC
    -> ;

-- 問18
-- 平均寿命が長い順、独立記念日が新しい順に国を表示させてください。
mysql> SELECT
    -> name,
    -> life_expectancy,
    -> indep_year
    -> FROM
    -> countries
    -> ORDER BY
    -> life_expectancy DESC,
    -> indep_year ASC
    -> ;

-- 問19
-- 全ての国の国コードの一文字目と国名を表示させてください。
mysql> SELECT
    -> SUBSTRING(code, 1,1),
    -> name
     -> FROM
    -> countries
    -> ;

-- 問20
-- 国名が長いものから順に国名と国名の長さを出力してください。
mysql> SELECT
    -> name,
    -> LENGTH(name)
    -> FROM
    -> countries
    -> ORDER BY
    -> LENGTH(name) DESC
    -> ;

-- 問21
-- 全ての地方の平均寿命、平均人口を表示してください。(NULLも表示)
mysql> SELECT
    -> region,
    -> life_expectancy,
    -> population
    -> FROM
    -> countries
    -> ;

-- 問22
-- 全ての地方の最長寿命、最大人口を表示してください。(NULLも表示)
mysql> SELECT
    -> MAX(life_expectancy) 
    -> MAX(population)
    -> FROM
    -> countries
    -> WHERE
    -> region
    -> ;

-- 問23
-- アジア大陸の中で最小の表面積を表示してください
mysql> SELECT
    -> MIN(surface_area) 
    -> FROM
    -> countries
    -> WHERE
    -> continent = "Asia"
    -> ;

-- 問24
-- アジア大陸の表面積の合計を表示してください。
mysql> SELECT
    -> SUM(surface_area) 
    -> FROM
    -> countries
    -> WHERE
    -> continent = "Asia"
    -> ;

-- 問25
-- 全ての国と言語を表示してください。一つの国に複数言語があると思いますので同じ国名を言語数だけ出力してください。
mysql> SELECT 
    -> name,
    -> language
    -> FROM 
    -> countries 
    -> INNER JOIN 
    -> countrylanguages ON code = country_code
    -> ;

-- 問26
-- 全ての国と言語と市区町村を表示してください。
mysql> SELECT 
    -> c.name AS name,
    -> ci.district,
    -> cl.language
    -> FROM 
    -> countries c
    -> LEFT JOIN 
    -> cities ci ON c.code = ci.country_code
    -> LEFT JOIN 
    -> countrylanguages cl ON c.code = cl.country_code
    -> ;

-- 問27
-- 全ての有名人を出力してください。左側外部結合を使用して国名なし（country_codeがNULL）も表示してください。
mysql> SELECT 
    -> celebrities.name AS name,
    -> countries.name AS name
    -> FROM 
    -> celebrities
    -> LEFT JOIN 
    -> countries ON celebrities.country_code = countries.code
    -> ;


-- 問28
-- 全ての有名人の名前,国名、第一言語を出力してください。
mysql> SELECT 
    -> celebrities.name AS name,
    -> countries.name AS name,
    -> (SELECT language FROM countrylanguages WHERE country_code = countries.code ORDER BY percentage DESC LIMIT 1) AS language
    -> FROM 
    -> celebrities
    -> JOIN 
    -> countries ON celebrities.country_code = countries.code;


-- 問29
-- 全ての有名人の名前と国名をに出力してください。 ただしテーブル結合せずサブクエリを使用してください。
mysql> SELECT 
    -> name,
    -> SELECT name FROM countries WHERE code = celebrities.country_code) AS 国名
    -> FROM 
    -> celebrities;

-- 問30
-- 最年長が50歳以上かつ最年少が30歳以下の国を表示させてください。
mysql> SELECT
    -> country_code,
    -> MAX(age),
    -> MIN(age)
    -> FROM
    -> celebrities
    -> GROUP BY
    -> country_code
    -> HAVING
    -> MAX(age) >= 50 AND MIN(age) <= 30;

-- 問31
-- 1991年生まれと、1981年生まれの有名人が何人いるか調べてください。ただし、日付関数は使用せず、UNION句を使用してください。
mysql> SELECT 
    -> 1991 AS 誕生年, COUNT(*) AS 人数
    -> FROM 
    -> celebrities 
    -> WHERE 
    -> birth LIKE "%1991%"
    -> UNION
    -> SELECT 
    -> 1981 AS 誕生年, COUNT(*) AS 人数
    -> FROM 
    -> celebrities 
    -> WHERE 
    -> birth LIKE "%1981%"
    ;

-- 問32
-- 有名人の出身国の平均年齢を高い方から順に表示してください。ただし、FROM句はcountriesテーブルとしてください。
mysql> SELECT 
    -> c.name AS 出身国,
    -> VG(ce.age) AS 平均年齢
    -> FROM 
    -> countries
    ->LEFT JOIN
    ->celebrities ce ON c.code = ce.country_code
    ->GROUP BY
    ->c.name
    -> ORDER BY
    -> life_expectancy DESC;