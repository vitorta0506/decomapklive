package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class SavePasswordRequest extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<SavePasswordRequest> CREATOR = new g();
    private final SignInPassword zba;
    @Nullable
    private final String zbb;
    private final int zbc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SavePasswordRequest(SignInPassword signInPassword, @Nullable String str, int i9) {
        this.zba = (SignInPassword) p.j(signInPassword);
        this.zbb = str;
        this.zbc = i9;
    }

    @NonNull
    public SignInPassword I() {
        return this.zba;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof SavePasswordRequest) {
            SavePasswordRequest savePasswordRequest = (SavePasswordRequest) obj;
            return n.b(this.zba, savePasswordRequest.zba) && n.b(this.zbb, savePasswordRequest.zbb) && this.zbc == savePasswordRequest.zbc;
        }
        return false;
    }

    public int hashCode() {
        return n.c(this.zba, this.zbb);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.p(parcel, 1, I(), i9, false);
        x3.a.q(parcel, 2, this.zbb, false);
        x3.a.k(parcel, 3, this.zbc);
        x3.a.b(parcel, a10);
    }
}
