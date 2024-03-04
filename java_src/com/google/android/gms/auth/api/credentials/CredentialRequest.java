package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
@Deprecated
/* loaded from: classes2.dex */
public final class CredentialRequest extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<CredentialRequest> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    final int f7360a;
    private final boolean zbb;
    private final String[] zbc;
    private final CredentialPickerConfig zbd;
    private final CredentialPickerConfig zbe;
    private final boolean zbf;
    @Nullable
    private final String zbg;
    @Nullable
    private final String zbh;
    private final boolean zbi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CredentialRequest(int i9, boolean z10, String[] strArr, @Nullable CredentialPickerConfig credentialPickerConfig, @Nullable CredentialPickerConfig credentialPickerConfig2, boolean z11, @Nullable String str, @Nullable String str2, boolean z12) {
        this.f7360a = i9;
        this.zbb = z10;
        this.zbc = (String[]) p.j(strArr);
        this.zbd = credentialPickerConfig == null ? new CredentialPickerConfig.a().a() : credentialPickerConfig;
        this.zbe = credentialPickerConfig2 == null ? new CredentialPickerConfig.a().a() : credentialPickerConfig2;
        if (i9 < 3) {
            this.zbf = true;
            this.zbg = null;
            this.zbh = null;
        } else {
            this.zbf = z11;
            this.zbg = str;
            this.zbh = str2;
        }
        this.zbi = z12;
    }

    @NonNull
    public String[] I() {
        return this.zbc;
    }

    @NonNull
    public CredentialPickerConfig K() {
        return this.zbe;
    }

    @NonNull
    public CredentialPickerConfig L() {
        return this.zbd;
    }

    @Nullable
    public String M() {
        return this.zbh;
    }

    @Nullable
    public String P() {
        return this.zbg;
    }

    public boolean R() {
        return this.zbf;
    }

    public boolean c0() {
        return this.zbb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.c(parcel, 1, c0());
        x3.a.r(parcel, 2, I(), false);
        x3.a.p(parcel, 3, L(), i9, false);
        x3.a.p(parcel, 4, K(), i9, false);
        x3.a.c(parcel, 5, R());
        x3.a.q(parcel, 6, P(), false);
        x3.a.q(parcel, 7, M(), false);
        x3.a.c(parcel, 8, this.zbi);
        x3.a.k(parcel, 1000, this.f7360a);
        x3.a.b(parcel, a10);
    }
}
