import HautevilleHouse.MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def defaultTheoremStatement : TheoremStatement :=
  { sourceKey := "MolecularBiologyRnaInterferenceTheorem",
    theoremName := "RNA Interference Mechanism",
    theoremObject := "siRNA-mRNA cleavage efficiency and functional gene silencing",
    classicalBoundary := "Unrestricted classical molecular biology knowledge",
    constrainedStatement := "Constrained RNA interference closure via admissible cleavage efficiency and endpoint classification",
    certificateLane := "rna_interference_constrained",
    carriedRemainder := "Experimental validation for specific cell types"
  }

theorem theorem_statement_defined :
    defaultTheoremStatement.sourceKey = "MolecularBiologyRnaInterferenceTheorem" := by
  rfl

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse