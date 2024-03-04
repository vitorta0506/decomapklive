package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
@Deprecated
/* loaded from: classes2.dex */
public final class zzaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaj> CREATOR = new a1();

    /* renamed from: a  reason: collision with root package name */
    final int f7804a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaj(int i9) {
        this.f7804a = i9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7804a);
        x3.a.b(parcel, a10);
    }
}
