package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class BeginSignInResult extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<BeginSignInResult> CREATOR = new q3.a();
    private final PendingIntent zba;

    public BeginSignInResult(@NonNull PendingIntent pendingIntent) {
        this.zba = (PendingIntent) p.j(pendingIntent);
    }

    @NonNull
    public PendingIntent I() {
        return this.zba;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.p(parcel, 1, I(), i9, false);
        x3.a.b(parcel, a10);
    }
}
