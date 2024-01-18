
# base tensor class 
struct Tensor{T, N}
    data::Array{T, N}
end
# base tensor class 
#TODO add default value to N 
function Tensor(dtype=Float64,shape::Vararg{Int, N=missing};) where N
    
    data = rand(dtype, shape)
    return Tensor(data)
end

# get shape of tensor 
shape(tensor::Tensor) = size(tensor.data)

# add 2 tensors
function add(t1::Tensor, t2::Tensor)::Tensor
    return Tensor(t1.data + t2.data)
end

# multiply
function multiply(t1::Tensor, t2::Tensor)::Tensor
    return Tensor(t1.data .* t2.data)
end
# Create tensors
# tensor1 = Tensor(3, 3)
# tensor2 = Tensor(3, 3)

# tensor3 = Tensor(1)
# tensor4 = tensor()

# Display the shape of tensors
# println("Shape of tensor1: ", shape(tensor1))
# println("Shape of tensor2: ", shape(tensor2))
# println(shape(tensor3))
# println(tensor3)
# # Perform operations on tensors
# result_add = add(tensor1, tensor2)
# result_multiply = multiply(tensor1, tensor2)

# # Display the results
# println("\nElement-wise addition result:")
# println(result_add.data)

# println("\nElement-wise multiplication result:")
# println(result_multiply.data)
