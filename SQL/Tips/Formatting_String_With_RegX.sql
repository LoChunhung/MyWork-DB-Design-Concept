--情境描述: 當遇到特定類型字串，需要辨識後，並進行格式化處理，再匯入指定欄位。
--可行的方法(1): 以python或其它程式語言處理 
--可行的方法(2): 在Microsoft SQL Server中使用正則表達式 PATINDEX() 與 STUFF()函數完成
--參考網址: 
    DECLARE @string NVARCHAR(100)
    SET @string = 'Hello, world!'
    
    -- Find the position of the word 'world' in the string
    DECLARE @position INT
    SET @position = PATINDEX('%world%', @string)
    
    -- Replace 'world' with 'SQL Server'
    SET @string = STUFF(@string, @position, 5, 'SQL Server')
    
    SELECT @string
