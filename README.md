# parent-trail
Parent Trail plugin item for Oracle Apex

# Introduction
A page item plugin for use with tables that have a parent_id (or similar) to display an item with its full path 
down through the structure ... and to and allow the user to click on elements to rise up through the hierarchy. 
This is just like breadcrumbs and really helps the user navigate in hierarchical tables

# Features
- Looks like and mirrors in most respects the behavior of the normal popup LOV
- But shows full 'clickable' path to a record
- Javascript API supported
- Very compact code, so not much loading overhead

# Want to see what it is like?
Go to https://apex.oracle.com/pls/apex/f?p=69472

# How to install the plugin
Download and install `ParentTrail Plugin.sql`
If you'd like the demo application itself, download and install `ParentTrail Demo.sql`. Please include the option of 
installing accompanying objects so that sample data is created for you

# How to use
Use like a normal popup LOV, but you need to tweak the definition of the query to return three columns. The first 
column “r” is the value that the item should have if this record is selected. The second and third columns are basically
a trail from the top of the hierarchy through to the current record. The second column “d” specifically picks out the 
values as it goes along, while the third column “s” picks out what needs to be displayed as it goes along. For a table
"locations" with id, parent_id, and location columns, here is a sample query:
```sql
select
    id                                   as r,
    sys_connect_by_path(id,       ' » ') as d,
    sys_connect_by_path(location, ' » ') as s
from 
    ptrail_locations
start with 
    parent_id is null
connect by 
    prior id = parent_id
order siblings by 
    location
```
The demo application shows more examples along with the type of data they produce.

# Future developments
Please let me know your requests for enhancements

# Changelog
1.1 Initial version


