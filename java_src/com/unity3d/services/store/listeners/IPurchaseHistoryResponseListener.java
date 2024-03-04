package com.unity3d.services.store.listeners;

import com.unity3d.services.store.gpbl.bridges.BillingResultBridge;
import com.unity3d.services.store.gpbl.bridges.PurchaseHistoryRecordBridge;
import java.util.List;
/* loaded from: classes4.dex */
public interface IPurchaseHistoryResponseListener extends IBillingDataResponseListener<PurchaseHistoryRecordBridge> {
    @Override // com.unity3d.services.store.listeners.IBillingDataResponseListener
    void onBillingResponse(BillingResultBridge billingResultBridge, List<PurchaseHistoryRecordBridge> list);
}
