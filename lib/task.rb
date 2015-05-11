class Task < ActiveRecord::Base
  belongs_to(:list)

  scope(:not_done, -> do
    where({:done => false})
  end)
end


# list = List.new({:name => 'Epicodus Stuff'})
# task = list.tasks().new({:discription => 'learn Active Record'})
# list.save()
# task.list()
