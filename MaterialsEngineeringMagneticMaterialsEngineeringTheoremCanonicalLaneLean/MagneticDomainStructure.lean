import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean

structure MagneticDomainPackage where
  domainType : Type u
  wallType : Type v
  exchangeEnergy : ℝ
  anisotropyEnergy : ℝ
  magnetostaticEnergy : ℝ
  domainWidth : ℝ
  wallThickness : ℝ
  energyMinimized : Prop
  widthsPositive : domainWidth > 0 ∧ wallThickness > 0

structure MagneticDomainEvidence (D : MagneticDomainPackage) where
  energyMinimizedClosed : D.energyMinimized

def MagneticDomainClosed (D : MagneticDomainPackage) : Prop :=
  D.energyMinimized ∧ D.domainWidth > 0 ∧ D.wallThickness > 0

theorem magnetic_domain_closed_from_evidence (D : MagneticDomainPackage) (E : MagneticDomainEvidence D) : MagneticDomainClosed D := by
  rcases D.widthsPositive with ⟨hw, ht⟩
  exact And.intro E.energyMinimizedClosed (And.intro hw ht)

end MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean
end HautevilleHouse