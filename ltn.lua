if mods["LogisticTrainNetwork"] then
  local recipe = data.raw.recipe["logistic-train-stop"]
  recipe.category = "cube-fabricator-handcraft"

  local tech = data.raw.technology["logistic-train-network"]
  tech.prerequisites = {
    "cube-combinatorics",
    "cube-rail-signals",
  }
  tech.unit = tech_cost_unit("1b", 240)

  data.raw.item["logistic-train-stop"].order = "cube-" .. data.raw.item["logistic-train-stop"].order
  add_mystery_recipe(1, "logistic-train-stop", "train-stop")

  --LTN combinator.
  if mods["LTN_Combinator_Modernized"] then

    local recipe = data.raw.recipe["ltn-combinator"]
    recipe.category = "cube-fabricator-handcraft"
    recipe.ingredients = {
        {"constant-combinator", 1},
        {"cube-electronic-circuit", 1},
    }
    data.raw.item["ltn-combinator"].order = "cube-" .. data.raw.item["ltn-combinator"].order
    add_mystery_recipe(1, "ltn-combinator", "constant-combinator")
  end
end