def nyc_pigeon_organizer(data)
newHash = Hash.new

  data.each_key {|q| #color/gender/lives

    data[q].each_key {|w| #subcategories of above(for example purple/grey/white)


      w_string = w.to_s 

      data[q][w].map {|e| #pigeon names

        if (newHash[e])


          if (newHash[e][q])
            #puts "\n\n\n%%%%%%%%%%%%%%%\n\nMade it to if newHash[][]"

            if (newHash[e][q].include?(w_string))
            else
              #puts "\n\n\n\nmade it here to #{w_string}\n\n\n"
              newHash[e][q].push(w_string)
            end
          else
            newHash[e][q] = []
            newHash[e][q].push(w_string)


          end


        else
          newHash[e] = Hash.new
          newHash[e][q] = []
          newHash[e][q].push(w_string)
        end




      }

    }



  }

  newHash

end




