package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum BitmojiKitPermissionUpdateStatus implements WireEnum {
    UNKNOWN_BITMOJI_KIT_PERMISSION_UPDATE_STATUS(0),
    BITMOJI_PERMISSION_ON(1),
    BITMOJI_PERMISSION_OFF(2),
    BITMOJI_REAUTH_ERROR(3);
    
    public static final ProtoAdapter<BitmojiKitPermissionUpdateStatus> ADAPTER = new EnumAdapter<BitmojiKitPermissionUpdateStatus>() { // from class: com.snapchat.kit.sdk.core.metrics.model.BitmojiKitPermissionUpdateStatus.ProtoAdapter_BitmojiKitPermissionUpdateStatus
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final BitmojiKitPermissionUpdateStatus fromValue(int i9) {
            return BitmojiKitPermissionUpdateStatus.fromValue(i9);
        }
    };
    private final int value;

    BitmojiKitPermissionUpdateStatus(int i9) {
        this.value = i9;
    }

    public static BitmojiKitPermissionUpdateStatus fromValue(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return null;
                    }
                    return BITMOJI_REAUTH_ERROR;
                }
                return BITMOJI_PERMISSION_OFF;
            }
            return BITMOJI_PERMISSION_ON;
        }
        return UNKNOWN_BITMOJI_KIT_PERMISSION_UPDATE_STATUS;
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
