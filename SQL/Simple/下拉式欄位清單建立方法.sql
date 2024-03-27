  /*客戶名稱 延伸欄位 失敗，無法使用*/
  SELECT clt.[IdClient] AS [Pjt_IdClient] , cpy.BusinessName AS [Pjt_PartyA]
  FROM p_Client as clt 
  LEFT JOIN p_Company as [cpy]
  ON clt.IdCompany = cpy.IdCompany

  /*客戶名稱 下拉式選單*/
  SELECT clt.[IdClient] AS [value] , cpy.BusinessName AS [text]
  FROM p_Client as clt 
  LEFT JOIN p_Company as [cpy]
  ON clt.IdCompany = cpy.IdCompany