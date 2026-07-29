import HautevilleHouse.GeometryStructureNormedLinearSpacesCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure NormedLinearSpacesTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  banachStructureStatement : String
  hilbertStructureStatement : String
  carriedRemainder : String

def sourceTheoremStatement : NormedLinearSpacesTheoremStatement :=
  { sourceKey := "geometry-structure-normed-linear-spaces-canonical-lane"
  , theoremName := "geometry-structure-normed-linear-spaces-canonical-lane"
  , theoremObject := "Normed linear space and Banach/Hilbert structure theorems"
  , classicalBoundary := "Classical function-analytic boundary carried as open closure"
  , banachStructureStatement := "Banach space structure theorem via constrained closure"
  , hilbertStructureStatement := "Hilbert space structure theorem via constrained closure"
  , carriedRemainder := "Unrestricted classical closure remains open"
  }

theorem source_theorem_statement_defined : sourceTheoremStatement.sourceKey = "geometry-structure-normed-linear-spaces-canonical-lane" := by
  rfl

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse