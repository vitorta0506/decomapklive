package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import okio.ByteString;
/* loaded from: classes4.dex */
public final class BitmojiKitStickerPickerOpen extends Message<BitmojiKitStickerPickerOpen, Builder> {
    public static final String DEFAULT_PREVIEW_ICON_STICKER_ID = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitEventBase#ADAPTER", tag = 1)
    public final BitmojiKitEventBase bitmoji_kit_event_base;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 5)
    public final String preview_icon_sticker_id;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitSearchBarConfiguration#ADAPTER", tag = 3)
    public final BitmojiKitSearchBarConfiguration search_bar_configuration;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitStickerPickerView#ADAPTER", tag = 2)
    public final BitmojiKitStickerPickerView sticker_picker_view;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitTagSelectorConfiguration#ADAPTER", tag = 4)
    public final BitmojiKitTagSelectorConfiguration tag_selector_configuration;
    public static final ProtoAdapter<BitmojiKitStickerPickerOpen> ADAPTER = new ProtoAdapter_BitmojiKitStickerPickerOpen();
    public static final BitmojiKitStickerPickerView DEFAULT_STICKER_PICKER_VIEW = BitmojiKitStickerPickerView.UNKNOWN_BITMOJI_KIT_PICKER_VIEW;
    public static final BitmojiKitSearchBarConfiguration DEFAULT_SEARCH_BAR_CONFIGURATION = BitmojiKitSearchBarConfiguration.SEARCH_BAR_VISIBLE;
    public static final BitmojiKitTagSelectorConfiguration DEFAULT_TAG_SELECTOR_CONFIGURATION = BitmojiKitTagSelectorConfiguration.TAG_SELECTOR_VISIBLE;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<BitmojiKitStickerPickerOpen, Builder> {
        public BitmojiKitEventBase bitmoji_kit_event_base;
        public String preview_icon_sticker_id;
        public BitmojiKitSearchBarConfiguration search_bar_configuration;
        public BitmojiKitStickerPickerView sticker_picker_view;
        public BitmojiKitTagSelectorConfiguration tag_selector_configuration;

        public final Builder bitmoji_kit_event_base(BitmojiKitEventBase bitmojiKitEventBase) {
            this.bitmoji_kit_event_base = bitmojiKitEventBase;
            return this;
        }

        public final Builder preview_icon_sticker_id(String str) {
            this.preview_icon_sticker_id = str;
            return this;
        }

        public final Builder search_bar_configuration(BitmojiKitSearchBarConfiguration bitmojiKitSearchBarConfiguration) {
            this.search_bar_configuration = bitmojiKitSearchBarConfiguration;
            return this;
        }

        public final Builder sticker_picker_view(BitmojiKitStickerPickerView bitmojiKitStickerPickerView) {
            this.sticker_picker_view = bitmojiKitStickerPickerView;
            return this;
        }

        public final Builder tag_selector_configuration(BitmojiKitTagSelectorConfiguration bitmojiKitTagSelectorConfiguration) {
            this.tag_selector_configuration = bitmojiKitTagSelectorConfiguration;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final BitmojiKitStickerPickerOpen build() {
            return new BitmojiKitStickerPickerOpen(this.bitmoji_kit_event_base, this.sticker_picker_view, this.search_bar_configuration, this.tag_selector_configuration, this.preview_icon_sticker_id, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_BitmojiKitStickerPickerOpen extends ProtoAdapter<BitmojiKitStickerPickerOpen> {
        public ProtoAdapter_BitmojiKitStickerPickerOpen() {
            super(FieldEncoding.LENGTH_DELIMITED, BitmojiKitStickerPickerOpen.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitStickerPickerOpen decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.bitmoji_kit_event_base(BitmojiKitEventBase.ADAPTER.decode(protoReader));
                } else if (nextTag == 2) {
                    try {
                        builder.sticker_picker_view(BitmojiKitStickerPickerView.ADAPTER.decode(protoReader));
                    } catch (ProtoAdapter.EnumConstantNotFoundException e10) {
                        builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e10.value));
                    }
                } else if (nextTag == 3) {
                    try {
                        builder.search_bar_configuration(BitmojiKitSearchBarConfiguration.ADAPTER.decode(protoReader));
                    } catch (ProtoAdapter.EnumConstantNotFoundException e11) {
                        builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e11.value));
                    }
                } else if (nextTag == 4) {
                    try {
                        builder.tag_selector_configuration(BitmojiKitTagSelectorConfiguration.ADAPTER.decode(protoReader));
                    } catch (ProtoAdapter.EnumConstantNotFoundException e12) {
                        builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e12.value));
                    }
                } else if (nextTag != 5) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.preview_icon_sticker_id(ProtoAdapter.STRING.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, BitmojiKitStickerPickerOpen bitmojiKitStickerPickerOpen) throws IOException {
            BitmojiKitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, bitmojiKitStickerPickerOpen.bitmoji_kit_event_base);
            BitmojiKitStickerPickerView.ADAPTER.encodeWithTag(protoWriter, 2, bitmojiKitStickerPickerOpen.sticker_picker_view);
            BitmojiKitSearchBarConfiguration.ADAPTER.encodeWithTag(protoWriter, 3, bitmojiKitStickerPickerOpen.search_bar_configuration);
            BitmojiKitTagSelectorConfiguration.ADAPTER.encodeWithTag(protoWriter, 4, bitmojiKitStickerPickerOpen.tag_selector_configuration);
            ProtoAdapter.STRING.encodeWithTag(protoWriter, 5, bitmojiKitStickerPickerOpen.preview_icon_sticker_id);
            protoWriter.writeBytes(bitmojiKitStickerPickerOpen.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(BitmojiKitStickerPickerOpen bitmojiKitStickerPickerOpen) {
            return BitmojiKitEventBase.ADAPTER.encodedSizeWithTag(1, bitmojiKitStickerPickerOpen.bitmoji_kit_event_base) + BitmojiKitStickerPickerView.ADAPTER.encodedSizeWithTag(2, bitmojiKitStickerPickerOpen.sticker_picker_view) + BitmojiKitSearchBarConfiguration.ADAPTER.encodedSizeWithTag(3, bitmojiKitStickerPickerOpen.search_bar_configuration) + BitmojiKitTagSelectorConfiguration.ADAPTER.encodedSizeWithTag(4, bitmojiKitStickerPickerOpen.tag_selector_configuration) + ProtoAdapter.STRING.encodedSizeWithTag(5, bitmojiKitStickerPickerOpen.preview_icon_sticker_id) + bitmojiKitStickerPickerOpen.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.squareup.wire.Message$Builder, com.snapchat.kit.sdk.core.metrics.model.BitmojiKitStickerPickerOpen$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitStickerPickerOpen redact(BitmojiKitStickerPickerOpen bitmojiKitStickerPickerOpen) {
            ?? newBuilder2 = bitmojiKitStickerPickerOpen.newBuilder2();
            BitmojiKitEventBase bitmojiKitEventBase = newBuilder2.bitmoji_kit_event_base;
            if (bitmojiKitEventBase != null) {
                newBuilder2.bitmoji_kit_event_base = BitmojiKitEventBase.ADAPTER.redact(bitmojiKitEventBase);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public BitmojiKitStickerPickerOpen(BitmojiKitEventBase bitmojiKitEventBase, BitmojiKitStickerPickerView bitmojiKitStickerPickerView, BitmojiKitSearchBarConfiguration bitmojiKitSearchBarConfiguration, BitmojiKitTagSelectorConfiguration bitmojiKitTagSelectorConfiguration, String str) {
        this(bitmojiKitEventBase, bitmojiKitStickerPickerView, bitmojiKitSearchBarConfiguration, bitmojiKitTagSelectorConfiguration, str, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BitmojiKitStickerPickerOpen) {
            BitmojiKitStickerPickerOpen bitmojiKitStickerPickerOpen = (BitmojiKitStickerPickerOpen) obj;
            return unknownFields().equals(bitmojiKitStickerPickerOpen.unknownFields()) && Internal.equals(this.bitmoji_kit_event_base, bitmojiKitStickerPickerOpen.bitmoji_kit_event_base) && Internal.equals(this.sticker_picker_view, bitmojiKitStickerPickerOpen.sticker_picker_view) && Internal.equals(this.search_bar_configuration, bitmojiKitStickerPickerOpen.search_bar_configuration) && Internal.equals(this.tag_selector_configuration, bitmojiKitStickerPickerOpen.tag_selector_configuration) && Internal.equals(this.preview_icon_sticker_id, bitmojiKitStickerPickerOpen.preview_icon_sticker_id);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            BitmojiKitEventBase bitmojiKitEventBase = this.bitmoji_kit_event_base;
            int hashCode2 = (hashCode + (bitmojiKitEventBase != null ? bitmojiKitEventBase.hashCode() : 0)) * 37;
            BitmojiKitStickerPickerView bitmojiKitStickerPickerView = this.sticker_picker_view;
            int hashCode3 = (hashCode2 + (bitmojiKitStickerPickerView != null ? bitmojiKitStickerPickerView.hashCode() : 0)) * 37;
            BitmojiKitSearchBarConfiguration bitmojiKitSearchBarConfiguration = this.search_bar_configuration;
            int hashCode4 = (hashCode3 + (bitmojiKitSearchBarConfiguration != null ? bitmojiKitSearchBarConfiguration.hashCode() : 0)) * 37;
            BitmojiKitTagSelectorConfiguration bitmojiKitTagSelectorConfiguration = this.tag_selector_configuration;
            int hashCode5 = (hashCode4 + (bitmojiKitTagSelectorConfiguration != null ? bitmojiKitTagSelectorConfiguration.hashCode() : 0)) * 37;
            String str = this.preview_icon_sticker_id;
            int hashCode6 = hashCode5 + (str != null ? str.hashCode() : 0);
            this.hashCode = hashCode6;
            return hashCode6;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.bitmoji_kit_event_base != null) {
            sb2.append(", bitmoji_kit_event_base=");
            sb2.append(this.bitmoji_kit_event_base);
        }
        if (this.sticker_picker_view != null) {
            sb2.append(", sticker_picker_view=");
            sb2.append(this.sticker_picker_view);
        }
        if (this.search_bar_configuration != null) {
            sb2.append(", search_bar_configuration=");
            sb2.append(this.search_bar_configuration);
        }
        if (this.tag_selector_configuration != null) {
            sb2.append(", tag_selector_configuration=");
            sb2.append(this.tag_selector_configuration);
        }
        if (this.preview_icon_sticker_id != null) {
            sb2.append(", preview_icon_sticker_id=");
            sb2.append(this.preview_icon_sticker_id);
        }
        StringBuilder replace = sb2.replace(0, 2, "BitmojiKitStickerPickerOpen{");
        replace.append('}');
        return replace.toString();
    }

    public BitmojiKitStickerPickerOpen(BitmojiKitEventBase bitmojiKitEventBase, BitmojiKitStickerPickerView bitmojiKitStickerPickerView, BitmojiKitSearchBarConfiguration bitmojiKitSearchBarConfiguration, BitmojiKitTagSelectorConfiguration bitmojiKitTagSelectorConfiguration, String str, ByteString byteString) {
        super(ADAPTER, byteString);
        this.bitmoji_kit_event_base = bitmojiKitEventBase;
        this.sticker_picker_view = bitmojiKitStickerPickerView;
        this.search_bar_configuration = bitmojiKitSearchBarConfiguration;
        this.tag_selector_configuration = bitmojiKitTagSelectorConfiguration;
        this.preview_icon_sticker_id = str;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<BitmojiKitStickerPickerOpen, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.bitmoji_kit_event_base = this.bitmoji_kit_event_base;
        builder.sticker_picker_view = this.sticker_picker_view;
        builder.search_bar_configuration = this.search_bar_configuration;
        builder.tag_selector_configuration = this.tag_selector_configuration;
        builder.preview_icon_sticker_id = this.preview_icon_sticker_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
