package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zzbw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbw> CREATOR = new j();

    /* renamed from: a  reason: collision with root package name */
    final int f7913a;

    /* renamed from: b  reason: collision with root package name */
    String f7914b;

    public zzbw() {
        this.f7913a = 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7913a);
        x3.a.q(parcel, 2, this.f7914b, false);
        x3.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbw(int i9, String str) {
        this.f7913a = i9;
        this.f7914b = str;
    }
}
