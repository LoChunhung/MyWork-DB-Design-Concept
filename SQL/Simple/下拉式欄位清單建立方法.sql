  /*�Ȥ�W�� ������� ���ѡA�L�k�ϥ�*/
  SELECT clt.[IdClient] AS [Pjt_IdClient] , cpy.BusinessName AS [Pjt_PartyA]
  FROM p_Client as clt 
  LEFT JOIN p_Company as [cpy]
  ON clt.IdCompany = cpy.IdCompany

  /*�Ȥ�W�� �U�Ԧ����*/
  SELECT clt.[IdClient] AS [value] , cpy.BusinessName AS [text]
  FROM p_Client as clt 
  LEFT JOIN p_Company as [cpy]
  ON clt.IdCompany = cpy.IdCompany