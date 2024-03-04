package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class BeginSignInRequest extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<BeginSignInRequest> CREATOR = new a();
    private final PasswordRequestOptions zba;
    private final GoogleIdTokenRequestOptions zbb;
    @Nullable
    private final String zbc;
    private final boolean zbd;
    private final int zbe;

    /* loaded from: classes2.dex */
    public static final class GoogleIdTokenRequestOptions extends AbstractSafeParcelable {
        @NonNull
        public static final Parcelable.Creator<GoogleIdTokenRequestOptions> CREATOR = new d();
        private final boolean zba;
        @Nullable
        private final String zbb;
        @Nullable
        private final String zbc;
        private final boolean zbd;
        @Nullable
        private final String zbe;
        @Nullable
        private final List zbf;
        private final boolean zbg;

        /* JADX INFO: Access modifiers changed from: package-private */
        public GoogleIdTokenRequestOptions(boolean z10, @Nullable String str, @Nullable String str2, boolean z11, @Nullable String str3, @Nullable List list, boolean z12) {
            boolean z13 = true;
            if (z11 && z12) {
                z13 = false;
            }
            p.b(z13, "filterByAuthorizedAccounts and requestVerifiedPhoneNumber must not both be true; the Verified Phone Number feature only works in sign-ups.");
            this.zba = z10;
            if (z10) {
                p.k(str, "serverClientId must be provided if Google ID tokens are requested");
            }
            this.zbb = str;
            this.zbc = str2;
            this.zbd = z11;
            Parcelable.Creator<BeginSignInRequest> creator = BeginSignInRequest.CREATOR;
            ArrayList arrayList = null;
            if (list != null && !list.isEmpty()) {
                arrayList = new ArrayList(list);
                Collections.sort(arrayList);
            }
            this.zbf = arrayList;
            this.zbe = str3;
            this.zbg = z12;
        }

        public boolean I() {
            return this.zbd;
        }

        @Nullable
        public List<String> K() {
            return this.zbf;
        }

        @Nullable
        public String L() {
            return this.zbe;
        }

        @Nullable
        public String M() {
            return this.zbc;
        }

        @Nullable
        public String P() {
            return this.zbb;
        }

        public boolean R() {
            return this.zba;
        }

        public boolean c0() {
            return this.zbg;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof GoogleIdTokenRequestOptions) {
                GoogleIdTokenRequestOptions googleIdTokenRequestOptions = (GoogleIdTokenRequestOptions) obj;
                return this.zba == googleIdTokenRequestOptions.zba && n.b(this.zbb, googleIdTokenRequestOptions.zbb) && n.b(this.zbc, googleIdTokenRequestOptions.zbc) && this.zbd == googleIdTokenRequestOptions.zbd && n.b(this.zbe, googleIdTokenRequestOptions.zbe) && n.b(this.zbf, googleIdTokenRequestOptions.zbf) && this.zbg == googleIdTokenRequestOptions.zbg;
            }
            return false;
        }

        public int hashCode() {
            return n.c(Boolean.valueOf(this.zba), this.zbb, this.zbc, Boolean.valueOf(this.zbd), this.zbe, this.zbf, Boolean.valueOf(this.zbg));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i9) {
            int a10 = x3.a.a(parcel);
            x3.a.c(parcel, 1, R());
            x3.a.q(parcel, 2, P(), false);
            x3.a.q(parcel, 3, M(), false);
            x3.a.c(parcel, 4, I());
            x3.a.q(parcel, 5, L(), false);
            x3.a.s(parcel, 6, K(), false);
            x3.a.c(parcel, 7, c0());
            x3.a.b(parcel, a10);
        }
    }

    /* loaded from: classes2.dex */
    public static final class PasswordRequestOptions extends AbstractSafeParcelable {
        @NonNull
        public static final Parcelable.Creator<PasswordRequestOptions> CREATOR = new e();
        private final boolean zba;

        /* JADX INFO: Access modifiers changed from: package-private */
        public PasswordRequestOptions(boolean z10) {
            this.zba = z10;
        }

        public boolean I() {
            return this.zba;
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof PasswordRequestOptions) && this.zba == ((PasswordRequestOptions) obj).zba;
        }

        public int hashCode() {
            return n.c(Boolean.valueOf(this.zba));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i9) {
            int a10 = x3.a.a(parcel);
            x3.a.c(parcel, 1, I());
            x3.a.b(parcel, a10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BeginSignInRequest(PasswordRequestOptions passwordRequestOptions, GoogleIdTokenRequestOptions googleIdTokenRequestOptions, @Nullable String str, boolean z10, int i9) {
        this.zba = (PasswordRequestOptions) p.j(passwordRequestOptions);
        this.zbb = (GoogleIdTokenRequestOptions) p.j(googleIdTokenRequestOptions);
        this.zbc = str;
        this.zbd = z10;
        this.zbe = i9;
    }

    @NonNull
    public GoogleIdTokenRequestOptions I() {
        return this.zbb;
    }

    @NonNull
    public PasswordRequestOptions K() {
        return this.zba;
    }

    public boolean L() {
        return this.zbd;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof BeginSignInRequest) {
            BeginSignInRequest beginSignInRequest = (BeginSignInRequest) obj;
            return n.b(this.zba, beginSignInRequest.zba) && n.b(this.zbb, beginSignInRequest.zbb) && n.b(this.zbc, beginSignInRequest.zbc) && this.zbd == beginSignInRequest.zbd && this.zbe == beginSignInRequest.zbe;
        }
        return false;
    }

    public int hashCode() {
        return n.c(this.zba, this.zbb, this.zbc, Boolean.valueOf(this.zbd));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.p(parcel, 1, K(), i9, false);
        x3.a.p(parcel, 2, I(), i9, false);
        x3.a.q(parcel, 3, this.zbc, false);
        x3.a.c(parcel, 4, L());
        x3.a.k(parcel, 5, this.zbe);
        x3.a.b(parcel, a10);
    }
}
