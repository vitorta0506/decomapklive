package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zav;
/* loaded from: classes2.dex */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new e();

    /* renamed from: a  reason: collision with root package name */
    final int f10120a;
    private final ConnectionResult zab;
    @Nullable
    private final zav zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zak(int i9, ConnectionResult connectionResult, @Nullable zav zavVar) {
        this.f10120a = i9;
        this.zab = connectionResult;
        this.zac = zavVar;
    }

    public final ConnectionResult I() {
        return this.zab;
    }

    @Nullable
    public final zav K() {
        return this.zac;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f10120a);
        x3.a.p(parcel, 2, this.zab, i9, false);
        x3.a.p(parcel, 3, this.zac, i9, false);
        x3.a.b(parcel, a10);
    }
}
