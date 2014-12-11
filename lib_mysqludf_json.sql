/* 
	lib_mysqludf_json - a library of mysql udfs to map data to JSON format
	Copyright (C) 2007  Roland Bouman 
	web: http://www.xcdsql.org/MySQL/UDF/ 
	email: mysqludfs@gmail.com
	
	This library is free software; you can redistribute it and/or
	modify it under the terms of the GNU Lesser General Public
	License as published by the Free Software Foundation; either
	version 2.1 of the License, or (at your option) any later version.
	
	This library is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
	Lesser General Public License for more details.
	
	You should have received a copy of the GNU Lesser General Public
	License along with this library; if not, write to the Free Software
	Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
*/

DROP FUNCTION IF EXISTS lib_mysqludf_json_info;
DROP FUNCTION IF EXISTS json_array;
DROP FUNCTION IF EXISTS json_members;
DROP FUNCTION IF EXISTS json_object;
DROP FUNCTION IF EXISTS json_values;

CREATE FUNCTION lib_mysqludf_json_info RETURNS STRING SONAME 'lib_mysqludf_json.so';
CREATE FUNCTION json_array RETURNS STRING SONAME 'lib_mysqludf_json.so';
CREATE FUNCTION json_members RETURNS STRING SONAME 'lib_mysqludf_json.so';
CREATE FUNCTION json_object RETURNS STRING SONAME 'lib_mysqludf_json.so';
CREATE FUNCTION json_values RETURNS STRING SONAME 'lib_mysqludf_json.so';
