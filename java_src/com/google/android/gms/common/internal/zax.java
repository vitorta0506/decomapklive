package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zax> CREATOR = new p0();

    /* renamed from: a  reason: collision with root package name */
    final int f7803a;
    private final int zab;
    private final int zac;
    @Nullable
    @Deprecated
    private final Scope[] zad;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zax(int i9, int i10, int i11, @Nullable Scope[] scopeArr) {
        this.f7803a = i9;
        this.zab = i10;
        this.zac = i11;
        this.zad = scopeArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7803a);
        x3.a.k(parcel, 2, this.zab);
        x3.a.k(parcel, 3, this.zac);
        x3.a.t(parcel, 4, this.zad, i9, false);
        x3.a.b(parcel, a10);
    }
}
