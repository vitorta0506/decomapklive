package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<Scope> CREATOR = new n();

    /* renamed from: a  reason: collision with root package name */
    final int f7466a;
    private final String zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Scope(int i9, String str) {
        p.g(str, "scopeUri must not be null or empty");
        this.f7466a = i9;
        this.zzb = str;
    }

    @NonNull
    public String I() {
        return this.zzb;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.zzb.equals(((Scope) obj).zzb);
        }
        return false;
    }

    public int hashCode() {
        return this.zzb.hashCode();
    }

    @NonNull
    public String toString() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7466a);
        x3.a.q(parcel, 2, I(), false);
        x3.a.b(parcel, a10);
    }

    public Scope(@NonNull String str) {
        this(1, str);
    }
}
