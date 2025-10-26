CREATE TABLE IF NOT EXISTS players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    license VARCHAR(64) NOT NULL UNIQUE,
    name VARCHAR(64) DEFAULT 'Unknown',
    tmg_id INT NOT NULL UNIQUE,
    cash INT DEFAULT 0,
    bank INT DEFAULT 5000,
    job VARCHAR(64) DEFAULT 'unemployed',
    job_grade INT DEFAULT 0,
    position LONGTEXT,
    inventory LONGTEXT,
    metadata LONGTEXT,
    last_seen TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS player_vehicles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner_license VARCHAR(64) NOT NULL,
    plate VARCHAR(16) NOT NULL UNIQUE,
    model VARCHAR(64) NOT NULL,
    stored BOOLEAN DEFAULT TRUE,
    garage VARCHAR(64) DEFAULT 'A',
    mods LONGTEXT,
    FOREIGN KEY (owner_license) REFERENCES players(license) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS player_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    license VARCHAR(64) NOT NULL,
    action VARCHAR(128),
    details TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
