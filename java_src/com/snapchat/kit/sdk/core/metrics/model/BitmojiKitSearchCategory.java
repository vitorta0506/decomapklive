package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum BitmojiKitSearchCategory implements WireEnum {
    UNKNOWN_BITMOJI_KIT_SEARCH_CATEGORY(0),
    TEXT(1),
    AUTOCOMPLETE(2),
    PROGRAMMED_PILLS(3),
    SEED_SEARCH(4);
    
    public static final ProtoAdapter<BitmojiKitSearchCategory> ADAPTER = new EnumAdapter<BitmojiKitSearchCategory>() { // from class: com.snapchat.kit.sdk.core.metrics.model.BitmojiKitSearchCategory.ProtoAdapter_BitmojiKitSearchCategory
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final BitmojiKitSearchCategory fromValue(int i9) {
            return BitmojiKitSearchCategory.fromValue(i9);
        }
    };
    private final int value;

    BitmojiKitSearchCategory(int i9) {
        this.value = i9;
    }

    public static BitmojiKitSearchCategory fromValue(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            return null;
                        }
                        return SEED_SEARCH;
                    }
                    return PROGRAMMED_PILLS;
                }
                return AUTOCOMPLETE;
            }
            return TEXT;
        }
        return UNKNOWN_BITMOJI_KIT_SEARCH_CATEGORY;
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
