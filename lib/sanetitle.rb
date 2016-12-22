require "sanetitle/version"

module SaneTitle

  class Sanifier

    def initialize(title)
      raise ArgumentError.new('Invalid string.') unless (is_string?(title) and empty_string?(title))
      step1 = title
      step2 = to_lower(step1)
      step3 = remove_special_chars(step2)
      step4 = spaces_to_underlines(step3)
      @@title_str = step4
    end
    
    def to_lower(str)
      str.downcase
    end
  
    def spaces_to_underlines(str)
      str.gsub(/\ /,"-")
    end
    
    def remove_special_chars(str)
      s1 = str.gsub(/[á|à|ã|ä|â]/,"a")
      s1 = s1.gsub(/[é|è|ẽ|ë|ê]/,"e")
      s1 = s1.gsub(/[í|ì|ĩ|ï|î]/,"i")
      s1 = s1.gsub(/[ó|ò|õ|ö|ô]/,"o")
      s1 = s1.gsub(/[ú|ù|ũ|ü|û]/,"u")
      s1 = s1.gsub(/[ñ]/,"n")
      s1 = s1.gsub(/[ç]/,"c")
      s1 = s1.gsub(/[\+|\=|\_|\-|\(|\)|\*|\%|\&|\$|\#|\@|\!|\?|\/|\:|\;|\.|\,|\>|\<]/,"")
      s1.gsub(/\ \ /," ")
    end
    
    def result
      @@title_str
    end
    
    def result_imp(lim,html,tstamp = false)
      resimp = result
      resimp = resimp[0,lim]
      if (html) then
        resimp = resimp + '.html'
      end
      if (tstamp) then
        dt = DateTime.now
        yyyy = dt.year.to_s 
        mm = (dt.month < 10) ? '0' + dt.month.to_s : dt.month.to_s
        dd = (dt.day < 10) ? '0' + dt.day.to_s : dt.day.to_s 
        resimp = "#{yyyy}-#{mm}-#{dd}-#{resimp}"
      end
      resimp
    end
  
    def is_string?(title)
      title.is_a? String
    end
  
    def empty_string?(title)
      title.length > 0
    end
  
  end
    
end
