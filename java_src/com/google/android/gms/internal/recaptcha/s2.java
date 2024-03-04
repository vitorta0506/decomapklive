package com.google.android.gms.internal.recaptcha;

import android.content.Context;
/* loaded from: classes2.dex */
public final class s2 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9029a;

    /* renamed from: b  reason: collision with root package name */
    private final e3 f9030b = new e3();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ s2(Context context, r2 r2Var) {
        m3.a(context != null, "Context cannot be null", new Object[0]);
        this.f9029a = context.getApplicationContext();
    }

    public final t2 b() {
        return new t2(this, null);
    }
}
