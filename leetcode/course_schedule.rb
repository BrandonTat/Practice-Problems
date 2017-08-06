def can_finish(num_courses, prereqs)
  courses = []
  classes = Hash.new

  num_courses.times { |i| classes[i] = 0 }

  prereqs.each do |pre|
    classes[pre[0]] += 1
  end

  classes.each do |k, v|
    courses << k if v == 0
  end

  until courses.empty?
    new_courses = []

    prereqs = prereqs.reject do |pre|
      sec, fir = pre
      if courses.include?(fir)
        classes[sec] -= 1
        new_courses.push(sec) if classes[sec] == 0
        true
      end
    end

    courses = new_courses
  end

  prereqs.empty?
end
