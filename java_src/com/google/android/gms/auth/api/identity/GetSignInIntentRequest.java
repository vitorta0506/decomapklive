package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class GetSignInIntentRequest extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<GetSignInIntentRequest> CREATOR = new c();
    private final String zba;
    @Nullable
    private final String zbb;
    @Nullable
    private String zbc;
    @Nullable
    private final String zbd;
    private final boolean zbe;
    private final int zbf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GetSignInIntentRequest(String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, boolean z10, int i9) {
        p.j(str);
        this.zba = str;
        this.zbb = str2;
        this.zbc = str3;
        this.zbd = str4;
        this.zbe = z10;
        this.zbf = i9;
    }

    @Nullable
    public String I() {
        return this.zbb;
    }

    @Nullable
    public String K() {
        return this.zbd;
    }

    @NonNull
    public String L() {
        return this.zba;
    }

    public boolean M() {
        return this.zbe;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof GetSignInIntentRequest) {
            GetSignInIntentRequest getSignInIntentRequest = (GetSignInIntentRequest) obj;
            return n.b(this.zba, getSignInIntentRequest.zba) && n.b(this.zbd, getSignInIntentRequest.zbd) && n.b(this.zbb, getSignInIntentRequest.zbb) && n.b(Boolean.valueOf(this.zbe), Boolean.valueOf(getSignInIntentRequest.zbe)) && this.zbf == getSignInIntentRequest.zbf;
        }
        return false;
    }

    public int hashCode() {
        return n.c(this.zba, this.zbb, this.zbd, Boolean.valueOf(this.zbe), Integer.valueOf(this.zbf));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 1, L(), false);
        x3.a.q(parcel, 2, I(), false);
        x3.a.q(parcel, 3, this.zbc, false);
        x3.a.q(parcel, 4, K(), false);
        x3.a.c(parcel, 5, M());
        x3.a.k(parcel, 6, this.zbf);
        x3.a.b(parcel, a10);
    }
}
