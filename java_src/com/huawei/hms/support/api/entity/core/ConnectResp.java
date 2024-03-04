package com.huawei.hms.support.api.entity.core;

import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.core.aidl.annotation.Packed;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4.dex */
public class ConnectResp implements IMessageEntity {
    @Packed
    public List<Integer> protocolVersion = Arrays.asList(1, 2);
    @Packed
    public String sessionId;

    public String toString() {
        StringBuilder sb2 = new StringBuilder("protocol version:");
        for (Integer num : this.protocolVersion) {
            sb2.append(num);
            sb2.append(',');
        }
        return sb2.toString();
    }
}
