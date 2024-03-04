package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class x0 extends b1 {

    /* renamed from: b  reason: collision with root package name */
    private final zzkj<zzvj> f9152b;

    /* renamed from: c  reason: collision with root package name */
    private final xj f9153c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x0(zzkj<zzvj> zzkjVar, xj xjVar) {
        Objects.requireNonNull(zzkjVar, "Null requestedSignals");
        this.f9152b = zzkjVar;
        Objects.requireNonNull(xjVar, "Null mobileDynamicChallengeSignals");
        this.f9153c = xjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.b1
    public final zzkj<zzvj> a() {
        return this.f9152b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.b1
    public final xj b() {
        return this.f9153c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b1) {
            b1 b1Var = (b1) obj;
            if (this.f9152b.equals(b1Var.a()) && this.f9153c.equals(b1Var.b())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f9152b.hashCode() ^ 1000003) * 1000003) ^ this.f9153c.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f9152b);
        String valueOf2 = String.valueOf(this.f9153c);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 72 + valueOf2.length());
        sb2.append("OutOfGuardsSignalData{requestedSignals=");
        sb2.append(valueOf);
        sb2.append(", mobileDynamicChallengeSignals=");
        sb2.append(valueOf2);
        sb2.append("}");
        return sb2.toString();
    }
}
