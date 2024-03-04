package com.google.android.gms.measurement.internal;

import android.os.Handler;
import androidx.annotation.WorkerThread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class k8 {

    /* renamed from: a  reason: collision with root package name */
    private j8 f9580a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ o8 f9581b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k8(o8 o8Var) {
        this.f9581b = o8Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a(long j10) {
        Handler handler;
        this.f9580a = new j8(this, this.f9581b.f9432a.c().a(), j10);
        handler = this.f9581b.f9733c;
        handler.postDelayed(this.f9580a, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void b() {
        Handler handler;
        this.f9581b.h();
        j8 j8Var = this.f9580a;
        if (j8Var != null) {
            handler = this.f9581b.f9733c;
            handler.removeCallbacks(j8Var);
        }
        this.f9581b.f9432a.F().f9967q.a(false);
    }
}
