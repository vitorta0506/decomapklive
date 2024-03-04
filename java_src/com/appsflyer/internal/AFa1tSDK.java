package com.appsflyer.internal;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class AFa1tSDK {
    @Nullable
    public Application AFInAppEventParameterName;
    @Nullable
    String AFInAppEventType;
    @Nullable
    Map<String, Object> AFKeystoreWrapper;
    public int AFLogger;
    private final boolean AFLogger$LogLevel;
    private byte[] AFVersionDeclaration;
    public String afDebugLog;
    String afErrorLog;
    public String afInfoLog;
    String afRDLog;
    @Nullable
    public AppsFlyerRequestListener valueOf;
    public final Map<String, Object> values;

    public AFa1tSDK() {
        this(null, null, null, null);
    }

    public abstract AFc1lSDK AFInAppEventParameterName();

    public final boolean AFInAppEventType() {
        return this.afErrorLog == null && this.afDebugLog == null;
    }

    public AFa1tSDK AFKeystoreWrapper(String str) {
        this.afInfoLog = str;
        return this;
    }

    public boolean afDebugLog() {
        return true;
    }

    public boolean afErrorLog() {
        return true;
    }

    public boolean afInfoLog() {
        return true;
    }

    public final AFa1tSDK valueOf(byte[] bArr) {
        this.AFVersionDeclaration = bArr;
        return this;
    }

    public final byte[] values() {
        return this.AFVersionDeclaration;
    }

    public AFa1tSDK(@Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable Context context) {
        this.values = new HashMap();
        this.afErrorLog = str;
        this.afInfoLog = str2;
        this.AFLogger$LogLevel = bool != null ? bool.booleanValue() : true;
        if (context != null) {
            this.AFInAppEventParameterName = (Application) context.getApplicationContext();
        }
    }

    public final AFa1tSDK AFInAppEventType(String str, Object obj) {
        synchronized (this.values) {
            this.values.put(str, obj);
        }
        return this;
    }

    public final AFa1tSDK AFKeystoreWrapper(Map<String, ?> map) {
        synchronized (map) {
            this.values.putAll(map);
        }
        return this;
    }

    public final boolean valueOf() {
        return this.AFLogger$LogLevel;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public final String AFInAppEventType(String str) {
        String AFInAppEventType = AFa1aSDK.values().AFInAppEventType(this.AFInAppEventParameterName);
        return AFInAppEventType != null ? Uri.parse(str).buildUpon().appendQueryParameter("channel", AFInAppEventType).build().toString() : str;
    }

    public final Map<String, Object> AFKeystoreWrapper() {
        return this.values;
    }

    public final AFa1tSDK AFKeystoreWrapper(int i9) {
        this.AFLogger = i9;
        synchronized (this.values) {
            if (this.values.containsKey("counter")) {
                this.values.put("counter", Integer.toString(i9));
            }
            if (this.values.containsKey("launch_counter")) {
                this.values.put("launch_counter", Integer.toString(i9));
            }
        }
        return this;
    }
}
