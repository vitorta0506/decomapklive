package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum KitType implements WireEnum {
    UNKNOWN_KIT_TYPE(0),
    BITMOJI_KIT(1),
    CREATIVE_KIT(2),
    LOGIN_KIT(3),
    STORY_KIT(4);
    
    public static final ProtoAdapter<KitType> ADAPTER = new EnumAdapter<KitType>() { // from class: com.snapchat.kit.sdk.core.metrics.model.KitType.ProtoAdapter_KitType
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final KitType fromValue(int i9) {
            return KitType.fromValue(i9);
        }
    };
    private final int value;

    KitType(int i9) {
        this.value = i9;
    }

    public static KitType fromValue(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            return null;
                        }
                        return STORY_KIT;
                    }
                    return LOGIN_KIT;
                }
                return CREATIVE_KIT;
            }
            return BITMOJI_KIT;
        }
        return UNKNOWN_KIT_TYPE;
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
