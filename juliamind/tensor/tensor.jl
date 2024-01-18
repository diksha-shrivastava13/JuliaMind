
# base tensor class 
struct Tensor{T, N}
    data::Array{T, N}
end

function Tensor(shape::Vararg{Int, N}; dtype=Float64) where N
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

end #module 