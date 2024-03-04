package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zac> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    final int f7826a;

    /* renamed from: b  reason: collision with root package name */
    final String f7827b;

    /* renamed from: c  reason: collision with root package name */
    final int f7828c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zac(int i9, String str, int i10) {
        this.f7826a = i9;
        this.f7827b = str;
        this.f7828c = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7826a);
        x3.a.q(parcel, 2, this.f7827b, false);
        x3.a.k(parcel, 3, this.f7828c);
        x3.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zac(String str, int i9) {
        this.f7826a = 1;
        this.f7827b = str;
        this.f7828c = i9;
    }
}
