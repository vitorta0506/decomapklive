package com.google.android.gms.recaptcha;

import androidx.annotation.NonNull;
/* loaded from: classes2.dex */
public interface b {
    @NonNull
    t4.g<RecaptchaResultData> b(@NonNull RecaptchaHandle recaptchaHandle, @NonNull RecaptchaAction recaptchaAction);

    @NonNull
    t4.g<Boolean> d(@NonNull RecaptchaHandle recaptchaHandle);

    @NonNull
    t4.g<RecaptchaHandle> init(@NonNull String str);
}
