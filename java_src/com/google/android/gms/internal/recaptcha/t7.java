package com.google.android.gms.internal.recaptcha;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class t7 {

    /* renamed from: a  reason: collision with root package name */
    private final String f9062a;

    /* renamed from: b  reason: collision with root package name */
    private final s7 f9063b;

    /* renamed from: c  reason: collision with root package name */
    private s7 f9064c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ t7(String str, r7 r7Var) {
        s7 s7Var = new s7(null);
        this.f9063b = s7Var;
        this.f9064c = s7Var;
        Objects.requireNonNull(str);
        this.f9062a = str;
    }

    public final t7 a(Object obj) {
        s7 s7Var = new s7(null);
        this.f9064c.f9038b = s7Var;
        this.f9064c = s7Var;
        s7Var.f9037a = obj;
        return this;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(32);
        sb2.append(this.f9062a);
        sb2.append('{');
        s7 s7Var = this.f9063b.f9038b;
        String str = "";
        while (s7Var != null) {
            Object obj = s7Var.f9037a;
            sb2.append(str);
            if (obj != null && obj.getClass().isArray()) {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb2.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            } else {
                sb2.append(obj);
            }
            s7Var = s7Var.f9038b;
            str = ", ";
        }
        sb2.append('}');
        return sb2.toString();
    }
}
