package v1;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.annotation.VisibleForTesting;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import x1.a;
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private final Context f58655a;

    /* renamed from: b  reason: collision with root package name */
    private final o1.d f58656b;

    /* renamed from: c  reason: collision with root package name */
    private final w1.d f58657c;

    /* renamed from: d  reason: collision with root package name */
    private final u f58658d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f58659e;

    /* renamed from: f  reason: collision with root package name */
    private final x1.a f58660f;

    /* renamed from: g  reason: collision with root package name */
    private final y1.a f58661g;

    /* renamed from: h  reason: collision with root package name */
    private final y1.a f58662h;

    /* renamed from: i  reason: collision with root package name */
    private final w1.c f58663i;

    public o(Context context, o1.d dVar, w1.d dVar2, u uVar, Executor executor, x1.a aVar, y1.a aVar2, y1.a aVar3, w1.c cVar) {
        this.f58655a = context;
        this.f58656b = dVar;
        this.f58657c = dVar2;
        this.f58658d = uVar;
        this.f58659e = executor;
        this.f58660f = aVar;
        this.f58661g = aVar2;
        this.f58662h = aVar3;
        this.f58663i = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean l(n1.o oVar) {
        return Boolean.valueOf(this.f58657c.H0(oVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Iterable m(n1.o oVar) {
        return this.f58657c.L1(oVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object n(Iterable iterable, n1.o oVar, long j10) {
        this.f58657c.u0(iterable);
        this.f58657c.J(oVar, this.f58661g.a() + j10);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object o(Iterable iterable) {
        this.f58657c.z(iterable);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object p() {
        this.f58663i.a();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object q(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            this.f58663i.d(((Integer) entry.getValue()).intValue(), LogEventDropped.Reason.INVALID_PAYLOD, (String) entry.getKey());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object r(n1.o oVar, long j10) {
        this.f58657c.J(oVar, this.f58661g.a() + j10);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object s(n1.o oVar, int i9) {
        this.f58658d.b(oVar, i9 + 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(final n1.o oVar, final int i9, Runnable runnable) {
        try {
            try {
                x1.a aVar = this.f58660f;
                final w1.d dVar = this.f58657c;
                Objects.requireNonNull(dVar);
                aVar.b(new a.InterfaceC0685a() { // from class: v1.e
                    @Override // x1.a.InterfaceC0685a
                    public final Object execute() {
                        return Integer.valueOf(w1.d.this.x());
                    }
                });
                if (!k()) {
                    this.f58660f.b(new a.InterfaceC0685a() { // from class: v1.l
                        @Override // x1.a.InterfaceC0685a
                        public final Object execute() {
                            Object s10;
                            s10 = o.this.s(oVar, i9);
                            return s10;
                        }
                    });
                } else {
                    u(oVar, i9);
                }
            } catch (SynchronizationException unused) {
                this.f58658d.b(oVar, i9 + 1);
            }
        } finally {
            runnable.run();
        }
    }

    @VisibleForTesting
    public n1.i j(o1.k kVar) {
        x1.a aVar = this.f58660f;
        final w1.c cVar = this.f58663i;
        Objects.requireNonNull(cVar);
        return kVar.a(n1.i.a().i(this.f58661g.a()).k(this.f58662h.a()).j("GDT_CLIENT_METRICS").h(new n1.h(l1.b.b("proto"), ((r1.a) aVar.b(new a.InterfaceC0685a() { // from class: v1.n
            @Override // x1.a.InterfaceC0685a
            public final Object execute() {
                return w1.c.this.c();
            }
        })).f())).d());
    }

    boolean k() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f58655a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    BackendResponse u(final n1.o oVar, int i9) {
        BackendResponse b10;
        o1.k kVar = this.f58656b.get(oVar.b());
        long j10 = 0;
        BackendResponse e10 = BackendResponse.e(0L);
        while (true) {
            final long j11 = j10;
            while (((Boolean) this.f58660f.b(new a.InterfaceC0685a() { // from class: v1.j
                @Override // x1.a.InterfaceC0685a
                public final Object execute() {
                    Boolean l10;
                    l10 = o.this.l(oVar);
                    return l10;
                }
            })).booleanValue()) {
                final Iterable<w1.k> iterable = (Iterable) this.f58660f.b(new a.InterfaceC0685a() { // from class: v1.k
                    @Override // x1.a.InterfaceC0685a
                    public final Object execute() {
                        Iterable m10;
                        m10 = o.this.m(oVar);
                        return m10;
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return e10;
                }
                if (kVar == null) {
                    s1.a.b("Uploader", "Unknown backend for %s, deleting event batch for it...", oVar);
                    b10 = BackendResponse.a();
                } else {
                    ArrayList arrayList = new ArrayList();
                    for (w1.k kVar2 : iterable) {
                        arrayList.add(kVar2.b());
                    }
                    if (oVar.e()) {
                        arrayList.add(j(kVar));
                    }
                    b10 = kVar.b(o1.e.a().b(arrayList).c(oVar.c()).a());
                }
                e10 = b10;
                if (e10.c() == BackendResponse.Status.TRANSIENT_ERROR) {
                    this.f58660f.b(new a.InterfaceC0685a() { // from class: v1.h
                        @Override // x1.a.InterfaceC0685a
                        public final Object execute() {
                            Object n9;
                            n9 = o.this.n(iterable, oVar, j11);
                            return n9;
                        }
                    });
                    this.f58658d.a(oVar, i9 + 1, true);
                    return e10;
                }
                this.f58660f.b(new a.InterfaceC0685a() { // from class: v1.g
                    @Override // x1.a.InterfaceC0685a
                    public final Object execute() {
                        Object o10;
                        o10 = o.this.o(iterable);
                        return o10;
                    }
                });
                if (e10.c() == BackendResponse.Status.OK) {
                    j10 = Math.max(j11, e10.b());
                    if (oVar.e()) {
                        this.f58660f.b(new a.InterfaceC0685a() { // from class: v1.f
                            @Override // x1.a.InterfaceC0685a
                            public final Object execute() {
                                Object p10;
                                p10 = o.this.p();
                                return p10;
                            }
                        });
                    }
                } else if (e10.c() == BackendResponse.Status.INVALID_PAYLOAD) {
                    final HashMap hashMap = new HashMap();
                    for (w1.k kVar3 : iterable) {
                        String j12 = kVar3.b().j();
                        if (!hashMap.containsKey(j12)) {
                            hashMap.put(j12, 1);
                        } else {
                            hashMap.put(j12, Integer.valueOf(((Integer) hashMap.get(j12)).intValue() + 1));
                        }
                    }
                    this.f58660f.b(new a.InterfaceC0685a() { // from class: v1.i
                        @Override // x1.a.InterfaceC0685a
                        public final Object execute() {
                            Object q10;
                            q10 = o.this.q(hashMap);
                            return q10;
                        }
                    });
                }
            }
            this.f58660f.b(new a.InterfaceC0685a() { // from class: v1.m
                @Override // x1.a.InterfaceC0685a
                public final Object execute() {
                    Object r10;
                    r10 = o.this.r(oVar, j11);
                    return r10;
                }
            });
            return e10;
        }
    }

    public void v(final n1.o oVar, final int i9, final Runnable runnable) {
        this.f58659e.execute(new Runnable() { // from class: v1.d
            @Override // java.lang.Runnable
            public final void run() {
                o.this.t(oVar, i9, runnable);
            }
        });
    }
}
