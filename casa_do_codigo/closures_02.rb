def create_lambdas
    value = 10
    first = -> { value += 1; puts value }
    last = -> { value += 1; puts value }
    [first, last]
end

first_lambda, last_lambda = create_lambdas


first_lambda.call # 11
last_lambda.call # 12 - "value" é a mesma variável
first_lambda.call # 13
last_lambda.call # 14
