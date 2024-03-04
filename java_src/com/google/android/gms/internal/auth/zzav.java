package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zzav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzav> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    final int f7909a = 1;
    public final String zzb;
    public final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzav(int i9, String str, int i10) {
        this.zzb = (String) com.google.android.gms.common.internal.p.j(str);
        this.zzc = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7909a);
        x3.a.q(parcel, 2, this.zzb, false);
        x3.a.k(parcel, 3, this.zzc);
        x3.a.b(parcel, a10);
    }
}
