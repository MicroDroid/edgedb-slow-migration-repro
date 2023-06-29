module default {
	type Car {
		required property code -> str {
			constraint exclusive;
		};

		required property prop1 -> str {
			constraint expression on (
				__subject__ = str_trim(__subject__)
			);
		};
		required property prop2 -> str {
			constraint expression on (
				__subject__ = str_trim(__subject__)
			);
		};
		required property prop3 -> str {
			constraint expression on (
				__subject__ = str_trim(__subject__)
			);
		};

		required property createdAt -> datetime {
			default := datetime_current();
		};

		property updatedAt -> datetime;
	}
}
