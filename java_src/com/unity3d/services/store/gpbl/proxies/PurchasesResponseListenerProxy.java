package com.unity3d.services.store.gpbl.proxies;

import com.android.billingclient.api.j;
import com.unity3d.services.core.reflection.GenericListenerProxy;
import com.unity3d.services.store.gpbl.bridges.BillingResultBridge;
import com.unity3d.services.store.gpbl.bridges.PurchaseBridge;
import com.unity3d.services.store.listeners.IPurchasesResponseListener;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class PurchasesResponseListenerProxy extends GenericListenerProxy {
    private static final String onQueryPurchasesResponseMethodName = "onQueryPurchasesResponse";
    private IPurchasesResponseListener _purchasesResponseListener;

    public PurchasesResponseListenerProxy(IPurchasesResponseListener iPurchasesResponseListener) {
        this._purchasesResponseListener = iPurchasesResponseListener;
    }

    public static Class<?> getProxyListenerClass() throws ClassNotFoundException {
        return j.class;
    }

    @Override // com.unity3d.services.core.reflection.GenericListenerProxy
    public Class<?> getProxyClass() throws ClassNotFoundException {
        return getProxyListenerClass();
    }

    public IPurchasesResponseListener getPurchasesResponseListener() {
        return this._purchasesResponseListener;
    }

    @Override // com.unity3d.services.core.reflection.GenericListenerProxy, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if (method.getName().equals(onQueryPurchasesResponseMethodName)) {
            onQueryPurchasesResponse(objArr[0], (List) objArr[1]);
            return null;
        }
        return super.invoke(obj, method, objArr);
    }

    public void onQueryPurchasesResponse(Object obj, List<Object> list) {
        ArrayList arrayList;
        BillingResultBridge billingResultBridge = new BillingResultBridge(obj);
        if (list != null) {
            arrayList = new ArrayList();
            for (Object obj2 : list) {
                arrayList.add(new PurchaseBridge(obj2));
            }
        } else {
            arrayList = null;
        }
        IPurchasesResponseListener iPurchasesResponseListener = this._purchasesResponseListener;
        if (iPurchasesResponseListener != null) {
            iPurchasesResponseListener.onBillingResponse(billingResultBridge, arrayList);
        }
    }
}
