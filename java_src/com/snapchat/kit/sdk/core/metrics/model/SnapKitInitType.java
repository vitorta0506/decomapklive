package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum SnapKitInitType implements WireEnum {
    INIT_TYPE_NONE(0),
    INIT_TYPE_AUTO(1),
    INIT_TYPE_DEFERRED(2),
    INIT_TYPE_FEATURE(3);
    
    public static final ProtoAdapter<SnapKitInitType> ADAPTER = new EnumAdapter<SnapKitInitType>() { // from class: com.snapchat.kit.sdk.core.metrics.model.SnapKitInitType.ProtoAdapter_SnapKitInitType
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final SnapKitInitType fromValue(int i9) {
            return SnapKitInitType.fromValue(i9);
        }
    };
    private final int value;

    SnapKitInitType(int i9) {
        this.value = i9;
    }

    public static SnapKitInitType fromValue(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return null;
                    }
                    return INIT_TYPE_FEATURE;
                }
                return INIT_TYPE_DEFERRED;
            }
            return INIT_TYPE_AUTO;
        }
        return INIT_TYPE_NONE;
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
