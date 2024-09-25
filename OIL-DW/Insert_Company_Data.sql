-- Insert data into the Company table

INSERT INTO [dbo].[Company] (
    currency_exchange_journal_id,
    warehouse_id,
    expense_journal_id,
    company_details,
    name,
    id,
    partner_id,
    currency_id,
    active
) VALUES
(101, 'WH001', 'EXP001', 'Leading oil company with a vast network of distribution', 'OilCorp International', 1, 1, 92, 1),
(102, 'WH002', 'EXP002', 'Specialized in offshore drilling and exploration', 'Oceanic Petroleum', 2, 36, 141, 1),
(103, 'WH003', 'EXP003', 'A pioneer in renewable and non-renewable energy', 'Global Oil & Gas Ltd', 3, 37, 69, 1),
(104, 'WH004', 'EXP004', 'Known for advanced oil refining technologies', 'Advanced Energy Co.', 4, 38, 43, 1),
(105, 'WH005', 'EXP005', 'Top provider of lubricants and petrochemical products', 'PetroMax Supplies', 5, 583, 127, 1),
(106, 'WH006', 'EXP006', 'Specializes in oil transport and storage', 'TransOil Logistics', 6, 1624, 69, 1),
(107, 'WH007', 'EXP007', 'Major player in natural gas production', 'GasPower Industries', 7, 1625, 133, 1),
(108, 'WH008', 'EXP008', 'Focused on sustainable energy and oil production', 'EcoEnergy Petroleum', 8, 3825, 92, 1);

