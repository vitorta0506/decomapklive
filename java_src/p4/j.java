package p4;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import com.google.android.gms.measurement.internal.j3;
import com.google.android.gms.measurement.internal.n4;
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final i f56728a;

    public j(i iVar) {
        com.google.android.gms.common.internal.p.j(iVar);
        this.f56728a = iVar;
    }

    @MainThread
    public final void a(Context context, Intent intent) {
        n4 H = n4.H(context, null, null);
        j3 b10 = H.b();
        if (intent == null) {
            b10.w().a("Receiver called with null intent");
            return;
        }
        H.d();
        String action = intent.getAction();
        b10.v().b("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            b10.v().a("Starting wakeful intent.");
            this.f56728a.a(context, className);
        } else if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            b10.w().a("Install Referrer Broadcasts are deprecated");
        }
    }
}
