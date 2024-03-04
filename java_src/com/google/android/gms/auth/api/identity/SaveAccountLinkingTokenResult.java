package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class SaveAccountLinkingTokenResult extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<SaveAccountLinkingTokenResult> CREATOR = new q3.b();
    @Nullable
    private final PendingIntent zba;

    public SaveAccountLinkingTokenResult(@Nullable PendingIntent pendingIntent) {
        this.zba = pendingIntent;
    }

    @Nullable
    public PendingIntent I() {
        return this.zba;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof SaveAccountLinkingTokenResult) {
            return n.b(this.zba, ((SaveAccountLinkingTokenResult) obj).zba);
        }
        return false;
    }

    public int hashCode() {
        return n.c(this.zba);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.p(parcel, 1, I(), i9, false);
        x3.a.b(parcel, a10);
    }
}
