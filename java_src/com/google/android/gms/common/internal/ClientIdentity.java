package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class ClientIdentity extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new v();
    @Nullable
    public final String packageName;
    public final int uid;

    public ClientIdentity(int i9, @Nullable String str) {
        this.uid = i9;
        this.packageName = str;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ClientIdentity) {
            ClientIdentity clientIdentity = (ClientIdentity) obj;
            return clientIdentity.uid == this.uid && n.b(clientIdentity.packageName, this.packageName);
        }
        return false;
    }

    public final int hashCode() {
        return this.uid;
    }

    @NonNull
    public final String toString() {
        int i9 = this.uid;
        String str = this.packageName;
        return i9 + CertificateUtil.DELIMITER + str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.uid);
        x3.a.q(parcel, 2, this.packageName, false);
        x3.a.b(parcel, a10);
    }
}
