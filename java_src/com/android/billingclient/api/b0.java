package com.android.billingclient.api;

import android.text.TextUtils;
/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: a  reason: collision with root package name */
    private String f3940a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ b0(a0 a0Var) {
    }

    public final b0 a(String str) {
        this.f3940a = str;
        return this;
    }

    public final c0 b() {
        if (!TextUtils.isEmpty(this.f3940a)) {
            return new c0(this.f3940a, null, null);
        }
        throw new IllegalArgumentException("SKU must be set.");
    }
}
