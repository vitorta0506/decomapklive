package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum BitmojiKitShareCategory implements WireEnum {
    UNKNOWN_BITMOJI_KIT_SHARE_CATEGORY(0),
    POPULAR(1),
    SEARCH(2);
    
    public static final ProtoAdapter<BitmojiKitShareCategory> ADAPTER = new EnumAdapter<BitmojiKitShareCategory>() { // from class: com.snapchat.kit.sdk.core.metrics.model.BitmojiKitShareCategory.ProtoAdapter_BitmojiKitShareCategory
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final BitmojiKitShareCategory fromValue(int i9) {
            return BitmojiKitShareCategory.fromValue(i9);
        }
    };
    private final int value;

    BitmojiKitShareCategory(int i9) {
        this.value = i9;
    }

    public static BitmojiKitShareCategory fromValue(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return null;
                }
                return SEARCH;
            }
            return POPULAR;
        }
        return UNKNOWN_BITMOJI_KIT_SHARE_CATEGORY;
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
