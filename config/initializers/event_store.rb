Rails.application.config.event_store.tap do |es|
  es.subscribe(Denormalizers::OrderSubmitted, to: [Events::OrderSubmitted])
  es.subscribe(Denormalizers::OrderExpired, to: [Events::OrderExpired])
  es.subscribe(Denormalizers::ItemAddedToBasket, to: [Events::ItemAddedToBasket])
  es.subscribe(Denormalizers::ItemRemovedFromBasket, to: [Events::ItemRemovedFromBasket])
end
