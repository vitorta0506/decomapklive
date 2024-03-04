package x4;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.Nullable;
import com.google.android.play.core.internal.g;
import com.google.android.play.core.internal.y0;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    protected final g f59612a;

    /* renamed from: b  reason: collision with root package name */
    private final IntentFilter f59613b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f59614c;

    /* renamed from: d  reason: collision with root package name */
    protected final Set f59615d = new HashSet();
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private c f59616e = null;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f59617f = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public d(g gVar, IntentFilter intentFilter, Context context) {
        this.f59612a = gVar;
        this.f59613b = intentFilter;
        this.f59614c = y0.a(context);
    }

    private final void b() {
        c cVar;
        if ((this.f59617f || !this.f59615d.isEmpty()) && this.f59616e == null) {
            c cVar2 = new c(this, null);
            this.f59616e = cVar2;
            this.f59614c.registerReceiver(cVar2, this.f59613b);
        }
        if (this.f59617f || !this.f59615d.isEmpty() || (cVar = this.f59616e) == null) {
            return;
        }
        this.f59614c.unregisterReceiver(cVar);
        this.f59616e = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(Context context, Intent intent);

    public final synchronized void c(boolean z10) {
        this.f59617f = z10;
        b();
    }

    public final synchronized void d(Object obj) {
        Iterator it = new HashSet(this.f59615d).iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(obj);
        }
    }

    public final synchronized boolean e() {
        return this.f59616e != null;
    }
}
