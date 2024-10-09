RS=rustc

scopes: scopes.rs
	rustc scopes.rs

strings: strings.rs
	rustc strings.rs

take_ownership: take_ownership.rs
	rustc take_ownership.rs

give_ownership: give_ownership.rs
	rustc give_ownership.rs

borrowing: borrowing.rs
	rustc $<

modify_borrow: modify_borrow.rs
	rustc $< 

dangle: dangle.rs
	${RS} $< 
