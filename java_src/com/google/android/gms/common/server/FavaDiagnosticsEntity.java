package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import c4.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f7823a;
    @NonNull
    public final String zab;
    public final int zac;

    public FavaDiagnosticsEntity(int i9, @NonNull String str, int i10) {
        this.f7823a = i9;
        this.zab = str;
        this.zac = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7823a);
        x3.a.q(parcel, 2, this.zab, false);
        x3.a.k(parcel, 3, this.zac);
        x3.a.b(parcel, a10);
    }
}
