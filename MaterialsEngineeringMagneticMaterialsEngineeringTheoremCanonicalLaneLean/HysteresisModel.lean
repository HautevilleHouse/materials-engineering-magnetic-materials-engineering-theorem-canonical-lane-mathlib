import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean

structure HysteresisPackage where
  materialType : Type u
  coercivity : ℝ
  remanence : ℝ
  saturationMagnetization : ℝ
  hysteresisLoopArea : ℝ
  coercivityPositive : coercivity > 0
  saturationPositive : saturationMagnetization > 0
  loopAreaNonnegative : hysteresisLoopArea ≥ 0

structure HysteresisEvidence (H : HysteresisPackage) where
  hysteresisLoopClosed : H.hysteresisLoopArea ≥ 0

def HysteresisClosed (H : HysteresisPackage) : Prop :=
  H.hysteresisLoopArea ≥ 0 ∧ H.coercivity > 0 ∧ H.saturationMagnetization > 0

theorem hysteresis_closed_from_evidence (H : HysteresisPackage) (E : HysteresisEvidence H) : HysteresisClosed H := by
  exact And.intro E.hysteresisLoopClosed (And.intro H.coercivityPositive H.saturationPositive)

end MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean
end HautevilleHouse