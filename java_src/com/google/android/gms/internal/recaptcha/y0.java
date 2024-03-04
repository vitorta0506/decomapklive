package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class y0 extends c1 {

    /* renamed from: b  reason: collision with root package name */
    private final zzkl<Integer, zzpy> f9187b;

    /* renamed from: c  reason: collision with root package name */
    private final zj f9188c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y0(zzkl<Integer, zzpy> zzklVar, zj zjVar) {
        this.f9187b = zzklVar;
        Objects.requireNonNull(zjVar, "Null mobileDynamicChallengeSignalsResults");
        this.f9188c = zjVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.c1
    public final zzkl<Integer, zzpy> a() {
        return this.f9187b;
    }

    @Override // com.google.android.gms.internal.recaptcha.c1
    public final zj b() {
        return this.f9188c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c1) {
            c1 c1Var = (c1) obj;
            if (this.f9187b.equals(c1Var.a()) && this.f9188c.equals(c1Var.b())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f9187b.hashCode() ^ 1000003) * 1000003) ^ this.f9188c.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f9187b);
        String valueOf2 = String.valueOf(this.f9188c);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 78 + valueOf2.length());
        sb2.append("OutOfGuardsSignalResults{signalValues=");
        sb2.append(valueOf);
        sb2.append(", mobileDynamicChallengeSignalsResults=");
        sb2.append(valueOf2);
        sb2.append("}");
        return sb2.toString();
    }
}
