SELECT  B.CATEGORY
        , SUM(SALES) AS TOTAL_SALES
FROM    BOOK B
        , BOOK_SALES BS
WHERE   B.BOOK_ID = BS.BOOK_ID
  AND   BS.SALES_DATE BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY B.CATEGORY
ORDER BY B.CATEGORY ASC