package com.appsflyer.internal;

import com.appsflyer.internal.components.network.http.exceptions.ParsingException;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
/* loaded from: classes.dex */
public final class AFb1aSDK<ResponseBody> {
    private final AFc1vSDK AFInAppEventType;
    public final AFb1wSDK AFKeystoreWrapper;
    private final AFc1rSDK<ResponseBody> valueOf;
    private final AtomicBoolean values = new AtomicBoolean(false);

    public AFb1aSDK(AFb1wSDK aFb1wSDK, AFc1vSDK aFc1vSDK, AFc1rSDK<ResponseBody> aFc1rSDK) {
        this.AFKeystoreWrapper = aFb1wSDK;
        this.AFInAppEventType = aFc1vSDK;
        this.valueOf = aFc1rSDK;
    }

    public final AFc1pSDK<ResponseBody> AFKeystoreWrapper() throws IOException {
        if (!this.values.getAndSet(true)) {
            AFc1pSDK<String> AFInAppEventType = this.AFInAppEventType.AFInAppEventType(this.AFKeystoreWrapper);
            try {
                return new AFc1pSDK<>(this.valueOf.AFInAppEventType(AFInAppEventType.getBody()), AFInAppEventType.valueOf, AFInAppEventType.AFInAppEventParameterName, AFInAppEventType.AFInAppEventType, AFInAppEventType.values);
            } catch (JSONException e10) {
                throw new ParsingException(e10.getMessage(), e10, AFInAppEventType);
            }
        }
        throw new IllegalStateException("Http call is already executed");
    }
}
