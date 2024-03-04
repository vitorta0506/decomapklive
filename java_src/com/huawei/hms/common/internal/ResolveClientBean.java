package com.huawei.hms.common.internal;
/* loaded from: classes4.dex */
public class ResolveClientBean {
    private final int clientKey;
    private final AnyClient mClient;
    private int minSdkVersion;

    public ResolveClientBean(AnyClient anyClient, int i9) {
        this.mClient = anyClient;
        this.clientKey = Objects.hashCode(anyClient);
        this.minSdkVersion = i9;
    }

    public void clientReconnect() {
        this.mClient.connect(this.minSdkVersion, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ResolveClientBean)) {
            return false;
        }
        return this.mClient.equals(((ResolveClientBean) obj).mClient);
    }

    public AnyClient getClient() {
        return this.mClient;
    }

    public int hashCode() {
        return this.clientKey;
    }
}
