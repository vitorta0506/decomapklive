package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
@Deprecated
/* loaded from: classes2.dex */
public final class HintRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<HintRequest> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    final int f7361a;
    private final CredentialPickerConfig zbb;
    private final boolean zbc;
    private final boolean zbd;
    private final String[] zbe;
    private final boolean zbf;
    @Nullable
    private final String zbg;
    @Nullable
    private final String zbh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HintRequest(int i9, CredentialPickerConfig credentialPickerConfig, boolean z10, boolean z11, String[] strArr, boolean z12, @Nullable String str, @Nullable String str2) {
        this.f7361a = i9;
        this.zbb = (CredentialPickerConfig) p.j(credentialPickerConfig);
        this.zbc = z10;
        this.zbd = z11;
        this.zbe = (String[]) p.j(strArr);
        if (i9 < 2) {
            this.zbf = true;
            this.zbg = null;
            this.zbh = null;
            return;
        }
        this.zbf = z12;
        this.zbg = str;
        this.zbh = str2;
    }

    @NonNull
    public String[] I() {
        return this.zbe;
    }

    @NonNull
    public CredentialPickerConfig K() {
        return this.zbb;
    }

    @Nullable
    public String L() {
        return this.zbh;
    }

    @Nullable
    public String M() {
        return this.zbg;
    }

    public boolean P() {
        return this.zbc;
    }

    public boolean R() {
        return this.zbf;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.p(parcel, 1, K(), i9, false);
        x3.a.c(parcel, 2, P());
        x3.a.c(parcel, 3, this.zbd);
        x3.a.r(parcel, 4, I(), false);
        x3.a.c(parcel, 5, R());
        x3.a.q(parcel, 6, M(), false);
        x3.a.q(parcel, 7, L(), false);
        x3.a.k(parcel, 1000, this.f7361a);
        x3.a.b(parcel, a10);
    }
}
