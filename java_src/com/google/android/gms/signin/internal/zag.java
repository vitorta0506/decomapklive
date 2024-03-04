package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
/* loaded from: classes2.dex */
public final class zag extends AbstractSafeParcelable implements i {
    public static final Parcelable.Creator<zag> CREATOR = new r4.d();
    private final List zaa;
    @Nullable
    private final String zab;

    public zag(List list, @Nullable String str) {
        this.zaa = list;
        this.zab = str;
    }

    @Override // com.google.android.gms.common.api.i
    public final Status getStatus() {
        return this.zab != null ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.s(parcel, 1, this.zaa, false);
        x3.a.q(parcel, 2, this.zab, false);
        x3.a.b(parcel, a10);
    }
}
