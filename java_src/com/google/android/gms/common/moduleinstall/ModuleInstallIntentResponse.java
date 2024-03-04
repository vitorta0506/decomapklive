package com.google.android.gms.common.moduleinstall;

import a4.b;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import x3.a;
/* loaded from: classes2.dex */
public class ModuleInstallIntentResponse extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<ModuleInstallIntentResponse> CREATOR = new b();
    @Nullable
    private final PendingIntent zaa;

    public ModuleInstallIntentResponse(@Nullable PendingIntent pendingIntent) {
        this.zaa = pendingIntent;
    }

    @Nullable
    public PendingIntent I() {
        return this.zaa;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = a.a(parcel);
        a.p(parcel, 1, I(), i9, false);
        a.b(parcel, a10);
    }
}
