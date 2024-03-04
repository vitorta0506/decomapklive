package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class MethodInvocation extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<MethodInvocation> CREATOR = new i0();
    private final int zaa;
    private final int zab;
    private final int zac;
    private final long zad;
    private final long zae;
    @Nullable
    private final String zaf;
    @Nullable
    private final String zag;
    private final int zah;
    private final int zai;

    public MethodInvocation(int i9, int i10, int i11, long j10, long j11, @Nullable String str, @Nullable String str2, int i12, int i13) {
        this.zaa = i9;
        this.zab = i10;
        this.zac = i11;
        this.zad = j10;
        this.zae = j11;
        this.zaf = str;
        this.zag = str2;
        this.zah = i12;
        this.zai = i13;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.zaa);
        x3.a.k(parcel, 2, this.zab);
        x3.a.k(parcel, 3, this.zac);
        x3.a.m(parcel, 4, this.zad);
        x3.a.m(parcel, 5, this.zae);
        x3.a.q(parcel, 6, this.zaf, false);
        x3.a.q(parcel, 7, this.zag, false);
        x3.a.k(parcel, 8, this.zah);
        x3.a.k(parcel, 9, this.zai);
        x3.a.b(parcel, a10);
    }
}
