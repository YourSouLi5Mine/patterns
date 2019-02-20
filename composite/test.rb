require 'active_support'

autoload :Task, './composite/task.rb'
autoload :CompositeTask, './composite/composite_task.rb'
autoload :MakeBatterTask, './composite/make_batter_task.rb'
autoload :MakeCakeTask, './composite/make_cake_task.rb'
autoload :AddDryIngredientsTask, './composite/add_dry_ingredients_task'
autoload :MixTask, './composite/mix_task'

puts MakeCakeTask.new.get_time_required
