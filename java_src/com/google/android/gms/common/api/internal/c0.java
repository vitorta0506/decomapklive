package com.google.android.gms.common.api.internal;

import android.app.Dialog;
/* loaded from: classes2.dex */
final class c0 extends v3.r {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Dialog f7535a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d0 f7536b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(d0 d0Var, Dialog dialog) {
        this.f7536b = d0Var;
        this.f7535a = dialog;
    }

    @Override // v3.r
    public final void a() {
        this.f7536b.f7545b.o();
        if (this.f7535a.isShowing()) {
            this.f7535a.dismiss();
        }
    }
}
