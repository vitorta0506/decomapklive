package com.google.android.play.core.assetpacks;

import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class g1 {

    /* renamed from: k  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f10229k = new com.google.android.play.core.internal.g("ExtractorLooper");

    /* renamed from: a  reason: collision with root package name */
    private final y1 f10230a;

    /* renamed from: b  reason: collision with root package name */
    private final a1 f10231b;

    /* renamed from: c  reason: collision with root package name */
    private final j3 f10232c;

    /* renamed from: d  reason: collision with root package name */
    private final m2 f10233d;

    /* renamed from: e  reason: collision with root package name */
    private final r2 f10234e;

    /* renamed from: f  reason: collision with root package name */
    private final y2 f10235f;

    /* renamed from: g  reason: collision with root package name */
    private final c3 f10236g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10237h;

    /* renamed from: i  reason: collision with root package name */
    private final b2 f10238i;

    /* renamed from: j  reason: collision with root package name */
    private final AtomicBoolean f10239j = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    public g1(y1 y1Var, com.google.android.play.core.internal.g1 g1Var, a1 a1Var, j3 j3Var, m2 m2Var, r2 r2Var, y2 y2Var, c3 c3Var, b2 b2Var) {
        this.f10230a = y1Var;
        this.f10237h = g1Var;
        this.f10231b = a1Var;
        this.f10232c = j3Var;
        this.f10233d = m2Var;
        this.f10234e = r2Var;
        this.f10235f = y2Var;
        this.f10236g = c3Var;
        this.f10238i = b2Var;
    }

    private final void b(int i9, Exception exc) {
        try {
            this.f10230a.k(i9, 5);
            this.f10230a.l(i9);
        } catch (f1 unused) {
            f10229k.b("Error during error handling: %s", exc.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        com.google.android.play.core.internal.g gVar = f10229k;
        gVar.a("Run extractor loop", new Object[0]);
        if (!this.f10239j.compareAndSet(false, true)) {
            gVar.e("runLoop already looping; return", new Object[0]);
            return;
        }
        while (true) {
            a2 a2Var = null;
            try {
                a2Var = this.f10238i.a();
            } catch (f1 e10) {
                f10229k.b("Error while getting next extraction task: %s", e10.getMessage());
                if (e10.f10211a >= 0) {
                    ((c4) this.f10237h.zza()).d(e10.f10211a);
                    b(e10.f10211a, e10);
                }
            }
            if (a2Var != null) {
                try {
                    if (a2Var instanceof z0) {
                        this.f10231b.a((z0) a2Var);
                    } else if (a2Var instanceof i3) {
                        this.f10232c.a((i3) a2Var);
                    } else if (a2Var instanceof l2) {
                        this.f10233d.a((l2) a2Var);
                    } else if (a2Var instanceof o2) {
                        this.f10234e.a((o2) a2Var);
                    } else if (a2Var instanceof x2) {
                        this.f10235f.a((x2) a2Var);
                    } else if (a2Var instanceof a3) {
                        this.f10236g.a((a3) a2Var);
                    } else {
                        f10229k.b("Unknown task type: %s", a2Var.getClass().getName());
                    }
                } catch (Exception e11) {
                    f10229k.b("Error during extraction task: %s", e11.getMessage());
                    ((c4) this.f10237h.zza()).d(a2Var.f10147a);
                    b(a2Var.f10147a, e11);
                }
            } else {
                this.f10239j.set(false);
                return;
            }
        }
    }
}
