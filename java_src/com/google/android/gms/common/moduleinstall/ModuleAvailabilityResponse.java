package com.google.android.gms.common.moduleinstall;

import a4.a;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class ModuleAvailabilityResponse extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<ModuleAvailabilityResponse> CREATOR = new a();
    private final boolean zaa;
    private final int zab;

    public ModuleAvailabilityResponse(boolean z10, int i9) {
        this.zaa = z10;
        this.zab = i9;
    }

    public boolean I() {
        return this.zaa;
    }

    public int K() {
        return this.zab;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.c(parcel, 1, I());
        x3.a.k(parcel, 2, K());
        x3.a.b(parcel, a10);
    }
}
