package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class SavePasswordResult extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<SavePasswordResult> CREATOR = new q3.c();
    private final PendingIntent zba;

    public SavePasswordResult(@NonNull PendingIntent pendingIntent) {
        this.zba = (PendingIntent) p.j(pendingIntent);
    }

    @NonNull
    public PendingIntent I() {
        return this.zba;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof SavePasswordResult) {
            return n.b(this.zba, ((SavePasswordResult) obj).zba);
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
