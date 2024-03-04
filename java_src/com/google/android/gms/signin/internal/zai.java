package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zat;
/* loaded from: classes2.dex */
public final class zai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zai> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    final int f10118a;

    /* renamed from: b  reason: collision with root package name */
    final zat f10119b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zai(int i9, zat zatVar) {
        this.f10118a = i9;
        this.f10119b = zatVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f10118a);
        x3.a.p(parcel, 2, this.f10119b, i9, false);
        x3.a.b(parcel, a10);
    }
}
