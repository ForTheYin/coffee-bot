class BrewCoffeeJob < ApplicationJob
  queue_as :default

  def perform(*args)
    machine = Machine.first
    MachineAction.create!(machine: machine, action: 'brew')
  end
end
