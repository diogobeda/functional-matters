// use std::iter;

mod multiples {
    pub fn multiple_of (numbers: Vec<i32>, quantity: i32) -> Vec<&i32> {
        let foldr = |accumulator: Vec<&i32>, target: &i32| -> Vec<&i32> {
            if is_multiple_of_any(target, numbers) {
                accumulator.push(target);
            }
            accumulator;
        };
        let result: Vec<&i32> = vec![];
        (1..quantity).fold(result, foldr);
    }

    pub fn is_multiple_of_any (target: &i32, numbers: Vec<i32>) -> bool {
        let foldr = |accumulator: bool, number: &i32| -> bool {
            accumulator || is_multiple(target, number);
        };
        numbers.iter().fold(false, foldr);
    }

    pub fn is_multiple (target: &i32, number: &i32) -> bool {
        target % number == 0
    }
}

fn main () {
    // let number : &i32 = &3;
    // let result = ::multiples::is_multiple(6, number);
    // println!("{:?}", result);
    ::multiples::multiple_of(vec![3,5], 10);
}
