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
public final class BitmojiKitStickerPickerClose extends Message<BitmojiKitStickerPickerClose, Builder> {
    public static final ProtoAdapter<BitmojiKitStickerPickerClose> ADAPTER = new ProtoAdapter_BitmojiKitStickerPickerClose();
    public static final Long DEFAULT_STICKER_PICKER_SESSION_DURATION_MILLIS = 0L;
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitEventBase#ADAPTER", tag = 1)
    public final BitmojiKitEventBase bitmoji_kit_event_base;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", tag = 2)
    public final Long sticker_picker_session_duration_millis;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<BitmojiKitStickerPickerClose, Builder> {
        public BitmojiKitEventBase bitmoji_kit_event_base;
        public Long sticker_picker_session_duration_millis;

        public final Builder bitmoji_kit_event_base(BitmojiKitEventBase bitmojiKitEventBase) {
            this.bitmoji_kit_event_base = bitmojiKitEventBase;
            return this;
        }

        public final Builder sticker_picker_session_duration_millis(Long l10) {
            this.sticker_picker_session_duration_millis = l10;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final BitmojiKitStickerPickerClose build() {
            return new BitmojiKitStickerPickerClose(this.bitmoji_kit_event_base, this.sticker_picker_session_duration_millis, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_BitmojiKitStickerPickerClose extends ProtoAdapter<BitmojiKitStickerPickerClose> {
        public ProtoAdapter_BitmojiKitStickerPickerClose() {
            super(FieldEncoding.LENGTH_DELIMITED, BitmojiKitStickerPickerClose.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitStickerPickerClose decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.bitmoji_kit_event_base(BitmojiKitEventBase.ADAPTER.decode(protoReader));
                } else if (nextTag != 2) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.sticker_picker_session_duration_millis(ProtoAdapter.UINT64.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, BitmojiKitStickerPickerClose bitmojiKitStickerPickerClose) throws IOException {
            BitmojiKitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, bitmojiKitStickerPickerClose.bitmoji_kit_event_base);
            ProtoAdapter.UINT64.encodeWithTag(protoWriter, 2, bitmojiKitStickerPickerClose.sticker_picker_session_duration_millis);
            protoWriter.writeBytes(bitmojiKitStickerPickerClose.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(BitmojiKitStickerPickerClose bitmojiKitStickerPickerClose) {
            return BitmojiKitEventBase.ADAPTER.encodedSizeWithTag(1, bitmojiKitStickerPickerClose.bitmoji_kit_event_base) + ProtoAdapter.UINT64.encodedSizeWithTag(2, bitmojiKitStickerPickerClose.sticker_picker_session_duration_millis) + bitmojiKitStickerPickerClose.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snapchat.kit.sdk.core.metrics.model.BitmojiKitStickerPickerClose$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitStickerPickerClose redact(BitmojiKitStickerPickerClose bitmojiKitStickerPickerClose) {
            ?? newBuilder2 = bitmojiKitStickerPickerClose.newBuilder2();
            BitmojiKitEventBase bitmojiKitEventBase = newBuilder2.bitmoji_kit_event_base;
            if (bitmojiKitEventBase != null) {
                newBuilder2.bitmoji_kit_event_base = BitmojiKitEventBase.ADAPTER.redact(bitmojiKitEventBase);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public BitmojiKitStickerPickerClose(BitmojiKitEventBase bitmojiKitEventBase, Long l10) {
        this(bitmojiKitEventBase, l10, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BitmojiKitStickerPickerClose) {
            BitmojiKitStickerPickerClose bitmojiKitStickerPickerClose = (BitmojiKitStickerPickerClose) obj;
            return unknownFields().equals(bitmojiKitStickerPickerClose.unknownFields()) && Internal.equals(this.bitmoji_kit_event_base, bitmojiKitStickerPickerClose.bitmoji_kit_event_base) && Internal.equals(this.sticker_picker_session_duration_millis, bitmojiKitStickerPickerClose.sticker_picker_session_duration_millis);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            BitmojiKitEventBase bitmojiKitEventBase = this.bitmoji_kit_event_base;
            int hashCode2 = (hashCode + (bitmojiKitEventBase != null ? bitmojiKitEventBase.hashCode() : 0)) * 37;
            Long l10 = this.sticker_picker_session_duration_millis;
            int hashCode3 = hashCode2 + (l10 != null ? l10.hashCode() : 0);
            this.hashCode = hashCode3;
            return hashCode3;
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
        if (this.sticker_picker_session_duration_millis != null) {
            sb2.append(", sticker_picker_session_duration_millis=");
            sb2.append(this.sticker_picker_session_duration_millis);
        }
        StringBuilder replace = sb2.replace(0, 2, "BitmojiKitStickerPickerClose{");
        replace.append('}');
        return replace.toString();
    }

    public BitmojiKitStickerPickerClose(BitmojiKitEventBase bitmojiKitEventBase, Long l10, ByteString byteString) {
        super(ADAPTER, byteString);
        this.bitmoji_kit_event_base = bitmojiKitEventBase;
        this.sticker_picker_session_duration_millis = l10;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<BitmojiKitStickerPickerClose, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.bitmoji_kit_event_base = this.bitmoji_kit_event_base;
        builder.sticker_picker_session_duration_millis = this.sticker_picker_session_duration_millis;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
