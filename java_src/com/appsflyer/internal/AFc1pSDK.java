package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class AFc1pSDK<Body> implements ResponseNetwork<Body> {
    final boolean AFInAppEventParameterName;
    @NonNull
    final Map<String, List<String>> AFInAppEventType;
    @NonNull
    private final Body AFKeystoreWrapper;
    final int valueOf;
    @NonNull
    public final AFc1wSDK values;

    public AFc1pSDK(@NonNull Body body, int i9, boolean z10, Map<String, List<String>> map, @NonNull AFc1wSDK aFc1wSDK) {
        this.AFKeystoreWrapper = body;
        this.valueOf = i9;
        this.AFInAppEventParameterName = z10;
        this.AFInAppEventType = new HashMap(map);
        this.values = aFc1wSDK;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AFc1pSDK aFc1pSDK = (AFc1pSDK) obj;
        if (this.valueOf == aFc1pSDK.valueOf && this.AFInAppEventParameterName == aFc1pSDK.AFInAppEventParameterName && this.AFKeystoreWrapper.equals(aFc1pSDK.AFKeystoreWrapper) && this.AFInAppEventType.equals(aFc1pSDK.AFInAppEventType)) {
            return this.values.equals(aFc1pSDK.values);
        }
        return false;
    }

    @Override // com.appsflyer.internal.components.network.http.ResponseNetwork
    @NonNull
    public Body getBody() {
        return this.AFKeystoreWrapper;
    }

    @Override // com.appsflyer.internal.components.network.http.ResponseNetwork
    @Nullable
    public List<String> getHeaderField(@NonNull String str) {
        for (String str2 : this.AFInAppEventType.keySet()) {
            if (str2 != null && str2.equalsIgnoreCase(str)) {
                return this.AFInAppEventType.get(str2);
            }
        }
        return null;
    }

    @Override // com.appsflyer.internal.components.network.http.ResponseNetwork
    public int getStatusCode() {
        return this.valueOf;
    }

    public int hashCode() {
        return (((((((this.AFKeystoreWrapper.hashCode() * 31) + this.valueOf) * 31) + (this.AFInAppEventParameterName ? 1 : 0)) * 31) + this.AFInAppEventType.hashCode()) * 31) + this.values.hashCode();
    }

    @Override // com.appsflyer.internal.components.network.http.ResponseNetwork
    public boolean isSuccessful() {
        return this.AFInAppEventParameterName;
    }

    @Nullable
    public final String valueOf(@NonNull String str) {
        List<String> headerField = getHeaderField(str);
        if (headerField == null || headerField.isEmpty()) {
            return null;
        }
        Iterator<String> it = headerField.iterator();
        StringBuilder sb2 = new StringBuilder(it.next());
        while (it.hasNext()) {
            sb2.append(", ");
            sb2.append(it.next());
        }
        return sb2.toString();
    }
}
