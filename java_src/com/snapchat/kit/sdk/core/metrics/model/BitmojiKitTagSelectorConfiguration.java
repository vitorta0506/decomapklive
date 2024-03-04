package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum BitmojiKitTagSelectorConfiguration implements WireEnum {
    TAG_SELECTOR_VISIBLE(0),
    TAG_SELECTOR_HIDDEN(1);
    
    public static final ProtoAdapter<BitmojiKitTagSelectorConfiguration> ADAPTER = new EnumAdapter<BitmojiKitTagSelectorConfiguration>() { // from class: com.snapchat.kit.sdk.core.metrics.model.BitmojiKitTagSelectorConfiguration.ProtoAdapter_BitmojiKitTagSelectorConfiguration
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final BitmojiKitTagSelectorConfiguration fromValue(int i9) {
            return BitmojiKitTagSelectorConfiguration.fromValue(i9);
        }
    };
    private final int value;

    BitmojiKitTagSelectorConfiguration(int i9) {
        this.value = i9;
    }

    public static BitmojiKitTagSelectorConfiguration fromValue(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                return null;
            }
            return TAG_SELECTOR_HIDDEN;
        }
        return TAG_SELECTOR_VISIBLE;
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
