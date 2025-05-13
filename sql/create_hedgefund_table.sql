CREATE TABLE HedgeFundAnalytics (
    fund_id INT IDENTITY PRIMARY KEY,
    ticker VARCHAR(10),
    strategy VARCHAR(50),
    manager VARCHAR(50),
    aum DECIMAL(18,2),
    purchase_price DECIMAL(18,2),
    current_price DECIMAL(18,2),
    NAV DECIMAL(18,2),
    return_pct FLOAT,
    volatility FLOAT,
    status VARCHAR(20),
    inception_date DATE,
    MonthYear VARCHAR(20)
);
