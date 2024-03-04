package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class TokenData extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<TokenData> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    final int f7347a;
    private final String zzb;
    @Nullable
    private final Long zzc;
    private final boolean zzd;
    private final boolean zze;
    @Nullable
    private final List zzf;
    @Nullable
    private final String zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TokenData(int i9, String str, @Nullable Long l10, boolean z10, boolean z11, @Nullable List list, @Nullable String str2) {
        this.f7347a = i9;
        this.zzb = p.f(str);
        this.zzc = l10;
        this.zzd = z10;
        this.zze = z11;
        this.zzf = list;
        this.zzg = str2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof TokenData) {
            TokenData tokenData = (TokenData) obj;
            return TextUtils.equals(this.zzb, tokenData.zzb) && n.b(this.zzc, tokenData.zzc) && this.zzd == tokenData.zzd && this.zze == tokenData.zze && n.b(this.zzf, tokenData.zzf) && n.b(this.zzg, tokenData.zzg);
        }
        return false;
    }

    public final int hashCode() {
        return n.c(this.zzb, this.zzc, Boolean.valueOf(this.zzd), Boolean.valueOf(this.zze), this.zzf, this.zzg);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7347a);
        x3.a.q(parcel, 2, this.zzb, false);
        x3.a.n(parcel, 3, this.zzc, false);
        x3.a.c(parcel, 4, this.zzd);
        x3.a.c(parcel, 5, this.zze);
        x3.a.s(parcel, 6, this.zzf, false);
        x3.a.q(parcel, 7, this.zzg, false);
        x3.a.b(parcel, a10);
    }
}
