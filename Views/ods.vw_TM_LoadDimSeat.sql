SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [ods].[vw_TM_LoadDimSeat] as (

	select *
	, HASHBYTES('sha2_256', ISNULL(RTRIM(CONVERT(varchar(10),DefaultClass)),'DBNULL_INT') + ISNULL(RTRIM(DefaultPriceCode),'DBNULL_TEXT') + ISNULL(RTRIM(CONVERT(varchar(10),DimArenaId)),'DBNULL_INT') + ISNULL(RTRIM(ManifestId),'DBNULL_TEXT') + ISNULL(RTRIM(RowName),'DBNULL_TEXT') + ISNULL(RTRIM(CONVERT(varchar(10),RowSort)),'DBNULL_INT') + ISNULL(RTRIM(CONVERT(varchar(10),Seat)),'DBNULL_INT') + ISNULL(RTRIM(SectionDesc),'DBNULL_TEXT') + ISNULL(RTRIM(SectionName),'DBNULL_TEXT') + ISNULL(RTRIM(CONVERT(varchar(10),SectionSort)),'DBNULL_INT') + ISNULL(RTRIM(SourceSystem),'DBNULL_TEXT') + ISNULL(RTRIM(SSID),'DBNULL_TEXT') + ISNULL(RTRIM(CONVERT(varchar(10),SSID_manifest_id)),'DBNULL_INT') + ISNULL(RTRIM(CONVERT(varchar(10),SSID_row_id)),'DBNULL_INT') + ISNULL(RTRIM(CONVERT(varchar(10),SSID_seat)),'DBNULL_INT') + ISNULL(RTRIM(CONVERT(varchar(10),SSID_section_id)),'DBNULL_INT') + ISNULL(RTRIM(SSUpdatedBy),'DBNULL_TEXT') + ISNULL(RTRIM(CONVERT(varchar(25),SSUpdatedDate)),'DBNULL_DATETIME')) DeltaHashKey
	from (
		select 
		da.DimArenaId
		, ms.manifest_id ManifestId
		, ms.section_name SectionName
		, ms.section_desc SectionDesc
		, 0 SectionSort
		, ms.row_name RowName
		, 0 RowSort
		, sl.Seat Seat
		, ms.default_class DefaultClass
		, ms.def_price_code DefaultPriceCode
		, cast(null as nvarchar(255)) SSCreatedBy
		, cast(null as nvarchar(255)) SSUpdatedBy
		, cast(null as datetime) SSCreatedDate
		, cast(null as datetime) SSUpdatedDate
		, null SSID
		, ms.manifest_id SSID_manifest_id
		, ms.section_id SSID_section_id
		, ms.row_id SSID_row_id
		, sl.Seat SSID_seat
		, CAST((SELECT etl.fnGetClientSetting('TM-SourceStyem')) AS NVARCHAR(255)) SourceSystem

		FROM ods.TM_ManifestSeat ms
		INNER JOIN dbo.DimArena da on ms.arena_id = da.SSID AND da.SourceSystem = (SELECT etl.fnGetClientSetting('TM-SourceStyem'))
		INNER LOOP JOIN dbo.Lkp_SeatList sl on sl.seat >= ms.seat_num and sl.Seat < (ms.seat_num + ms.num_seats)

	) a

) 








GO
