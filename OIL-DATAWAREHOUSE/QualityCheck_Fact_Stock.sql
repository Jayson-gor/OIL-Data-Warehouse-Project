SELECT 
    ds.StockKey,
    d.date_key AS DateKey,
    pd.ProductKey,
    cd.company_key AS CompanyKey,
    uom.UOMKey,
    ds.QuantityDone,
    ds.ReservedUOMQty,
    ds.ReservedQty,
    ds.InventoryQuantity,
    ds.InventoryDiffQuantity,
    ds.PriceUnit,
    ds.Date_Moveline AS DATE,
    ds.IsOil,
    ds.Origin,
    ds.State,
    COUNT(*) AS Occurrences  -- Count the number of occurrences for each combination
FROM 
    dim_Stock ds
JOIN 
    Product_Dim pd ON ds.ProductID = pd.ProductID
JOIN 
    Company_dim cd ON ds.CompanyID = cd.id
JOIN 
    dim_UOM uom ON ds.ProductUOM = uom.UomID
JOIN 
    date_dim d ON CONVERT(DATE, ds.Date_Moveline) = d.full_date
WHERE 
    ds.Date_Moveline >= '2023-01-01 00:00:00.000'  -- Adjusted filter to match the date format
    AND ds.IsOil = 1  -- Filter only oil products
    AND ds.State = 'done'  -- Only include completed stock moves
    AND CHARINDEX('S', ds.Origin) > 0  -- Include only stock moves that contain 'S' in the origin
GROUP BY 
    ds.StockKey,
    d.date_key,
    pd.ProductKey,
    cd.company_key,
    uom.UOMKey,
    ds.QuantityDone,
    ds.ReservedUOMQty,
    ds.ReservedQty,
    ds.InventoryQuantity,
    ds.InventoryDiffQuantity,
    ds.PriceUnit,
    ds.Date_Moveline,
    ds.IsOil,
    ds.Origin,
    ds.State
HAVING COUNT(*) > 1;  -- Show only duplicate rows
