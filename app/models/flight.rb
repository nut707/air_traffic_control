class Flight < ApplicationRecord
  include AASM

  aasm :column => 'state' do
    state :hangar, initial: true
    state :on_runway, :in_flight

    event :to_runway do
      transitions from: :hangar, to: :on_runway
    end

    event :take_off do
      transitions from: :on_runway, to: :in_flight
    end

    event :park do
      transitions from: [:on_runway, :in_flight], to: :hangar
    end

  end


end
