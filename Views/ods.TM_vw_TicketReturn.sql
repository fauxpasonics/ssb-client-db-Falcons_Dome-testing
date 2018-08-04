SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





CREATE view [ods].[TM_vw_TicketReturn] as (

select *
from ods.tm_tkt (nolock)
where ticket_status = 'R'

union 

select *
from ods.tm_plans (nolock)
where ticket_status = 'R'

)






GO
