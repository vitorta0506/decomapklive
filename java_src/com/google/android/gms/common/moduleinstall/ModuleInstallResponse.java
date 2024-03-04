package com.google.android.gms.common.moduleinstall;

import a4.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import x3.a;
/* loaded from: classes2.dex */
public class ModuleInstallResponse extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<ModuleInstallResponse> CREATOR = new c();
    private final int zaa;
    private final boolean zab;

    public ModuleInstallResponse(int i9, boolean z10) {
        this.zaa = i9;
        this.zab = z10;
    }

    public int I() {
        return this.zaa;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = a.a(parcel);
        a.k(parcel, 1, I());
        a.c(parcel, 2, this.zab);
        a.b(parcel, a10);
    }
}
