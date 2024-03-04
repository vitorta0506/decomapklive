package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import kotlinx.coroutines.DebugKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class a6 implements j9 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ m6 f9266a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a6(m6 m6Var) {
        this.f9266a = m6Var;
    }

    @Override // com.google.android.gms.measurement.internal.j9
    public final void a(String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            this.f9266a.t(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_err", bundle, str);
        } else {
            this.f9266a.r(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_err", bundle);
        }
    }
}
