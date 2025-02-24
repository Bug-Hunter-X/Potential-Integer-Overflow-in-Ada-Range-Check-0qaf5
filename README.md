# Ada Integer Overflow Example

This repository demonstrates a potential integer overflow issue in Ada.  The `Check_Range` function appears to correctly check if a value falls within a specific range. However, this is not sufficient to prevent issues if the input value could cause an integer overflow before the range check is performed.

## Problem

The problem lies in the potential for integer overflow. If the input to `Check_Range` is outside the representable range of the `Integer` type, unexpected results can occur. The comparison operators (`<` and `>`) could still produce unexpected boolean results.

## Solution

The solution would involve using a larger integer type, such as `Long_Integer` or `Long_Long_Integer`, to handle potentially large input values.  Additional checks can also be included to explicitly test for the overflow before executing comparisons.  Additionally, consider using pre-defined range constraints or other forms of input validation, depending on the source and nature of the input values.
