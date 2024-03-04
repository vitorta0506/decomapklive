package com.tencent.imsdk.v2;

import com.tencent.imsdk.offlinePush.OfflinePushToken;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class V2TIMOfflinePushConfig implements Serializable {
    private OfflinePushToken offlinePushToken;

    public V2TIMOfflinePushConfig(long j10, String str) {
        OfflinePushToken offlinePushToken = new OfflinePushToken();
        this.offlinePushToken = offlinePushToken;
        offlinePushToken.setBusinessID((int) j10);
        this.offlinePushToken.setDeviceToken(str);
        this.offlinePushToken.setIsTPNSToken(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OfflinePushToken getOfflinePushToken() {
        return this.offlinePushToken;
    }

    @Deprecated
    public V2TIMOfflinePushConfig(long j10, String str, boolean z10) {
        OfflinePushToken offlinePushToken = new OfflinePushToken();
        this.offlinePushToken = offlinePushToken;
        offlinePushToken.setBusinessID((int) j10);
        this.offlinePushToken.setDeviceToken(str);
        this.offlinePushToken.setIsTPNSToken(z10);
    }
}
