// @Libs
import React from "react"
// @Services
import { useServices } from "hooks/useServices"
import { checkQuotas } from "lib/services/billing"
// @Components
import BillingBlockingModal from "lib/components/BillingBlockingModal/BillingBlockingModal"
import { BillingPlanOptionsModal } from "../BillingPlanOptions/BillingPlanOptions"

export const BillingGlobalGuard: React.FC = React.memo(() => {
  const services = useServices()

  if (!services.currentSubscription) return null

  const quotaLimitMsg = checkQuotas(services.currentSubscription)
  if (quotaLimitMsg) {
    return <BillingBlockingModal subscription={services.currentSubscription} blockingReason={quotaLimitMsg} />
  } else if (window.location.search.indexOf("upgradeDialog=true") >= 0) {
    return <BillingPlanOptionsModal planStatus={services.currentSubscription} />
  }

  return null
})
