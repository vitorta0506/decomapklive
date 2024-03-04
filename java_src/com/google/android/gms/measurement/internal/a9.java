package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class a9 implements j9 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d9 f9277a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a9(d9 d9Var) {
        this.f9277a = d9Var;
    }

    @Override // com.google.android.gms.measurement.internal.j9
    public final void a(String str, String str2, Bundle bundle) {
        n4 n4Var;
        n4 n4Var2;
        if (!TextUtils.isEmpty(str)) {
            this.f9277a.a().z(new z8(this, str, "_err", bundle));
            return;
        }
        d9 d9Var = this.f9277a;
        n4Var = d9Var.f9363l;
        if (n4Var != null) {
            n4Var2 = d9Var.f9363l;
            n4Var2.b().r().b("AppId not known when logging event", "_err");
        }
    }
}
