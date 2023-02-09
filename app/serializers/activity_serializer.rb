class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty, :singup_times

  def singup_times
    self.object.singups.map do |signup|
      {id: signup.id, time: "#{signup.time}:00" }
    end
  end

end
