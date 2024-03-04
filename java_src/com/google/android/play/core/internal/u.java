package com.google.android.play.core.internal;

import android.util.Log;
import java.util.List;
/* loaded from: classes2.dex */
final class u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ List f10613a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ b5.e f10614b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ v f10615c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(v vVar, List list, b5.e eVar) {
        this.f10615c = vVar;
        this.f10613a = list;
        this.f10614b = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x xVar;
        try {
            xVar = this.f10615c.f10621c;
            if (xVar.b(this.f10613a)) {
                v.d(this.f10615c, this.f10614b);
            } else {
                v.c(this.f10615c, this.f10613a, this.f10614b);
            }
        } catch (Exception e10) {
            Log.e("SplitCompat", "Error checking verified files.", e10);
            this.f10614b.F(-11);
        }
    }
}
