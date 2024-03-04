package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.internal.recaptcha.gh;
import java.util.Objects;
/* loaded from: classes2.dex */
final class u5<T extends gh> extends v5<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f9081a;

    /* renamed from: b  reason: collision with root package name */
    private final pf f9082b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u5(T t10, pf pfVar) {
        this.f9081a = t10;
        Objects.requireNonNull(pfVar, "Null extensionRegistryLite");
        this.f9082b = pfVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.v5
    public final pf a() {
        return this.f9082b;
    }

    @Override // com.google.android.gms.internal.recaptcha.v5
    public final T b() {
        return this.f9081a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v5) {
            v5 v5Var = (v5) obj;
            if (this.f9081a.equals(v5Var.b()) && this.f9082b.equals(v5Var.a())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f9081a.hashCode() ^ 1000003) * 1000003) ^ this.f9082b.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f9081a);
        String valueOf2 = String.valueOf(this.f9082b);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 54 + valueOf2.length());
        sb2.append("ProtoSerializer{defaultValue=");
        sb2.append(valueOf);
        sb2.append(", extensionRegistryLite=");
        sb2.append(valueOf2);
        sb2.append("}");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.recaptcha.v5, com.google.android.gms.internal.recaptcha.o4
    public final /* bridge */ /* synthetic */ Object zza() {
        return this.f9081a;
    }
}
