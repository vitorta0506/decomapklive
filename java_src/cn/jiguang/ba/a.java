package cn.jiguang.ba;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Bundle;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.as.d;
import cn.jiguang.internal.JConstants;
/* loaded from: classes.dex */
public class a extends ConnectivityManager.NetworkCallback {

    /* renamed from: b  reason: collision with root package name */
    private static volatile a f2390b;

    /* renamed from: a  reason: collision with root package name */
    private NetworkRequest f2391a;

    private a() {
        try {
            this.f2391a = new NetworkRequest.Builder().addTransportType(0).addTransportType(1).build();
        } catch (Throwable th2) {
            d.g("ConnectionStateMonitor", "init network request error, " + th2.getMessage());
        }
    }

    public static a a() {
        if (f2390b == null) {
            synchronized (a.class) {
                if (f2390b == null) {
                    f2390b = new a();
                }
            }
        }
        return f2390b;
    }

    public void a(Context context) {
        if (context == null || this.f2391a == null) {
            return;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                connectivityManager.registerNetworkCallback(this.f2391a, this);
                d.c("ConnectionStateMonitor", "start network listen...");
            }
        } catch (Throwable th2) {
            d.g("ConnectionStateMonitor", "enable connectivity error, " + th2.getMessage());
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        String str = "";
        if (network != null) {
            try {
                str = network.toString();
            } catch (Throwable th2) {
                d.g("ConnectionStateMonitor", "[onAvailable] error, " + th2.getMessage());
                return;
            }
        }
        d.c("ConnectionStateMonitor", "[onAvailable] network is connected, netId: " + str);
        Context appContext = JConstants.getAppContext(null);
        if (appContext == null) {
            d.c("ConnectionStateMonitor", "[onAvailable] context is null, can not handle network change event");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("connected", true);
        JCoreManager.onEvent(appContext, "", 80, null, bundle, new Object[0]);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        String str = "";
        if (network != null) {
            try {
                str = network.toString();
            } catch (Throwable th2) {
                d.g("ConnectionStateMonitor", "[onLost] error, " + th2.getMessage());
                return;
            }
        }
        d.h("ConnectionStateMonitor", "[onLost] network is disconnected, netId: " + str);
        Context appContext = JConstants.getAppContext(null);
        if (appContext == null) {
            d.c("ConnectionStateMonitor", "[onLost] context is null, can not handle network change event");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("connected", false);
        JCoreManager.onEvent(appContext, "", 80, null, bundle, new Object[0]);
    }
}
