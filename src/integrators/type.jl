type SDEIntegrator{T1,uType,uEltype,tType,tTypeNoUnits,uEltypeNoUnits,randType,randElType,rateType,solType,cacheType,progType,Stack1Type,Stack2Type,F4,F5,OType,noiseType} <: AbstractSDEIntegrator
  f::F4
  g::F5
  noise::noiseType
  uprev::uType
  t::tType
  u::uType
  dt::tType
  dtnew::tType
  dtpropose::tType
  dtcache::tType
  T::tType
  tdir::Int
  just_hit_tstop::Bool
  isout::Bool
  accept_step::Bool
  dtchangeable::Bool
  u_modified::Bool
  saveiter::Int
  alg::T1
  sol::solType
  cache::cacheType
  sqdt::tType
  W::randType
  Z::randType
  ΔW::randElType
  ΔZ::randElType
  ΔWtilde::randElType
  ΔZtilde::randElType
  opts::OType
  iter::Int
  prog::progType
  S₁::Stack1Type
  S₂::Stack2Type
  EEst::tTypeNoUnits
  q::tTypeNoUnits
  qold::tTypeNoUnits
  q11::tTypeNoUnits
end
