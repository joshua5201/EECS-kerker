module CoursesHelper
  @@year_text = ["", "大一", "大二", "大三", "大四", "不限"]
  @@semester_text = ["", "上學期", "下學期", "不限"]
  def year_text
    @@year_text
  end

  def semester_text
    @@semester_text
  end

  def semester_and_year(course)
    if course.year == 5 and course.semester == 3
      return "不限學期、學年"
    end
    return @@year_text[course.year] + @@semester_text[course.semester]
  end

  def current_semester
    if (2..7).include?(DateTime.now.month)
      return 2
    else
      return 1
    end
  end

  def other_semester
    if current_semester == 1
      return 2
    else
      return 1
    end
  end
end
