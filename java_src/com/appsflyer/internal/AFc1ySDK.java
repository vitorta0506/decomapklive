package com.appsflyer.internal;

import androidx.annotation.NonNull;
import com.appsflyer.CreateOneLinkHttpTask;
import com.appsflyer.PurchaseHandler;
import java.util.concurrent.ExecutorService;
/* loaded from: classes.dex */
public interface AFc1ySDK {
    @NonNull
    ExecutorService AFInAppEventType();

    @NonNull
    AFc1xSDK AFKeystoreWrapper();

    @NonNull
    PurchaseHandler AFLogger();

    @NonNull
    AFd1lSDK AFLogger$LogLevel();

    @NonNull
    AFb1dSDK AFVersionDeclaration();

    @NonNull
    AFd1dSDK afDebugLog();

    @NonNull
    AFc1mSDK afErrorLog();

    @NonNull
    CreateOneLinkHttpTask afInfoLog();

    @NonNull
    AFd1oSDK afRDLog();

    @NonNull
    AFb1pSDK afWarnLog();

    @NonNull
    AFe1fSDK getLevel();

    @NonNull
    AFa1lSDK init();

    @NonNull
    AFb1cSDK valueOf();
}
