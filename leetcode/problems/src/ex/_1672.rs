/// 1672 Richest Customer Wealth

pub fn maximum_wealth(accounts: Vec<Vec<i32>>) -> i32 {
    let mut acc: Vec<i32> = Vec::new();

    for row in &accounts {
        let mut row_acc = 0;
        for col in row {
            row_acc += col;
        }
        acc.push(row_acc);
    }

    let max = acc.iter().max().unwrap();
    *max
}
