package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zaa extends AbstractSafeParcelable implements i {
    public static final Parcelable.Creator<zaa> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    final int f10117a;
    private int zab;
    @Nullable
    private Intent zac;

    public zaa() {
        this(2, 0, null);
    }

    @Override // com.google.android.gms.common.api.i
    public final Status getStatus() {
        return this.zab == 0 ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f10117a);
        x3.a.k(parcel, 2, this.zab);
        x3.a.p(parcel, 3, this.zac, i9, false);
        x3.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaa(int i9, int i10, @Nullable Intent intent) {
        this.f10117a = i9;
        this.zab = i10;
        this.zac = intent;
    }
}
