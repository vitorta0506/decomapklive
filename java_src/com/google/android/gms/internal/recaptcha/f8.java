package com.google.android.gms.internal.recaptcha;

import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class f8 {

    /* renamed from: a  reason: collision with root package name */
    private final n7 f8669a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f8670b;

    /* renamed from: c  reason: collision with root package name */
    private final c8 f8671c;

    private f8(c8 c8Var, boolean z10, n7 n7Var, int i9, byte[] bArr) {
        this.f8671c = c8Var;
        this.f8670b = z10;
        this.f8669a = n7Var;
    }

    public static f8 c(String str) {
        return new f8(new c8(new j7("+".charAt(0))), false, l7.f8835b, Integer.MAX_VALUE, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Iterator e(f8 f8Var, CharSequence charSequence) {
        return new b8(f8Var.f8671c, f8Var, charSequence);
    }

    public final f8 b() {
        return new f8(this.f8671c, true, this.f8669a, Integer.MAX_VALUE, null);
    }

    public final Iterable<String> d(CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        return new d8(this, charSequence);
    }
}
