use [OIL-DW];


CREATE TABLE Move_Line (
    ID1 INT, -- AutoNumber in MS Access
    parent_state NVARCHAR(255), -- Short Text in MS Access
    can_be_paid NVARCHAR(255), -- Short Text in MS Access
    id INT PRIMARY KEY, -- Number in MS Access
    move_id INT, -- Number in MS Access
    journal_id INT, -- Number in MS Access
    company_id INT, -- Number in MS Access
    company_currency_id INT, -- Number in MS Access
    sequence INT, -- Number in MS Access
    account_id INT, -- Number in MS Access
    currency_id INT, -- Number in MS Access
    partner_id NVARCHAR(255), -- Short Text in MS Access
    reconcile_model_id NVARCHAR(255), -- Short Text in MS Access
    payment_id NVARCHAR(255), -- Short Text in MS Access
    statement_line_id NVARCHAR(255), -- Short Text in MS Access
    statement_id NVARCHAR(255), -- Short Text in MS Access
    group_tax_id NVARCHAR(255), -- Short Text in MS Access
    tax_line_id NVARCHAR(255), -- Short Text in MS Access
    tax_group_id NVARCHAR(255), -- Short Text in MS Access
    tax_repartition_line_id NVARCHAR(255), -- Short Text in MS Access
    full_reconcile_id NVARCHAR(255), -- Short Text in MS Access
    account_root_id INT, -- Number in MS Access
    product_id INT, -- Number in MS Access
    product_uom_id INT, -- Number in MS Access
    create_uid INT, -- Number in MS Access
    write_uid INT, -- Number in MS Access
    date NVARCHAR(255), -- Short Text in MS Access
    date_maturity DATETIME, -- Date/Time in MS Access
    discount_date DATETIME, -- Date/Time in MS Access
    analytic_distribution NVARCHAR(255), -- Short Text in MS Access
    debit DECIMAL(18, 2), -- Number in MS Access
    credit DECIMAL(18, 2), -- Number in MS Access
    balance DECIMAL(18, 2), -- Number in MS Access
    amount_currency DECIMAL(18, 2), -- Number in MS Access
    tax_base_amount NVARCHAR(255), -- Short Text in MS Access
    amount_residual DECIMAL(18, 2), -- Number in MS Access
    amount_residual_currency DECIMAL(18, 2), -- Number in MS Access
    quantity DECIMAL(18, 2), -- Number in MS Access
    price_unit DECIMAL(18, 2), -- Number in MS Access
    price_subtotal DECIMAL(18, 2), -- Number in MS Access
    price_total DECIMAL(18, 2), -- Number in MS Access
    discount DECIMAL(18, 2), -- Number in MS Access
    discount_amount_currency NVARCHAR(255), -- Short Text in MS Access
    discount_balance NVARCHAR(255), -- Short Text in MS Access
    tax_tag_invert BIT, -- Yes/No in MS Access
    reconciled BIT, -- Yes/No in MS Access
    blocked BIT, -- Yes/No in MS Access
    create_date DATETIME, -- Date/Time in MS Access
    write_date DATETIME, -- Date/Time in MS Access
    discount_percentage NVARCHAR(255), -- Short Text in MS Access
    expense_id NVARCHAR(255), -- Short Text in MS Access
    purchase_line_id NVARCHAR(255), -- Short Text in MS Access
    expected_pay_date NVARCHAR(255), -- Short Text in MS Access
    is_downpayment BIT, -- Yes/No in MS Access
    followup_line_id NVARCHAR(255), -- Short Text in MS Access
    last_followup_date DATETIME, -- Date/Time in MS Access
    next_action_date DATETIME, -- Date/Time in MS Access
    is_landed_costs_line BIT, -- Yes/No in MS Access
    hsc_code_id NVARCHAR(255), -- Short Text in MS Access
    is_observed BIT, -- Yes/No in MS Access
    qty_observed NVARCHAR(255), -- Short Text in MS Access
    qty_at_20 NVARCHAR(255), -- Short Text in MS Access
    date_month INT, -- Number in MS Access
    date_year INT, -- Number in MS Access
    vehicle_id NVARCHAR(255), -- Short Text in MS Access
    tax_calculation_drc_invoice BIT, -- Yes/No in MS Access
    amount_untaxed_drc NVARCHAR(255), -- Short Text in MS Access
    display_type NVARCHAR(255), -- Short Text in MS Access
    matching_number NVARCHAR(255), -- Short Text in MS Access
    tax_audit NVARCHAR(255), -- Short Text in MS Access
    name NVARCHAR(255), -- Short Text in MS Access
    ref NVARCHAR(255), -- Short Text in MS Access
    move_name NVARCHAR(255) -- Short Text in MS Access
);
