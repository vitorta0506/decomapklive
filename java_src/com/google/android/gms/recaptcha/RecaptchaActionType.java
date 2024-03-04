package com.google.android.gms.recaptcha;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class RecaptchaActionType extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<RecaptchaActionType> CREATOR = new f();
    @NonNull
    public static final String LOGIN = "login";
    @NonNull
    public static final String OTHER = "other";
    @NonNull
    public static final String SIGNUP = "signup";

    /* renamed from: a  reason: collision with root package name */
    String f10101a;

    public RecaptchaActionType(@NonNull String str) {
        this.f10101a = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 1, this.f10101a, false);
        x3.a.b(parcel, a10);
    }
}
