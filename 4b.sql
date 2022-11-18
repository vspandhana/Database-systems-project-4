INSERT INTO inventory_mngment.item
VALUES ('Itm-105','Milk','Dairy Item');

insert into inventory_mngment.supplier
values ('SP-373','SupplierJKL');


update  inventory_mngment.store
set Contact_Number=2697423
where Store_ID='S-124';

update  inventory_mngment.store_supplier
set item_count =57
where SUPPLY_ID='SUPPLY-801';

DELETE FROM `supplier` WHERE supplier_ID='SP-373';

SELECT * FROM `store_inventory`;

SELECT A.*, B.* FROM store A left join store_supplier B
ON A.Store_ID=B.STORE_ID;

SELECT A.*, B.* FROM item A left join store_inventory B
ON A.item_id=B.Item_ID;


SELECT Item_ID,sum(Item_left) FROM `store_inventory` group by item_ID;

SELECT A.item_ID, A.Store_ID, case when Item_left<20 then 'Low Stock' else Null end as STOCK_ALert FROM store_inventory A;

SELECT Supplier_ID, count(*) FROM store_supplier
group by SUPPLIER_ID;

SELECT A.*, B.SUPPLY_DATE, B.ITEM_COUNT, C.Supplier_Name FROM store A inner join store_supplier B
ON A.Store_ID=B.STORE_ID
inner join supplier C
ON B.SUPPLIER_ID=C.Supplier_ID;

