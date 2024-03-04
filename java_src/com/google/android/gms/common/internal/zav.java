package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zav> CREATOR = new o0();

    /* renamed from: a  reason: collision with root package name */
    final int f7801a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    final IBinder f7802b;
    private final ConnectionResult zac;
    private final boolean zad;
    private final boolean zae;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zav(int i9, @Nullable IBinder iBinder, ConnectionResult connectionResult, boolean z10, boolean z11) {
        this.f7801a = i9;
        this.f7802b = iBinder;
        this.zac = connectionResult;
        this.zad = z10;
        this.zae = z11;
    }

    public final ConnectionResult I() {
        return this.zac;
    }

    @Nullable
    public final i K() {
        IBinder iBinder = this.f7802b;
        if (iBinder == null) {
            return null;
        }
        return i.a.f(iBinder);
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof zav) {
            zav zavVar = (zav) obj;
            return this.zac.equals(zavVar.zac) && n.b(K(), zavVar.K());
        }
        return false;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7801a);
        x3.a.j(parcel, 2, this.f7802b, false);
        x3.a.p(parcel, 3, this.zac, i9, false);
        x3.a.c(parcel, 4, this.zad);
        x3.a.c(parcel, 5, this.zae);
        x3.a.b(parcel, a10);
    }
}
