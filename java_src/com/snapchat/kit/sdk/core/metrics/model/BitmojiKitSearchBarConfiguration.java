package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum BitmojiKitSearchBarConfiguration implements WireEnum {
    SEARCH_BAR_VISIBLE(0),
    SEARCH_BAR_HIDDEN(1);
    
    public static final ProtoAdapter<BitmojiKitSearchBarConfiguration> ADAPTER = new EnumAdapter<BitmojiKitSearchBarConfiguration>() { // from class: com.snapchat.kit.sdk.core.metrics.model.BitmojiKitSearchBarConfiguration.ProtoAdapter_BitmojiKitSearchBarConfiguration
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final BitmojiKitSearchBarConfiguration fromValue(int i9) {
            return BitmojiKitSearchBarConfiguration.fromValue(i9);
        }
    };
    private final int value;

    BitmojiKitSearchBarConfiguration(int i9) {
        this.value = i9;
    }

    public static BitmojiKitSearchBarConfiguration fromValue(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                return null;
            }
            return SEARCH_BAR_HIDDEN;
        }
        return SEARCH_BAR_VISIBLE;
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
