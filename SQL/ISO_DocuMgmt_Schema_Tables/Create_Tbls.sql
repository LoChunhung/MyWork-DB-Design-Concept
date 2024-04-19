/*ISO 文件建立、發行與儲存資料表格設計概念*/
-- ISO Document list ISO文件清單
-- 概念上要包括文件編號、文件名稱、文件版本、文件狀態、文件類型、文件建立日期、文件建立者、文件發行日期、文件發行單位、文件發行人、文件生效日期、文件儲存位置與備註欄位。*/
-- 另外可以適當的加入文件審核人、文件核准人、文件發布人、文件編號等欄位，這裡的人員商業意義上可以解釋為人員或部門。
-- 欄位中的scGuid與 doc_ParentscGuid是為了建立文件與文件之間的階層關係，表達ISO文件中特有的程序與表單之間的關係。
-- 欄位中的doc_Category 為描述第x階文件類型，用來區分文件類型，例如政策、程序、表單等。
-- 欄位中的dpc_Desc 為文件名稱，說明文件內容。
-- 欄位中的doc_Code為管理制度中編號所需，用來定義文件歷史版本與生命週期。
-- 欄位中的doc_Classification為文件等級分類，用來區分文件機密等級。
-- 欄位中的doc_Status 為文件狀態，用來說明文件狀態，例如生效、失效等。

-- Create table for ISO Document list DML語法, 以下為SQL Server T-SQL語法版本

CREATE TABLE [is_doc_pub_lst](
	[scGuid] [uniqueidentifier] NOT NULL,
	[doc_Category] [nvarchar](36) NOT NULL,
	[doc_Code] [nvarchar](50) NOT NULL,
	[doc_Desc] [nvarchar](512) NOT NULL,
	[doc_Submitter] [nvarchar](36) NULL,
    [doc_Reviewer] [nvarchar](36) NULL,
    [doc_Approver] [nvarchar](36) NULL,
    [doc_Publisher] [nvarchar](36) NULL,
	[dt_created] [datetime] NULL,
	[dt_modify] [datetime] NULL,
    [dt_publish] [datetime] NULL,
    [dt_effective] [datetime] NULL,
    [doc_Status] [nvarchar](36) NULL,    
	[doc_Classification] [nvarchar](36) NULL,
	[doc_ParentscGuid] [nvarchar](36) NULL,
 CONSTRAINT [PK_is_doc_pub_lst] PRIMARY KEY CLUSTERED 
(
	[scGuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [doc_Code] UNIQUE NONCLUSTERED 
(
	[docCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO