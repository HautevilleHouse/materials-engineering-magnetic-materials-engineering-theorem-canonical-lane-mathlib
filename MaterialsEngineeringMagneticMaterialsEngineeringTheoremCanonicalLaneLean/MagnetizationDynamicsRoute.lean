import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean.LandauLifshitzEquation
import HautevilleHouse.MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean.SpinWaveDispersion
import HautevilleHouse.MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean.IsingModelHamiltonian
import HautevilleHouse.MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean.MagneticDomainWall

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean

structure MagnetizationDynamicsRouteObligations where
  landauLifshitz : LandauLifshitzClosed
  spinWave : SpinWaveDispersionClosed
  isingModel : IsingModelClosed
  domainWall : MagneticDomainWallClosed

structure MagnetizationDynamicsRouteEvidence (R : MagnetizationDynamicsRouteObligations) where
  landauLifshitzClosed : R.landauLifshitz
  spinWaveClosed : R.spinWave
  isingModelClosed : R.isingModel
  domainWallClosed : R.domainWall

def MagnetizationDynamicsRouteClosed (R : MagnetizationDynamicsRouteObligations) : Prop :=
  R.landauLifshitz ∧ R.spinWave ∧ R.isingModel ∧ R.domainWall

theorem magnetization_dynamics_route_closed_from_evidence (R : MagnetizationDynamicsRouteObligations) (E : MagnetizationDynamicsRouteEvidence R) : MagnetizationDynamicsRouteClosed R := by
  exact And.intro E.landauLifshitzClosed (And.intro E.spinWaveClosed (And.intro E.isingModelClosed E.domainWallClosed))

end MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean
end HautevilleHouse