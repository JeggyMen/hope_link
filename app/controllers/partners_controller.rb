class PartnersController < ApplicationController
  def index
     @partners = [
      { name: 'Caritas Manila Segunda Mana', image: 'partner1.png', description: 'A non-profit organization that serves as the lead social service and development ministry of the Catholic Church in the Philippines.' },
      { name: 'Philippine Food Bank Foundation Inc.', image: 'partner2.png', description: 'Through strategic partnerships, the foundation secures surplus food products from various sources and redistributes them to marginalized communities with the help of grassroots movement.' },
      { name: 'Philippine Red Cross', image: 'partner3.png', description: 'Humanitarian organization which was created to serve as an auxiliary arm of the government in providing relief, health and welfare to the most vulnerable people in need including victims of disaster and other emergencies.' },
      { name: 'Philippine Disaster Resilience Foundation', image: 'partner4.png', description: 'To build disaster-resilient communities and businesses in the country through private sector engagement and innovative disaster risk reduction and management strategies, programs, and technologies.' },
      { name: 'Make A Wish Philippines', image: 'partner5.jpg', description: 'The first and only non-profit wish-granting organization in the country. We are an affiliate of Make-A-Wish Foundation® International, the world’s largest and most respected wish-granting organization.' }
    ]
  end
end
