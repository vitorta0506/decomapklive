package com.google.android.exoplayer2.drm;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.s1;
import com.google.common.collect.e9;
import j3.i;
import j3.r;
import java.util.Map;
/* loaded from: classes.dex */
public final class j implements x {

    /* renamed from: a  reason: collision with root package name */
    private final Object f5819a = new Object();
    @GuardedBy("lock")

    /* renamed from: b  reason: collision with root package name */
    private s1.f f5820b;
    @GuardedBy("lock")

    /* renamed from: c  reason: collision with root package name */
    private u f5821c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private i.a f5822d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f5823e;

    @RequiresApi(18)
    private u b(s1.f fVar) {
        i.a aVar = this.f5822d;
        if (aVar == null) {
            aVar = new r.b().c(this.f5823e);
        }
        Uri uri = fVar.f6487c;
        j0 j0Var = new j0(uri == null ? null : uri.toString(), fVar.f6492h, aVar);
        e9<Map.Entry<String, String>> it = fVar.f6489e.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            j0Var.e(next.getKey(), next.getValue());
        }
        DefaultDrmSessionManager a10 = new DefaultDrmSessionManager.b().e(fVar.f6485a, i0.f5815d).b(fVar.f6490f).c(fVar.f6491g).d(com.google.common.primitives.f.j(fVar.f6494j)).a(j0Var);
        a10.E(0, fVar.c());
        return a10;
    }

    @Override // com.google.android.exoplayer2.drm.x
    public u a(s1 s1Var) {
        u uVar;
        com.google.android.exoplayer2.util.a.e(s1Var.f6453b);
        s1.f fVar = s1Var.f6453b.f6518c;
        if (fVar != null && com.google.android.exoplayer2.util.l0.f6985a >= 18) {
            synchronized (this.f5819a) {
                if (!com.google.android.exoplayer2.util.l0.c(fVar, this.f5820b)) {
                    this.f5820b = fVar;
                    this.f5821c = b(fVar);
                }
                uVar = (u) com.google.android.exoplayer2.util.a.e(this.f5821c);
            }
            return uVar;
        }
        return u.f5847a;
    }
}
