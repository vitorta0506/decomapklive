package p0;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import p0.a;
/* loaded from: classes.dex */
public class d implements b {
    @Override // p0.b
    @NonNull
    public a a(@NonNull Context context, @NonNull a.InterfaceC0611a interfaceC0611a) {
        boolean z10 = ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z10 ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        if (z10) {
            return new c(context, interfaceC0611a);
        }
        return new g();
    }
}
