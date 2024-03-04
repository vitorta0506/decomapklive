package com.google.android.gms.internal.auth;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zzbb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbb> CREATOR = new f();

    /* renamed from: a  reason: collision with root package name */
    final int f7912a = 1;
    public final String zzb;
    public final PendingIntent zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbb(int i9, String str, PendingIntent pendingIntent) {
        this.zzb = (String) com.google.android.gms.common.internal.p.j(str);
        this.zzc = (PendingIntent) com.google.android.gms.common.internal.p.j(pendingIntent);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7912a);
        x3.a.q(parcel, 2, this.zzb, false);
        x3.a.p(parcel, 3, this.zzc, i9, false);
        x3.a.b(parcel, a10);
    }
}
