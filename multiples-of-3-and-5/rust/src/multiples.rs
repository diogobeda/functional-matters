
mod multiples {
    pub fn multiples_of(numbers: &[i32], quantity: i32) -> Vec<i32> {
        let get_multiples = |mut accumulator: Vec<i32>, target| -> Vec<i32> {
            if is_multiple_of_any(target, numbers) {
                accumulator.push(target);
            }
            accumulator
        };
        let result: Vec<i32> = vec![];

        (1..quantity).fold(result, get_multiples)
    }

    fn is_multiple_of_any(target: i32, numbers: &[i32]) -> bool {
        let fold_fn = |accumulator, &number| {
            accumulator || is_multiple(target, &number)
        };

        numbers.iter().fold(false, fold_fn)
    }

    fn is_multiple (target: i32, number: &i32) -> bool {
        target % number == 0
    }
}

fn main () {
    let numbers: &[i32] = &[3,5];
    let quantity = 10;
    println!("Multiples: {:?}", ::multiples::multiples_of(numbers, quantity));
}
