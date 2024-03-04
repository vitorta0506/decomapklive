package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public abstract class AFe1zSDK extends AFa1tSDK {
    private final boolean AFVersionDeclaration;
    private final boolean afWarnLog;
    public boolean getLevel;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AFe1zSDK() {
        this(null, null, null, null, null, null);
    }

    public final boolean AFLogger() {
        return this.getLevel;
    }

    public final boolean afWarnLog() {
        return this.AFVersionDeclaration;
    }

    public final boolean init() {
        return this.afWarnLog;
    }

    public AFe1zSDK(@Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Context context) {
        super(str, str2, Boolean.valueOf(bool3 != null ? bool3.booleanValue() : false), context);
        this.afWarnLog = bool != null ? bool.booleanValue() : true;
        this.AFVersionDeclaration = bool2 != null ? bool2.booleanValue() : true;
    }
}
