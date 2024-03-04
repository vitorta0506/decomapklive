package com.unity3d.services.store.gpbl.proxies;

import com.android.billingclient.api.i;
import com.unity3d.services.core.reflection.GenericListenerProxy;
import com.unity3d.services.store.gpbl.bridges.BillingResultBridge;
import com.unity3d.services.store.gpbl.bridges.PurchaseHistoryRecordBridge;
import com.unity3d.services.store.listeners.IPurchaseHistoryResponseListener;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class PurchaseHistoryResponseListenerProxy extends GenericListenerProxy {
    private static final String onPurchaseHistoryResponseMethodName = "onPurchaseHistoryResponse";
    private int _maxPurchases;
    private IPurchaseHistoryResponseListener _purchaseUpdatedResponseListener;

    public PurchaseHistoryResponseListenerProxy(IPurchaseHistoryResponseListener iPurchaseHistoryResponseListener, int i9) {
        this._purchaseUpdatedResponseListener = iPurchaseHistoryResponseListener;
        this._maxPurchases = i9;
    }

    public static Class<?> getProxyListenerClass() throws ClassNotFoundException {
        return i.class;
    }

    @Override // com.unity3d.services.core.reflection.GenericListenerProxy
    public Class<?> getProxyClass() throws ClassNotFoundException {
        return getProxyListenerClass();
    }

    @Override // com.unity3d.services.core.reflection.GenericListenerProxy, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if (method.getName().equals(onPurchaseHistoryResponseMethodName)) {
            onPurchaseHistoryResponse(objArr[0], (List) objArr[1]);
            return null;
        }
        return super.invoke(obj, method, objArr);
    }

    public void onPurchaseHistoryResponse(Object obj, List<Object> list) {
        ArrayList arrayList;
        if (list != null) {
            arrayList = new ArrayList();
            for (int i9 = 0; i9 < this._maxPurchases && i9 < list.size(); i9++) {
                arrayList.add(new PurchaseHistoryRecordBridge(list.get(i9)));
            }
        } else {
            arrayList = null;
        }
        IPurchaseHistoryResponseListener iPurchaseHistoryResponseListener = this._purchaseUpdatedResponseListener;
        if (iPurchaseHistoryResponseListener != null) {
            iPurchaseHistoryResponseListener.onBillingResponse(new BillingResultBridge(obj), arrayList);
        }
    }
}
