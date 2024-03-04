package com.google.android.play.core.assetpacks;

import java.io.File;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c3 {

    /* renamed from: a  reason: collision with root package name */
    private final e0 f10171a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10172b;

    /* renamed from: c  reason: collision with root package name */
    private final y1 f10173c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10174d;

    /* renamed from: e  reason: collision with root package name */
    private final j1 f10175e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c3(e0 e0Var, com.google.android.play.core.internal.g1 g1Var, y1 y1Var, com.google.android.play.core.internal.g1 g1Var2, j1 j1Var) {
        this.f10171a = e0Var;
        this.f10172b = g1Var;
        this.f10173c = y1Var;
        this.f10174d = g1Var2;
        this.f10175e = j1Var;
    }

    public final void a(final a3 a3Var) {
        File u10 = this.f10171a.u(a3Var.f10148b, a3Var.f10149c, a3Var.f10151e);
        if (u10.exists()) {
            File u11 = this.f10171a.u(a3Var.f10148b, a3Var.f10150d, a3Var.f10151e);
            u11.mkdirs();
            if (u10.renameTo(u11)) {
                ((Executor) this.f10174d.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.b3
                    @Override // java.lang.Runnable
                    public final void run() {
                        c3.this.b(a3Var);
                    }
                });
                this.f10173c.i(a3Var.f10148b, a3Var.f10150d, a3Var.f10151e);
                this.f10175e.c(a3Var.f10148b);
                ((c4) this.f10172b.zza()).a(a3Var.f10147a, a3Var.f10148b);
                return;
            }
            throw new f1(String.format("Cannot promote pack %s from %s to %s", a3Var.f10148b, u10.getAbsolutePath(), u11.getAbsolutePath()), a3Var.f10147a);
        }
        throw new f1(String.format("Cannot find pack files to promote for pack %s at %s", a3Var.f10148b, u10.getAbsolutePath()), a3Var.f10147a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(a3 a3Var) {
        this.f10171a.b(a3Var.f10148b, a3Var.f10150d, a3Var.f10151e);
    }
}
