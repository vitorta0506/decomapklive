package com.huawei.hms.core.aidl;
/* loaded from: classes4.dex */
public final class CodecLookup {
    private CodecLookup() {
    }

    public static MessageCodec find(int i9) {
        if (i9 == 2) {
            return new a();
        }
        return new MessageCodec();
    }
}
