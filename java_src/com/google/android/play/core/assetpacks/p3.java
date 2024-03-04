package com.google.android.play.core.assetpacks;

import android.os.Handler;
import android.os.Looper;
import java.util.List;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class p3 {

    /* renamed from: l  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f10361l = new com.google.android.play.core.internal.g("AssetPackManager");

    /* renamed from: a  reason: collision with root package name */
    private final e0 f10362a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10363b;

    /* renamed from: c  reason: collision with root package name */
    private final y f10364c;

    /* renamed from: d  reason: collision with root package name */
    private final b5.k f10365d;

    /* renamed from: e  reason: collision with root package name */
    private final y1 f10366e;

    /* renamed from: f  reason: collision with root package name */
    private final j1 f10367f;

    /* renamed from: g  reason: collision with root package name */
    private final r0 f10368g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10369h;

    /* renamed from: i  reason: collision with root package name */
    private final v4.b f10370i;

    /* renamed from: j  reason: collision with root package name */
    private final t2 f10371j;

    /* renamed from: k  reason: collision with root package name */
    private final Handler f10372k = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public p3(e0 e0Var, com.google.android.play.core.internal.g1 g1Var, y yVar, b5.k kVar, y1 y1Var, j1 j1Var, r0 r0Var, com.google.android.play.core.internal.g1 g1Var2, v4.b bVar, t2 t2Var) {
        this.f10362a = e0Var;
        this.f10363b = g1Var;
        this.f10364c = yVar;
        this.f10365d = kVar;
        this.f10366e = y1Var;
        this.f10367f = j1Var;
        this.f10368g = r0Var;
        this.f10369h = g1Var2;
        this.f10370i = bVar;
        this.f10371j = t2Var;
    }

    private final void e() {
        ((Executor) this.f10369h.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.o3
            @Override // java.lang.Runnable
            public final void run() {
                p3.this.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void c() {
        d5.d g10 = ((c4) this.f10363b.zza()).g(this.f10362a.G());
        final e0 e0Var = this.f10362a;
        e0Var.getClass();
        g10.c((Executor) this.f10369h.zza(), new d5.c() { // from class: com.google.android.play.core.assetpacks.n3
            @Override // d5.c
            public final void onSuccess(Object obj) {
                e0.this.c((List) obj);
            }
        });
        g10.b((Executor) this.f10369h.zza(), new d5.b() { // from class: com.google.android.play.core.assetpacks.m3
            @Override // d5.b
            public final void a(Exception exc) {
                p3.f10361l.e(String.format("Could not sync active asset packs. %s", exc), new Object[0]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(boolean z10) {
        boolean e10 = this.f10364c.e();
        this.f10364c.c(z10);
        if (!z10 || e10) {
            return;
        }
        e();
    }
}
