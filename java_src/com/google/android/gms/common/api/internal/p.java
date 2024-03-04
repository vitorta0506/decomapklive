package com.google.android.gms.common.api.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private final v3.b f7586a;

    /* renamed from: b  reason: collision with root package name */
    private final Feature f7587b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ p(v3.b bVar, Feature feature, v3.p pVar) {
        this.f7586a = bVar;
        this.f7587b = feature;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj != null && (obj instanceof p)) {
            p pVar = (p) obj;
            if (com.google.android.gms.common.internal.n.b(this.f7586a, pVar.f7586a) && com.google.android.gms.common.internal.n.b(this.f7587b, pVar.f7587b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.n.c(this.f7586a, this.f7587b);
    }

    public final String toString() {
        return com.google.android.gms.common.internal.n.d(this).a("key", this.f7586a).a("feature", this.f7587b).toString();
    }
}
