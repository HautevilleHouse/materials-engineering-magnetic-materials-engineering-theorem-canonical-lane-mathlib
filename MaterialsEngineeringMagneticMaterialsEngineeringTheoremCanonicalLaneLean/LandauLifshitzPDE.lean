import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean.MagneticMaterialsAdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean

structure LandauLifshitzPDEPackage (M : MagneticMaterialObject) where
  timeParameter : Type u
  magnetizationAt : timeParameter → Type v
  initialMagnetizationMatches : Prop
  differentiableMagnetizationFamily : Prop
  llEquation : Prop
  maximalTimeInterval : Prop

structure LandauLifshitzPDEEvidence {M : MagneticMaterialObject} (F : LandauLifshitzPDEPackage M) where
  initialMagnetizationMatchesClosed : F.initialMagnetizationMatches
  differentiableMagnetizationFamilyClosed : F.differentiableMagnetizationFamily
  llEquationClosed : F.llEquation
  maximalTimeIntervalClosed : F.maximalTimeInterval

def LandauLifshitzPDEClosed {M : MagneticMaterialObject} (F : LandauLifshitzPDEPackage M) : Prop :=
  F.initialMagnetizationMatches ∧
  F.differentiableMagnetizationFamily ∧
  F.llEquation ∧
  F.maximalTimeInterval

theorem landau_lifshitz_pde_closed_from_evidence
    {M : MagneticMaterialObject} (F : LandauLifshitzPDEPackage M)
    (E : LandauLifshitzPDEEvidence F) : LandauLifshitzPDEClosed F := by
  exact And.intro E.initialMagnetizationMatchesClosed
    (And.intro E.differentiableMagnetizationFamilyClosed
      (And.intro E.llEquationClosed E.maximalTimeIntervalClosed))

end MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
