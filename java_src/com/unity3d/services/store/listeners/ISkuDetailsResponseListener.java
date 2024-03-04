package com.unity3d.services.store.listeners;

import com.unity3d.services.store.gpbl.bridges.BillingResultBridge;
import com.unity3d.services.store.gpbl.bridges.SkuDetailsBridge;
import java.util.List;
/* loaded from: classes4.dex */
public interface ISkuDetailsResponseListener extends IBillingDataResponseListener<SkuDetailsBridge> {
    @Override // com.unity3d.services.store.listeners.IBillingDataResponseListener
    void onBillingResponse(BillingResultBridge billingResultBridge, List<SkuDetailsBridge> list);
}
