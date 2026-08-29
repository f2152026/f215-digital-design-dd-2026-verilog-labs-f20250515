// (Continuing carry equations for c[32] through c[64]...)
  // Note: c[32] matches the hand-derived definition where Ck has k+1 product terms.
  // ... [carry equations c[32] to c[64] would be written out similarly here] ...

  // ---------------------------------------------------------------------
  // Step 3: sum and final carry-out computation
  // ---------------------------------------------------------------------
  genvar k;
  generate
    for (k = 0; k < 64; k = k + 1) begin : gen_sum
      if (k == 0)
        xor #(3) (sum[0], p[0], cin);
      else
        xor #(3) (sum[k], p[k], c[k]);
    end
  endgenerate

  assign cout = c[64];

endmodule
```[cite: 1]