package com.xiaomi.mipush.sdk;

import android.text.TextUtils;
/* loaded from: classes5.dex */
class r0 {

    /* renamed from: a  reason: collision with root package name */
    int f36286a = 0;

    /* renamed from: b  reason: collision with root package name */
    String f36287b = "";

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof r0)) {
            return false;
        }
        r0 r0Var = (r0) obj;
        return !TextUtils.isEmpty(r0Var.f36287b) && r0Var.f36287b.equals(this.f36287b);
    }
}
