import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean

structure MagneticDomainsPackage where
  domainWalls : Type u
  magnetizationDistribution : Type v
  exchangeEnergy : Prop
  anisotropyEnergy : Prop
  demagnetizingField : Prop
  domainStructureFormation : Prop

structure MagneticDomainsEvidence (D : MagneticDomainsPackage) where
  exchangeEnergyClosed : D.exchangeEnergy
  anisotropyEnergyClosed : D.anisotropyEnergy
  demagnetizingFieldClosed : D.demagnetizingField
  domainStructureFormationClosed : D.domainStructureFormation

def MagneticDomainsClosed (D : MagneticDomainsPackage) : Prop :=
  D.exchangeEnergy ∧ D.anisotropyEnergy ∧ D.demagnetizingField ∧ D.domainStructureFormation

theorem magnetic_domains_closed_from_evidence
    (D : MagneticDomainsPackage) (E : MagneticDomainsEvidence D) :
    MagneticDomainsClosed D := by
  exact And.intro E.exchangeEnergyClosed
    (And.intro E.anisotropyEnergyClosed
      (And.intro E.demagnetizingFieldClosed E.domainStructureFormationClosed))

end MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
