class Car

  attr_accessor :id, :modal_name, :color, :year, :first_name

  def self.open_conection
    conn = PG.connect( dbname: 'people' )
  end

  # In the controller, we'll call the save method like Movie.save, so we can use self. to access the properties of the Movie (eg title, year, actors)
  def save
    conn = Car.open_conection

    # IF the class instance that we're running the save method on does NOT have an ID then create, else update
    if !self.id
      sql = "INSERT INTO cars (modal_name, color, year) VALUES ('#{self.modal_name}', '#{self.color}', '#{self.year}')"
    else
      sql = "UPDATE cars SET modal_name='#{self.modal_name}', color='#{self.color}',year=#{self.year} WHERE id='#{self.id}'"
    end

    conn.exec(sql)

  end

  def self.all

    conn = self.open_conection
    sql = "SELECT * FROM cars ORDER BY id"
    results = conn.exec(sql)

    cars = results.map do |car|
      self.hydrate car
    end
    cars
  end

  def self.find id

    conn = self.open_conection
    sql = "SELECT * FROM cars WHERE id=#{id}"

    results = conn.exec(sql)

    car = self.hydrate results[0]

    car

  end

  def self.all_with_people
    conn = self.open_conection
    sql = "SELECT people.id, people.first_name, people.last_name, people.gender, people.car_id, cars.id,cars.year, cars.modal_name, cars.color FROM cars LEFT JOIN people ON people.car_id = cars.id"
    results = conn.exec(sql)

    cars = results.map do |car|
      self.hydrate car
    end

    cars
  end

  def self.destroy id
    conn = self.open_conection
    sql = "DELETE FROM cars WHERE id=#{id}"
    conn.exec(sql)
  end

  def self.hydrate car_data
    car = Car.new

    car.id = car_data['id']
    car.modal_name = car_data['modal_name']
    car.color = car_data['color']
    car.year = car_data['year']
    car.first_name = car_data['first_name']

    car

  end


  def self.find_with_car id

    conn = self.open_conection
    sql = "SELECT * FROM movies WHERE id=#{id}"

    sql = "SELECT people.id, people.first_name, people.last_name, people.gender, people.car_id, cars.id, cars.modal_name, cars.color, cars.year FROM cars JOIN people ON people.car_id = cars.id WHERE cars.id=#{id}"

    results = conn.exec(sql)

    people = self.hydrate results[0]

    people

  end


end
