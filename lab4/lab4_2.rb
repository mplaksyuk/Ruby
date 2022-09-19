class Matrix
    attr_accessor :matrix, :size

    def initialize(size, matrix = nil)
        @size = size
        if matrix != nil
            @matrix = matrix
        else
            @matrix = Array.new(size) { Array.new(size) { rand(-10..10) } }
            for i in 0..size-1
                @matrix[i][i] = 1
                @matrix[i][size - i - 1] = 1
            end
        end
    end

    def get_size() 
        return @size
    end

    def get_matrix()
        return @matrix
    end

    def print_matrix()
        print "matrix:\n"
        for i in 0..@size-1
            for j in 0..@size-1
                print "#{@matrix[i][j]} \t"
            end
            print "\n"
        end
    end

    def *(obj)
        
        self.print_matrix
        obj.print_matrix
        if @size == obj.get_size
            if obj.class.name == "Matrix"
                matrix = obj.get_matrix

                res = Array.new(@size) { Array.new(@size) }
                for i in 0..@size-1
                    for j in 0..@size-1
                        sum = 0
                        for k in 0..@size-1
                            sum += @matrix[i][k] * matrix[k][j]
                        end
                        res[i][j] = sum 
                    end
                end

                res = Matrix.new(@size, res)
            elsif obj.class.name == "Vector"
                vector = obj.get_vector

                res = [] 
                for i in 0..@size-1
                    sum = 0
                    for j in 0..@size-1
                        sum += @matrix[i][j] * vector[j]
                    end
                    res.push(sum)
                end

                res = Vector.new(@size, res)
            end
        else
            p "size is different"
        end

        return res
    end

end

class Vector
    attr_accessor :vector, :size

    def initialize(size, vector = nil)
        @size = size
        if vector != nil
            @vector = vector
        else
            @vector = Array.new(size) { rand(-10..10) }
        end
            
    end

    def get_size() 
        return @size
    end

    def get_vector()
        return @vector
    end

    def print_vector
        print "vector:\n" 
        for i in 0..@size-1
            print "#{@vector[i]} \t"
        end
        print "\n"
    end

    def *(obj)
        res = []
        if @size == obj.get_size
            if obj.class.name == "Matrix"
                matrix = obj.get_matrix

                for i in 0..@size-1
                    sum = 0
                    for j in 0..@size-1
                        sum += @vector[j] * matrix[j][i]
                    end
                    res.push(sum)
                end

                res = Vector.new(@size, res)

            elsif obj.class.name == "Vector"
                vector = obj.get_vector

                sum = 0
                for i in 0..@size-1
                    sum += @vector[i] * vector[i]
                end

                res.push(sum)
            end
        else
            p "size is different"
        end

        return res
    end
end


m = Matrix.new(3)


v = Vector.new(3)


v2 = Vector.new(3)

(m * m).print_matrix

# p v * v2

