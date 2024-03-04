package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes2.dex */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    final int f7840a;

    /* renamed from: b  reason: collision with root package name */
    final String f7841b;

    /* renamed from: c  reason: collision with root package name */
    final FastJsonResponse.Field f7842c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zam(int i9, String str, FastJsonResponse.Field field) {
        this.f7840a = i9;
        this.f7841b = str;
        this.f7842c = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7840a);
        x3.a.q(parcel, 2, this.f7841b, false);
        x3.a.p(parcel, 3, this.f7842c, i9, false);
        x3.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zam(String str, FastJsonResponse.Field field) {
        this.f7840a = 1;
        this.f7841b = str;
        this.f7842c = field;
    }
}
