-- TABLES recipe, ingredient, recipe_ingredient
-- RECIPE NAME | INGREDIENT NAME
-- HOW DO YOU THINK WE CAN DO THIS?
-- PLUGIN FOR INTELLIJ & SQL

-- concat
select recipe.name, ingredient.name
from recipe
join recipe_ingredients on recipe.id = recipe_ingredients.recipe_id
join ingredient on ingredient.id = recipe_ingredients.ingredient_id
group by recipe.name;