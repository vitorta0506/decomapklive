package y3;

import android.content.Context;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.t;
import com.google.android.gms.common.internal.u;
import k4.f;
import t4.g;
import t4.h;
import v3.i;
/* loaded from: classes2.dex */
public final class d extends com.google.android.gms.common.api.c implements t {

    /* renamed from: k  reason: collision with root package name */
    private static final a.g f60107k;

    /* renamed from: l  reason: collision with root package name */
    private static final a.AbstractC0083a f60108l;

    /* renamed from: m  reason: collision with root package name */
    private static final com.google.android.gms.common.api.a f60109m;

    /* renamed from: n  reason: collision with root package name */
    public static final /* synthetic */ int f60110n = 0;

    static {
        a.g gVar = new a.g();
        f60107k = gVar;
        c cVar = new c();
        f60108l = cVar;
        f60109m = new com.google.android.gms.common.api.a("ClientTelemetry.API", cVar, gVar);
    }

    public d(Context context, u uVar) {
        super(context, f60109m, uVar, c.a.f7481c);
    }

    @Override // com.google.android.gms.common.internal.t
    public final g<Void> a(final TelemetryData telemetryData) {
        d.a a10 = com.google.android.gms.common.api.internal.d.a();
        a10.d(f.f53638a);
        a10.c(false);
        a10.b(new i() { // from class: y3.b
            @Override // v3.i
            public final void accept(Object obj, Object obj2) {
                TelemetryData telemetryData2 = TelemetryData.this;
                int i9 = d.f60110n;
                ((a) ((e) obj).A()).G0(telemetryData2);
                ((h) obj2).c(null);
            }
        });
        return g(a10.a());
    }
}
