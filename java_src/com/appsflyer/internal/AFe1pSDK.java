package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.appsflyer.AFInAppEventType;
/* loaded from: classes.dex */
public final class AFe1pSDK extends AFe1wSDK {
    public AFe1pSDK(@NonNull Context context) {
        super(AFInAppEventType.PURCHASE, Boolean.TRUE, context);
    }

    @Override // com.appsflyer.internal.AFa1tSDK
    public final AFc1lSDK AFInAppEventParameterName() {
        return AFc1lSDK.PURCHASE_VALIDATE;
    }

    @Override // com.appsflyer.internal.AFa1tSDK
    public final AFa1tSDK AFKeystoreWrapper(String str) {
        return super.AFKeystoreWrapper(AFInAppEventType(str));
    }
}
