package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import com.google.android.gms.internal.recaptcha.gh;
/* loaded from: classes2.dex */
final class y3<T extends gh> extends j4<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f9189a;

    /* renamed from: b  reason: collision with root package name */
    private final T f9190b;

    /* renamed from: c  reason: collision with root package name */
    private final z3<T> f9191c;

    /* renamed from: d  reason: collision with root package name */
    private final zzkj<b4<T>> f9192d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f9193e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f9194f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f9195g;

    /* renamed from: h  reason: collision with root package name */
    private final p4 f9196h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ y3(Uri uri, gh ghVar, z3 z3Var, zzkj zzkjVar, p4 p4Var, boolean z10, boolean z11, boolean z12, w3 w3Var, byte[] bArr) {
        this.f9189a = uri;
        this.f9190b = ghVar;
        this.f9191c = z3Var;
        this.f9192d = zzkjVar;
        this.f9196h = p4Var;
        this.f9193e = z10;
        this.f9194f = z11;
        this.f9195g = z12;
    }

    @Override // com.google.android.gms.internal.recaptcha.j4
    public final Uri a() {
        return this.f9189a;
    }

    @Override // com.google.android.gms.internal.recaptcha.j4
    public final z3<T> b() {
        return this.f9191c;
    }

    @Override // com.google.android.gms.internal.recaptcha.j4
    public final zzkj<b4<T>> c() {
        return this.f9192d;
    }

    @Override // com.google.android.gms.internal.recaptcha.j4
    public final T d() {
        return this.f9190b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.j4
    public final boolean e() {
        return this.f9195g;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j4) {
            j4 j4Var = (j4) obj;
            if (this.f9189a.equals(j4Var.a()) && this.f9190b.equals(j4Var.d()) && this.f9191c.equals(j4Var.b()) && this.f9192d.equals(j4Var.c()) && this.f9196h.equals(j4Var.h()) && this.f9193e == j4Var.g() && this.f9194f == j4Var.f() && this.f9195g == j4Var.e()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.recaptcha.j4
    public final boolean f() {
        return this.f9194f;
    }

    @Override // com.google.android.gms.internal.recaptcha.j4
    public final boolean g() {
        return this.f9193e;
    }

    @Override // com.google.android.gms.internal.recaptcha.j4
    public final p4 h() {
        return this.f9196h;
    }

    public final int hashCode() {
        return ((((((((((((((this.f9189a.hashCode() ^ 1000003) * 1000003) ^ this.f9190b.hashCode()) * 1000003) ^ this.f9191c.hashCode()) * 1000003) ^ this.f9192d.hashCode()) * 1000003) ^ this.f9196h.hashCode()) * 1000003) ^ (true != this.f9193e ? 1237 : 1231)) * 1000003) ^ (true != this.f9194f ? 1237 : 1231)) * 1000003) ^ (true == this.f9195g ? 1231 : 1237);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f9189a);
        String valueOf2 = String.valueOf(this.f9190b);
        String valueOf3 = String.valueOf(this.f9191c);
        String valueOf4 = String.valueOf(this.f9192d);
        String valueOf5 = String.valueOf(this.f9196h);
        boolean z10 = this.f9193e;
        boolean z11 = this.f9194f;
        boolean z12 = this.f9195g;
        int length = valueOf.length();
        int length2 = valueOf2.length();
        int length3 = valueOf3.length();
        StringBuilder sb2 = new StringBuilder(length + 162 + length2 + length3 + valueOf4.length() + valueOf5.length());
        sb2.append("ProtoDataStoreConfig{uri=");
        sb2.append(valueOf);
        sb2.append(", schema=");
        sb2.append(valueOf2);
        sb2.append(", handler=");
        sb2.append(valueOf3);
        sb2.append(", migrations=");
        sb2.append(valueOf4);
        sb2.append(", variantConfig=");
        sb2.append(valueOf5);
        sb2.append(", useGeneratedExtensionRegistry=");
        sb2.append(z10);
        sb2.append(", updateSequencingBugFix=");
        sb2.append(z11);
        sb2.append(", enableTracing=");
        sb2.append(z12);
        sb2.append("}");
        return sb2.toString();
    }
}
