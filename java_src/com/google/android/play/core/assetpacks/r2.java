package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class r2 {

    /* renamed from: a  reason: collision with root package name */
    private final e0 f10401a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10402b;

    /* renamed from: c  reason: collision with root package name */
    private final y1 f10403c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10404d;

    /* renamed from: e  reason: collision with root package name */
    private final j1 f10405e;

    /* renamed from: f  reason: collision with root package name */
    private final v4.b f10406f;

    /* renamed from: g  reason: collision with root package name */
    private final t2 f10407g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r2(e0 e0Var, com.google.android.play.core.internal.g1 g1Var, y1 y1Var, com.google.android.play.core.internal.g1 g1Var2, j1 j1Var, v4.b bVar, t2 t2Var) {
        this.f10401a = e0Var;
        this.f10402b = g1Var;
        this.f10403c = y1Var;
        this.f10404d = g1Var2;
        this.f10405e = j1Var;
        this.f10406f = bVar;
        this.f10407g = t2Var;
    }

    public final void a(final o2 o2Var) {
        File w6 = this.f10401a.w(o2Var.f10148b, o2Var.f10353c, o2Var.f10354d);
        File y10 = this.f10401a.y(o2Var.f10148b, o2Var.f10353c, o2Var.f10354d);
        if (w6.exists() && y10.exists()) {
            File u10 = this.f10401a.u(o2Var.f10148b, o2Var.f10353c, o2Var.f10354d);
            u10.mkdirs();
            if (w6.renameTo(u10)) {
                new File(this.f10401a.u(o2Var.f10148b, o2Var.f10353c, o2Var.f10354d), "merge.tmp").delete();
                File v10 = this.f10401a.v(o2Var.f10148b, o2Var.f10353c, o2Var.f10354d);
                v10.mkdirs();
                if (y10.renameTo(v10)) {
                    if (this.f10406f.a("assetOnlyUpdates")) {
                        try {
                            this.f10407g.b(o2Var.f10148b, o2Var.f10353c, o2Var.f10354d, o2Var.f10355e);
                            ((Executor) this.f10404d.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.q2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    r2.this.b(o2Var);
                                }
                            });
                        } catch (IOException e10) {
                            throw new f1(String.format("Could not write asset pack version tag for pack %s: %s", o2Var.f10148b, e10.getMessage()), o2Var.f10147a);
                        }
                    } else {
                        final e0 e0Var = this.f10401a;
                        e0Var.getClass();
                        ((Executor) this.f10404d.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.p2
                            @Override // java.lang.Runnable
                            public final void run() {
                                e0.this.I();
                            }
                        });
                    }
                    this.f10403c.i(o2Var.f10148b, o2Var.f10353c, o2Var.f10354d);
                    this.f10405e.c(o2Var.f10148b);
                    ((c4) this.f10402b.zza()).a(o2Var.f10147a, o2Var.f10148b);
                    return;
                }
                throw new f1("Cannot move metadata files to final location.", o2Var.f10147a);
            }
            throw new f1("Cannot move merged pack files to final location.", o2Var.f10147a);
        }
        throw new f1(String.format("Cannot find pack files to move for pack %s.", o2Var.f10148b), o2Var.f10147a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(o2 o2Var) {
        this.f10401a.b(o2Var.f10148b, o2Var.f10353c, o2Var.f10354d);
    }
}
