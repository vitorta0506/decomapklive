package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import com.google.android.gms.internal.recaptcha.gh;
import java.util.Objects;
/* loaded from: classes2.dex */
final class x3<T extends gh> extends i4<T> {

    /* renamed from: a  reason: collision with root package name */
    private Uri f9159a;

    /* renamed from: b  reason: collision with root package name */
    private T f9160b;

    /* renamed from: c  reason: collision with root package name */
    private z3<T> f9161c;

    /* renamed from: d  reason: collision with root package name */
    private zzkj<b4<T>> f9162d;

    /* renamed from: e  reason: collision with root package name */
    private Boolean f9163e;

    /* renamed from: f  reason: collision with root package name */
    private Boolean f9164f;

    /* renamed from: g  reason: collision with root package name */
    private Boolean f9165g;

    /* renamed from: h  reason: collision with root package name */
    private p4 f9166h;

    @Override // com.google.android.gms.internal.recaptcha.i4
    public final i4<T> a(boolean z10) {
        this.f9165g = Boolean.FALSE;
        return this;
    }

    @Override // com.google.android.gms.internal.recaptcha.i4
    public final i4<T> b(z3<T> z3Var) {
        this.f9161c = z3Var;
        return this;
    }

    @Override // com.google.android.gms.internal.recaptcha.i4
    public final i4<T> c(T t10) {
        Objects.requireNonNull(t10, "Null schema");
        this.f9160b = t10;
        return this;
    }

    @Override // com.google.android.gms.internal.recaptcha.i4
    public final i4<T> d(boolean z10) {
        this.f9164f = Boolean.FALSE;
        return this;
    }

    @Override // com.google.android.gms.internal.recaptcha.i4
    public final i4<T> e(Uri uri) {
        Objects.requireNonNull(uri, "Null uri");
        this.f9159a = uri;
        return this;
    }

    @Override // com.google.android.gms.internal.recaptcha.i4
    public final i4<T> f(boolean z10) {
        this.f9163e = Boolean.valueOf(z10);
        return this;
    }

    @Override // com.google.android.gms.internal.recaptcha.i4
    public final j4<T> g() {
        T t10;
        z3<T> z3Var;
        p4 p4Var;
        Boolean bool;
        if (this.f9162d == null) {
            this.f9162d = zzkj.zzo();
        }
        Uri uri = this.f9159a;
        if (uri != null && (t10 = this.f9160b) != null && (z3Var = this.f9161c) != null && (p4Var = this.f9166h) != null && (bool = this.f9163e) != null && this.f9164f != null && this.f9165g != null) {
            return new y3(uri, t10, z3Var, this.f9162d, p4Var, bool.booleanValue(), this.f9164f.booleanValue(), this.f9165g.booleanValue(), null, null);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.f9159a == null) {
            sb2.append(" uri");
        }
        if (this.f9160b == null) {
            sb2.append(" schema");
        }
        if (this.f9161c == null) {
            sb2.append(" handler");
        }
        if (this.f9166h == null) {
            sb2.append(" variantConfig");
        }
        if (this.f9163e == null) {
            sb2.append(" useGeneratedExtensionRegistry");
        }
        if (this.f9164f == null) {
            sb2.append(" updateSequencingBugFix");
        }
        if (this.f9165g == null) {
            sb2.append(" enableTracing");
        }
        String valueOf = String.valueOf(sb2);
        StringBuilder sb3 = new StringBuilder(valueOf.length() + 28);
        sb3.append("Missing required properties:");
        sb3.append(valueOf);
        throw new IllegalStateException(sb3.toString());
    }

    public final i4<T> h(p4 p4Var) {
        this.f9166h = p4Var;
        return this;
    }
}
