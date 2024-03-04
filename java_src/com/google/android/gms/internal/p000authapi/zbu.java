package com.google.android.gms.internal.p000authapi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import j4.i;
import x3.a;
/* renamed from: com.google.android.gms.internal.auth-api.zbu  reason: invalid package */
/* loaded from: classes2.dex */
public final class zbu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zbu> CREATOR = new i();
    private final Credential zba;

    public zbu(Credential credential) {
        this.zba = credential;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = a.a(parcel);
        a.p(parcel, 1, this.zba, i9, false);
        a.b(parcel, a10);
    }
}
