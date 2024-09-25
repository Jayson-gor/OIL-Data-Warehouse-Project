CREATE INDEX idx_Accounts_Dim ON Accounts_Dim (CompanyID, CurrencyID, ProductID, JournalID, Date_Move, State);
CREATE INDEX idx_date_dim ON date_dim (full_date);
