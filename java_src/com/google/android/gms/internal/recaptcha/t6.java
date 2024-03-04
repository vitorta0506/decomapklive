package com.google.android.gms.internal.recaptcha;

import androidx.collection.SimpleArrayMap;
/* loaded from: classes2.dex */
public class t6 {

    /* renamed from: a  reason: collision with root package name */
    private final SimpleArrayMap f9060a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f9061b = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final t6 a() {
        if (!this.f9061b) {
            this.f9061b = true;
            return this;
        }
        throw new IllegalStateException("Already frozen");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        return this.f9061b;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SpanExtras<");
        for (t6 t6Var = this; t6Var != null; t6Var = null) {
            for (int i9 = 0; i9 < t6Var.f9060a.size(); i9++) {
                sb2.append(this.f9060a.valueAt(i9));
                sb2.append("], ");
            }
        }
        sb2.append(">");
        return sb2.toString();
    }
}
