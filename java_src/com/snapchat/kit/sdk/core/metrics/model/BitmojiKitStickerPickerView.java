package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum BitmojiKitStickerPickerView implements WireEnum {
    UNKNOWN_BITMOJI_KIT_PICKER_VIEW(0),
    STICKER_PICKER(1),
    CREATE_AVATAR(2),
    LINK_ACCOUNT(3),
    NOT_AUTHORIZED(4),
    ERROR_VIEW(5);
    
    public static final ProtoAdapter<BitmojiKitStickerPickerView> ADAPTER = new EnumAdapter<BitmojiKitStickerPickerView>() { // from class: com.snapchat.kit.sdk.core.metrics.model.BitmojiKitStickerPickerView.ProtoAdapter_BitmojiKitStickerPickerView
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final BitmojiKitStickerPickerView fromValue(int i9) {
            return BitmojiKitStickerPickerView.fromValue(i9);
        }
    };
    private final int value;

    BitmojiKitStickerPickerView(int i9) {
        this.value = i9;
    }

    public static BitmojiKitStickerPickerView fromValue(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 != 5) {
                                return null;
                            }
                            return ERROR_VIEW;
                        }
                        return NOT_AUTHORIZED;
                    }
                    return LINK_ACCOUNT;
                }
                return CREATE_AVATAR;
            }
            return STICKER_PICKER;
        }
        return UNKNOWN_BITMOJI_KIT_PICKER_VIEW;
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
