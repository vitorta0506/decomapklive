package com.google.android.gms.recaptcha;

import androidx.annotation.NonNull;
import java.io.IOException;
/* loaded from: classes2.dex */
public class RecaptchaNetworkException extends Exception {
    public RecaptchaNetworkException(@NonNull String str, @NonNull IOException iOException) {
        super(str, iOException);
    }
}
