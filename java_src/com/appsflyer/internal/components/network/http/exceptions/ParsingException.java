package com.appsflyer.internal.components.network.http.exceptions;

import androidx.annotation.NonNull;
import com.appsflyer.internal.AFc1pSDK;
import java.io.IOException;
/* loaded from: classes.dex */
public class ParsingException extends IOException {
    @NonNull
    private final AFc1pSDK<String> values;

    public ParsingException(String str, Throwable th2, @NonNull AFc1pSDK<String> aFc1pSDK) {
        super(str, th2);
        this.values = aFc1pSDK;
    }

    @NonNull
    public AFc1pSDK<String> getRawResponse() {
        return this.values;
    }
}
