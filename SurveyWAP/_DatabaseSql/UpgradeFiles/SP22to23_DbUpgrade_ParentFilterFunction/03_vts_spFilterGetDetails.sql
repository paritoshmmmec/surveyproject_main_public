USE [SP_anon]
GO
/****** Object:  StoredProcedure [dbo].[vts_spFilterGetDetails]    Script Date: 06.04.2014 23:02:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Survey changes: copyright (c) 2010, Fryslan Webservices TM (http://survey.codeplex.com)	

	NSurvey - The web survey and form engine
	Copyright (c) 2004, 2005 Thomas Zumbrunn. (http://www.nsurvey.org)

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

/// <summary>
/// Retrieves all the infos of the given filter
/// </summary>
*/
ALTER PROCEDURE [dbo].[vts_spFilterGetDetails] @FilterID int AS
SELECT 
	FilterID,
	Description, 
	LogicalOperatorTypeID,
	ParentFilterID
 FROM vts_tbFilter 
 WHERE FilterID = @FilterID
