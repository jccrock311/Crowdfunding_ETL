DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;

CREATE TABLE contacts (
	contact_id INTEGER NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
		CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id")
);

CREATE TABLE category (
	category_id VARCHAR(50) NOT NULL,
	category VARCHAR(50) NOT NULL,
		CONSTRAINT "pk_category" PRIMARY KEY ("category_id")
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(50) NOT NULL,
	subcategory VARCHAR(50) NOT NULL,
		CONSTRAINT "pk_subcategory" PRIMARY KEY ("subcategory_id")
);

CREATE TABLE campaign (
	cf_id INTEGER NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR NOT NULL,
	description TEXT NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR NOT NULL,
    subcategory_id VARCHAR NOT NULL,
    	CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id"),
    	FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id"),
    	FOREIGN KEY ("category_id") REFERENCES "category" ("category_id"),
    	FOREIGN KEY ("subcategory_id") REFERENCES "subcategory" ("subcategory_id")
);
    