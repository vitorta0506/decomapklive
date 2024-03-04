package com.unity3d.services.store.gpbl.proxies;

import com.android.billingclient.api.c;
import com.unity3d.services.core.reflection.GenericListenerProxy;
import com.unity3d.services.store.gpbl.IBillingClientStateListener;
import com.unity3d.services.store.gpbl.bridges.BillingResultBridge;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public class BillingClientStateListenerProxy extends GenericListenerProxy {
    private static String onBillingServiceDisconnectedMethodName = "onBillingServiceDisconnected";
    private static String onBillingSetupFinishedMethodName = "onBillingSetupFinished";
    private IBillingClientStateListener _billingClientStateListener;

    public BillingClientStateListenerProxy(IBillingClientStateListener iBillingClientStateListener) {
        this._billingClientStateListener = iBillingClientStateListener;
    }

    public static Class<?> getProxyListenerClass() throws ClassNotFoundException {
        return c.class;
    }

    private void onBillingServiceDisconnected() {
        IBillingClientStateListener iBillingClientStateListener = this._billingClientStateListener;
        if (iBillingClientStateListener != null) {
            iBillingClientStateListener.onBillingServiceDisconnected();
        }
    }

    private void onBillingSetupFinished(Object obj) {
        IBillingClientStateListener iBillingClientStateListener = this._billingClientStateListener;
        if (iBillingClientStateListener != null) {
            iBillingClientStateListener.onBillingSetupFinished(new BillingResultBridge(obj));
        }
    }

    @Override // com.unity3d.services.core.reflection.GenericListenerProxy
    public Class<?> getProxyClass() throws ClassNotFoundException {
        return getProxyListenerClass();
    }

    @Override // com.unity3d.services.core.reflection.GenericListenerProxy, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if (method.getName().equals(onBillingSetupFinishedMethodName)) {
            onBillingSetupFinished(objArr[0]);
        } else if (method.getName().equals(onBillingServiceDisconnectedMethodName)) {
            onBillingServiceDisconnected();
        } else {
            return super.invoke(obj, method, objArr);
        }
        return null;
    }
}
