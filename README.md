# Project Description.
The project is for a company to improve its information management.
## Technologies Used.
We used PostgreSQL for the database, and we also used software for diagrams such as DrawSQL and Draw.io.
## Database Engine Used.
PgAdmin
## Explanation of the normalization process.
Each table has duplicate records; these duplicate records and some misspelled names must be removed and corrected to their correct forms. This would allow us to comply with the first normal form, which states that each cell contains a single piece of data and that there are no attributes that allow multiple values or groups.

Tables such as ProductName, Quantity, and UnitPrice must be separated from Category; Category must be in a completely different table to comply with the second normal form. The same applies to `movementDate` and `purchaseOrder`, which must be separated from `movementType` into another table to comply with the first, second, and third forms of normalization. Additionally, a cell named `warehouse_city` was removed because it contained the same information and data as `suppliercity`; this cell was renamed to `city`.

A new table called “movements” was added to record incoming and outgoing movements, and more
Ronaldo Rodriguez de Lima
Clan Magdaleena



