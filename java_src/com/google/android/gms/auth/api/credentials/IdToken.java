package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
@Deprecated
/* loaded from: classes2.dex */
public final class IdToken extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<IdToken> CREATOR = new p3.b();
    @NonNull
    private final String zba;
    @NonNull
    private final String zbb;

    public IdToken(@NonNull String str, @NonNull String str2) {
        p.b(!TextUtils.isEmpty(str), "account type string cannot be null or empty");
        p.b(!TextUtils.isEmpty(str2), "id token string cannot be null or empty");
        this.zba = str;
        this.zbb = str2;
    }

    @NonNull
    public String I() {
        return this.zba;
    }

    @NonNull
    public String K() {
        return this.zbb;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IdToken) {
            IdToken idToken = (IdToken) obj;
            return n.b(this.zba, idToken.zba) && n.b(this.zbb, idToken.zbb);
        }
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 1, I(), false);
        x3.a.q(parcel, 2, K(), false);
        x3.a.b(parcel, a10);
    }
}
