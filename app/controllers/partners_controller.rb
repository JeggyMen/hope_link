class PartnersController < ApplicationController
  def index
     @partners = [
      { name: 'Caritas Manila Segunda Mana', image: 'partner1.jpg', description: 'A non-profit organization that serves as the lead social service and development ministry of the Catholic Church in the Philippines.' },
      { name: 'Philippine Food Bank Foundation Inc.', image: 'partner2.png', description: 'Through strategic partnerships, the foundation secures surplus food products from various sources and redistributes them to marginalized communities with the help of grassroots movement.' },
      { name: 'Philippine Red Cross', image: 'partner3.png', description: 'Humanitarian organization which was created to serve as an auxiliary arm of the government in providing relief, health and welfare to the most vulnerable people in need including victims of disaster and other emergencies.' },
      { name: 'Philippine Disaster Resilience Foundation', image: 'partner4.png', description: 'Is the country’s major private sector coordinator for disaster risk reduction and management.' },
      { name: 'Make A Wish Philippines', image: 'partner5.jpg', description: 'Together, we create life-changing wishes for children with critical illnesses.' }
    ]
  end
end
