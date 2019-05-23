 class Okul

    attr_reader :okulad, :okulid    //attr_accessor olsaydı çıktı=55000 olurdu

    def initialize okulad, okulid

        @okulad, @okulid  =  okulad, okulid

    end

end

omu = Okul.new “OMU” , 55

omu.okulid = 55000

puts omu.okulid