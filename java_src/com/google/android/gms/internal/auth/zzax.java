package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zzax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzax> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    final int f7910a = 1;
    public final String zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzax(int i9, String str) {
        this.zzb = (String) com.google.android.gms.common.internal.p.j(str);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7910a);
        x3.a.q(parcel, 2, this.zzb, false);
        x3.a.b(parcel, a10);
    }
}
