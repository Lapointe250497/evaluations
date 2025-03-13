fun min-ticket-price(rooms :: Number, days :: Number) -> Number:
  doc: "Calculate the minimum ticket price to cover yearly costs."

  # Nombre de projections par jour
  screenings-per-day = 4
  
  # Nombre de sièges par salle
  seats-per-room = 150
  
  # Nombre de billets vendus par an
  total-tickets = rooms * screenings-per-day * seats-per-room * days

  # Coût des employés
  num-cashiers = rooms * 2
  num-supervisors = ceiling(num-cashiers / 10)
  cashier-cost = num-cashiers * 20 * 8 * days
  supervisor-cost = num-supervisors * 25 * 8 * days
  total-employee-cost = cashier-cost + supervisor-cost

  # Coût des distributeurs
  total-screenings = rooms * screenings-per-day * days
  distributor-cost = 10_000 + (200 * total-screenings)

  # Calcul du prix minimum du billet
  total-cost = total-employee-cost + distributor-cost
  ticket-price = total-cost / total-tickets

  # Arrondir à 2 décimales
  round(ticket-price, 2)

where:
  # Tests à ne pas modifier
  min-ticket-price(10, 250) is 1.94
  min-ticket-price(2, 125) is 2.1
  min-ticket-price(50, 200) is 1.935
  min-ticket-price(5, 50) is 2
end

