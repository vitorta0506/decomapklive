package com.appsflyer.internal.components.network.http.exceptions;

import androidx.annotation.NonNull;
import com.appsflyer.internal.AFc1wSDK;
import java.io.IOException;
/* loaded from: classes.dex */
public class HttpException extends IOException {
    private final AFc1wSDK AFInAppEventParameterName;

    public HttpException(@NonNull Throwable th2, @NonNull AFc1wSDK aFc1wSDK) {
        super(th2.getMessage(), th2);
        this.AFInAppEventParameterName = aFc1wSDK;
    }

    @NonNull
    public AFc1wSDK getMetrics() {
        return this.AFInAppEventParameterName;
    }
}
