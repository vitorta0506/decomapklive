package com.appsflyer;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.internal.AFb1cSDK;
import com.appsflyer.internal.AFb1rSDK;
import com.appsflyer.internal.AFc1mSDK;
import com.appsflyer.internal.AFc1ySDK;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import java.util.Map;
/* loaded from: classes.dex */
public final class PurchaseHandler {
    @NonNull
    public final AFc1ySDK AFInAppEventParameterName;
    @NonNull
    private final AFb1cSDK valueOf;
    @NonNull
    public final AFc1mSDK values;

    /* loaded from: classes.dex */
    public interface PurchaseValidationCallback {
        void onFailure(@NonNull Throwable th2);

        void onResponse(@NonNull ResponseNetwork<String> responseNetwork);
    }

    public PurchaseHandler(@NonNull AFc1ySDK aFc1ySDK) {
        this.AFInAppEventParameterName = aFc1ySDK;
        this.valueOf = aFc1ySDK.valueOf();
        this.values = aFc1ySDK.afErrorLog();
    }

    public final boolean AFKeystoreWrapper(Map<String, Object> map, @Nullable PurchaseValidationCallback purchaseValidationCallback, String... strArr) {
        boolean AFInAppEventParameterName = AFb1rSDK.AFInAppEventParameterName(map, strArr, this.valueOf);
        if (!AFInAppEventParameterName && purchaseValidationCallback != null) {
            purchaseValidationCallback.onFailure(new IllegalArgumentException("Invalid Request Data"));
        }
        return AFInAppEventParameterName;
    }
}
