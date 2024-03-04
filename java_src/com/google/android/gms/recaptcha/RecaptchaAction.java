package com.google.android.gms.recaptcha;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class RecaptchaAction extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<RecaptchaAction> CREATOR = new e();
    private final RecaptchaActionType zza;
    private final String zzb;
    private final Bundle zzc;
    private final String zzd;

    public RecaptchaAction(@NonNull RecaptchaAction recaptchaAction, @NonNull String str) {
        this(recaptchaAction.I(), recaptchaAction.L(), recaptchaAction.K(), str);
    }

    @NonNull
    public RecaptchaActionType I() {
        return this.zza;
    }

    @NonNull
    public Bundle K() {
        return this.zzc;
    }

    @NonNull
    public String L() {
        return this.zzb;
    }

    @NonNull
    public String M() {
        return this.zzd;
    }

    @NonNull
    public String toString() {
        return (!"other".equals(this.zza.f10101a) || this.zzb.isEmpty()) ? this.zza.f10101a : this.zzb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.p(parcel, 1, I(), i9, false);
        x3.a.q(parcel, 2, L(), false);
        x3.a.e(parcel, 3, K(), false);
        x3.a.q(parcel, 4, M(), false);
        x3.a.b(parcel, a10);
    }

    public RecaptchaAction(@NonNull RecaptchaActionType recaptchaActionType) {
        this(recaptchaActionType, "", new Bundle(), "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecaptchaAction(RecaptchaActionType recaptchaActionType, String str, Bundle bundle, String str2) {
        this.zza = recaptchaActionType;
        this.zzb = str;
        this.zzc = bundle;
        this.zzd = str2;
    }
}
