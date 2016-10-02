def create_lambda
    value = 10
    -> { value += 1; puts value }
end

first_lambda = create_lambda
next_lambda = create_lambda

first_lambda.call # 11
next_lambda.call # 11 - "value" é outra variável neste escopo

first_lambda.call # 12
first_lambda.call # 13
