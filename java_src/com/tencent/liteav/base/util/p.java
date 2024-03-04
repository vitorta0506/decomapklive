package com.tencent.liteav.base.util;

import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    int f31023a;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    final j f31025c;

    /* renamed from: d  reason: collision with root package name */
    final a f31026d;

    /* renamed from: b  reason: collision with root package name */
    boolean f31024b = false;

    /* renamed from: e  reason: collision with root package name */
    Runnable f31027e = new Runnable() { // from class: com.tencent.liteav.base.util.p.1
        @Override // java.lang.Runnable
        public final void run() {
            p pVar = p.this;
            if (pVar.f31024b) {
                pVar.f31025c.c(pVar.f31027e);
                p pVar2 = p.this;
                pVar2.f31025c.a(pVar2.f31027e, pVar2.f31023a);
            }
            a aVar = p.this.f31026d;
            if (aVar != null) {
                aVar.a();
            }
        }
    };

    /* loaded from: classes4.dex */
    public interface a {
        void a();
    }

    public p(@NonNull j jVar, a aVar) {
        this.f31025c = jVar;
        this.f31026d = aVar;
    }

    public final synchronized void a() {
        b();
        this.f31023a = 15;
        this.f31024b = true;
        this.f31025c.a(this.f31027e, 0L);
    }

    public final synchronized void b() {
        this.f31025c.c(this.f31027e);
        this.f31024b = false;
    }
}
