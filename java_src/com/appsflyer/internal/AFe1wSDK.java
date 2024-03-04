package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public abstract class AFe1wSDK extends AFe1zSDK {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AFe1wSDK() {
        this(null, null, null);
    }

    @Override // com.appsflyer.internal.AFa1tSDK
    public final boolean afDebugLog() {
        return false;
    }

    @Override // com.appsflyer.internal.AFa1tSDK
    public final boolean afErrorLog() {
        return false;
    }

    @Override // com.appsflyer.internal.AFa1tSDK
    public final boolean afInfoLog() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AFe1wSDK(@Nullable String str, @Nullable Boolean bool, @Nullable Context context) {
        super(str, null, Boolean.FALSE, null, bool, context);
    }
}
