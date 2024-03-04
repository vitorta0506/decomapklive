package b5;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.play.core.splitinstall.zzo;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public final class o extends x4.d {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static o f1189j;

    /* renamed from: g  reason: collision with root package name */
    private final Handler f1190g;

    /* renamed from: h  reason: collision with root package name */
    private final f f1191h;

    /* renamed from: i  reason: collision with root package name */
    private final Set f1192i;

    @VisibleForTesting
    public o(Context context, f fVar) {
        super(new com.google.android.play.core.internal.g("SplitInstallListenerRegistry"), new IntentFilter("com.google.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"), context);
        this.f1190g = new Handler(Looper.getMainLooper());
        this.f1192i = new LinkedHashSet();
        this.f1191h = fVar;
    }

    public static synchronized o g(Context context) {
        o oVar;
        synchronized (o.class) {
            if (f1189j == null) {
                f1189j = new o(context, zzo.INSTANCE);
            }
            oVar = f1189j;
        }
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // x4.d
    public final void a(Context context, Intent intent) {
        Bundle bundleExtra = intent.getBundleExtra("session_state");
        if (bundleExtra == null) {
            return;
        }
        a j10 = a.j(bundleExtra);
        this.f59612a.a("ListenerRegistryBroadcastReceiver.onReceive: %s", j10);
        g zza = this.f1191h.zza();
        if (j10.e() == 3 && zza != null) {
            zza.a(j10.i(), new m(this, j10, intent, context));
        } else {
            i(j10);
        }
    }

    public final synchronized void i(a aVar) {
        Iterator it = new LinkedHashSet(this.f1192i).iterator();
        while (it.hasNext()) {
            ((b) it.next()).a(aVar);
        }
        super.d(aVar);
    }
}
