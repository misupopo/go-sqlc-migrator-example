-- name: ListMaster :many
SELECT * FROM `example_product_master_basic_data`;
-- name: GetMaster :one
SELECT * FROM `example_product_master_basic_data`
WHERE Product = $1;

-- name: InsertMaster :exec
INSERT INTO example_product_master_basic_data (Product) VALUES ($1);
