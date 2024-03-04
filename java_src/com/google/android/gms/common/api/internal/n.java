package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class n implements d.e {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ o f7572a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(o oVar) {
        this.f7572a = oVar;
    }

    @Override // com.google.android.gms.common.internal.d.e
    public final void a() {
        Handler handler;
        handler = this.f7572a.f7585m.f7533p;
        handler.post(new m(this));
    }
}
