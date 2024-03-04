package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes2.dex */
final class w5 extends t6 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f8400a;

    /* renamed from: b  reason: collision with root package name */
    private final c7 f8401b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w5(Context context, c7 c7Var) {
        Objects.requireNonNull(context, "Null context");
        this.f8400a = context;
        this.f8401b = c7Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.t6
    public final Context a() {
        return this.f8400a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.t6
    public final c7 b() {
        return this.f8401b;
    }

    public final boolean equals(Object obj) {
        c7 c7Var;
        if (obj == this) {
            return true;
        }
        if (obj instanceof t6) {
            t6 t6Var = (t6) obj;
            if (this.f8400a.equals(t6Var.a()) && ((c7Var = this.f8401b) != null ? c7Var.equals(t6Var.b()) : t6Var.b() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f8400a.hashCode() ^ 1000003) * 1000003;
        c7 c7Var = this.f8401b;
        return hashCode ^ (c7Var == null ? 0 : c7Var.hashCode());
    }

    public final String toString() {
        String obj = this.f8400a.toString();
        String valueOf = String.valueOf(this.f8401b);
        return "FlagsContext{context=" + obj + ", hermeticFileOverrides=" + valueOf + "}";
    }
}
