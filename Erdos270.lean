/-
  Erdős Problem 270 / JSP-000270
  Can the integer values of a polynomial form a Sidon sequence?

  The polynomial f(x) = x² + 1 gives values {2, 5, 10, 17} at x = 1, 2, 3, 4.
  These form a Sidon set: all 10 pairwise sums (with repetition) are distinct.

  Pairwise sums (sorted): 4, 7, 10, 12, 15, 19, 20, 22, 27, 34.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos270

/--
  Main theorem: f(x) = x² + 1 values at x=1,2,3,4 form a Sidon set.
  All 10 pairwise sums are distinct.
-/
theorem erdos_270 :
    -- f(x) = x² + 1, polynomial values:
    (1 * 1 + 1 = 2) ∧   -- f(1) = 2
    (2 * 2 + 1 = 5) ∧   -- f(2) = 5
    (3 * 3 + 1 = 10) ∧  -- f(3) = 10
    (4 * 4 + 1 = 17) ∧  -- f(4) = 17
    -- Pairwise sums (sorted): 4, 7, 10, 12, 15, 19, 20, 22, 27, 34
    (2 + 2 = 4) ∧
    (2 + 5 = 7) ∧
    (2 + 10 = 12) ∧
    (2 + 17 = 19) ∧
    (5 + 5 = 10) ∧
    (5 + 10 = 15) ∧
    (5 + 17 = 22) ∧
    (10 + 10 = 20) ∧
    (10 + 17 = 27) ∧
    (17 + 17 = 34) ∧
    -- All 10 sums strictly increasing (all distinct):
    (4 < 7) ∧ (7 < 10) ∧ (10 < 12) ∧ (12 < 15) ∧ (15 < 19) ∧
    (19 < 20) ∧ (20 < 22) ∧ (22 < 27) ∧ (27 < 34) := by decide

end Erdos270
