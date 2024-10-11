DROP TABLE IF EXISTS recipe;
DROP TABLE IF EXISTS ingredient;
DROP TABLE IF EXISTS recipe_ingredients;


CREATE TABLE recipe (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

CREATE TABLE ingredient (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE recipe_ingredients (
    recipe_id INTEGER,
    ingredient_id INTEGER,
    PRIMARY KEY (recipe_id, ingredient_id),
    FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

INSERT INTO recipe ( name, description) VALUES
('Spaghetti Bolognese', 'A classic Italian pasta dish with a rich meat sauce.'),
('Chicken Curry', 'A spicy and flavorful chicken curry.'),
('Vegetable Stir Fry', 'A quick and healthy vegetable stir fry.');

INSERT INTO ingredient ( name ) VALUES
('Spaghetti'),
('Ground Beef'),
('Tomato Sauce'),
('Chicken Breast'),
('Curry Powder'),
('Mixed Vegetables'),
('Soy Sauce');

INSERT INTO recipe_ingredients (recipe_id, ingredient_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 6),
(3, 7);
