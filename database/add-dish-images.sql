-- =====================================================================
-- Optional patch: point existing seeded menu rows at the new dish
-- illustrations shipped in /images (dish-burger.svg, dish-chicken.svg,
-- dish-fries.svg, dish-drink.svg, dish-dessert.svg, dish-combo.svg)
-- instead of the "no-image-available.png" placeholder.
--
-- Safe to run on your existing database: it only updates the
-- food_photo / special_photo columns for the demo rows below by id.
-- It does not touch prices, names, descriptions, or any other table.
-- If you have already uploaded your own real food photos through the
-- admin panel, skip this file -- your uploaded photos are untouched
-- unless their food_id matches one of the rows below.
-- =====================================================================

UPDATE food_details SET food_photo = 'dish-burger.svg'  WHERE food_id IN (24, 25, 26, 27);
UPDATE food_details SET food_photo = 'dish-chicken.svg' WHERE food_id IN (28, 29);
UPDATE food_details SET food_photo = 'dish-fries.svg'   WHERE food_id IN (30, 31, 32);
UPDATE food_details SET food_photo = 'dish-drink.svg'   WHERE food_id IN (33, 34, 35);
UPDATE food_details SET food_photo = 'dish-dessert.svg' WHERE food_id IN (36, 37);

UPDATE specials SET special_photo = 'dish-combo.svg' WHERE special_id = 8;
