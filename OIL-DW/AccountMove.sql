CREATE TABLE AccountMove (
    is_move_sent BIT, -- Yes/No in MS Access
    create_date DATETIME, -- Date/Time in MS Access
    write_date DATETIME, -- Date/Time in MS Access
    extract_status_code NVARCHAR(255), -- Short Text in MS Access
    extract_remote_id INT, -- Number in MS Access
    extract_attachment_id INT, -- Number in MS Access
    stock_move_id INT, -- Number in MS Access
    transfer_model_id INT, -- Number in MS Access
    tax_closing_end_date DATETIME, -- Date/Time in MS Access
    tax_report_control_error NVARCHAR(255), -- Short Text in MS Access
    campaign_id INT, -- Number in MS Access
    source_id INT, -- Number in MS Access
    medium_id NVARCHAR(255), -- Short Text in MS Access
    team_id INT, -- Number in MS Access
    asset_id INT, -- Number in MS Access
    asset_number_days INT, -- Number in MS Access
    asset_depreciation_beginning_date DATETIME, -- Date/Time in MS Access
    depreciation_value DECIMAL(18, 2), -- Number in MS Access
    asset_value_change DECIMAL(18, 2), -- Number in MS Access
    suspense_statement_line_id INT, -- Number in MS Access
    force_release_to_pay NVARCHAR(255), -- Short Text in MS Access
    auto_invoice_id INT, -- Number in MS Access
    auto_generated BIT, -- Yes/No in MS Access
    exchange_rate DECIMAL(18, 6), -- Number in MS Access
    approver_id INT, -- Number in MS Access
    amount_total DECIMAL(18, 2), -- Number in MS Access
    amount_untaxed_signed DECIMAL(18, 2), -- Number in MS Access
    amount_tax_signed DECIMAL(18, 2), -- Number in MS Access
    amount_total_signed DECIMAL(18, 2), -- Number in MS Access
    amount_total_in_currency_signed DECIMAL(18, 2), -- Number in MS Access
    amount_residual_signed DECIMAL(18, 2), -- Number in MS Access
    quick_edit_total_amount DECIMAL(18, 2), -- Number in MS Access
    is_storno BIT, -- Yes/No in MS Access
    always_tax_exigible BIT, -- Yes/No in MS Access
    to_check NVARCHAR(255), -- Short Text in MS Access
    posted_before NVARCHAR(255), -- Short Text in MS Access
    write_uid INT, -- Number in MS Access
    date NVARCHAR(255), -- Short Text in MS Access
    auto_post_until DATETIME, -- Date/Time in MS Access
    invoice_date DATETIME, -- Date/Time in MS Access
    invoice_date_due DATETIME, -- Date/Time in MS Access
    amount_untaxed DECIMAL(18, 2), -- Number in MS Access
    amount_tax DECIMAL(18, 2), -- Number in MS Access
    amount_residual DECIMAL(18, 2), -- Number in MS Access
    auto_post NVARCHAR(255), -- Short Text in MS Access
    creator_id INT, -- Number in MS Access
    debit_origin_id NVARCHAR(255), -- Short Text in MS Access
    declaration NVARCHAR(255), -- Short Text in MS Access
    company_name_id INT, -- Number in MS Access
    cu_invoice_no NVARCHAR(255), -- Short Text in MS Access
    release_to_pay_manual NVARCHAR(255), -- Short Text in MS Access
    release_to_pay NVARCHAR(255), -- Short Text in MS Access
    extract_state NVARCHAR(255), -- Short Text in MS Access
    edi_state NVARCHAR(255), -- Short Text in MS Access
    payment_state_before_switch NVARCHAR(255), -- Short Text in MS Access
    narration NVARCHAR(255), -- Short Text in MS Access
    invoice_origin NVARCHAR(255), -- Short Text in MS Access
    invoice_partner_display_name NVARCHAR(255), -- Short Text in MS Access
    invoice_source_email NVARCHAR(255), -- Short Text in MS Access
    payment_state NVARCHAR(255), -- Short Text in MS Access
    qr_code_method NVARCHAR(255), -- Short Text in MS Access
    payment_reference NVARCHAR(255), -- Short Text in MS Access
    inalterable_hash NVARCHAR(255), -- Short Text in MS Access
    bank_id INT, -- Number in MS Access
    payment_term_id NVARCHAR(255), -- Short Text in MS Access
    sequence_prefix NVARCHAR(255), -- Short Text in MS Access
    access_token NVARCHAR(255), -- Short Text in MS Access
    name NVARCHAR(255), -- Short Text in MS Access
    ref NVARCHAR(255), -- Short Text in MS Access
    state NVARCHAR(255), -- Short Text in MS Access
    move_type NVARCHAR(255), -- Short Text in MS Access
    id INT PRIMARY KEY, -- Number in MS Access
    sequence_number INT, -- Number in MS Access
    message_main_attachment_id NVARCHAR(255), -- Short Text in MS Access
    journal_id INT, -- Number in MS Access
    company_id INT, -- Number in MS Access
    payment_id INT, -- Number in MS Access
    statement_line_id INT, -- Number in MS Access
    tax_cash_basis_rec_id NVARCHAR(255), -- Short Text in MS Access
    tax_cash_basis_origin_move_id NVARCHAR(255), -- Short Text in MS Access
    auto_post_origin_id NVARCHAR(255), -- Short Text in MS Access
    secure_sequence_number NVARCHAR(255), -- Short Text in MS Access
    invoice_payment_term_id NVARCHAR(255), -- Short Text in MS Access
    partner_id INT, -- Number in MS Access
    commercial_partner_id NVARCHAR(255), -- Short Text in MS Access
    partner_shipping_id NVARCHAR(255), -- Short Text in MS Access
    partner_bank_id NVARCHAR(255), -- Short Text in MS Access
    fiscal_position_id INT, -- Number in MS Access
    currency_id INT, -- Number in MS Access
    reversed_entry_id NVARCHAR(255), -- Short Text in MS Access
    invoice_user_id INT, -- Number in MS Access
    invoice_incoterm_id NVARCHAR(255), -- Short Text in MS Access
    invoice_cash_rounding_id INT, -- Number in MS Access
    create_uid INT -- Number in MS Access
);
