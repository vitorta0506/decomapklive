package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum KitPluginType implements WireEnum {
    NO_PLUGIN(0),
    UNITY(1);
    
    public static final ProtoAdapter<KitPluginType> ADAPTER = new EnumAdapter<KitPluginType>() { // from class: com.snapchat.kit.sdk.core.metrics.model.KitPluginType.ProtoAdapter_KitPluginType
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final KitPluginType fromValue(int i9) {
            return KitPluginType.fromValue(i9);
        }
    };
    private final int value;

    KitPluginType(int i9) {
        this.value = i9;
    }

    public static KitPluginType fromValue(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                return null;
            }
            return UNITY;
        }
        return NO_PLUGIN;
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
