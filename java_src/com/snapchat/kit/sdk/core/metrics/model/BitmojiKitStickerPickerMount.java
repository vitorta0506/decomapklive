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
public final class BitmojiKitStickerPickerMount extends Message<BitmojiKitStickerPickerMount, Builder> {
    public static final ProtoAdapter<BitmojiKitStickerPickerMount> ADAPTER = new ProtoAdapter_BitmojiKitStickerPickerMount();
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitEventBase#ADAPTER", tag = 1)
    public final BitmojiKitEventBase bitmoji_kit_event_base;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<BitmojiKitStickerPickerMount, Builder> {
        public BitmojiKitEventBase bitmoji_kit_event_base;

        public final Builder bitmoji_kit_event_base(BitmojiKitEventBase bitmojiKitEventBase) {
            this.bitmoji_kit_event_base = bitmojiKitEventBase;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final BitmojiKitStickerPickerMount build() {
            return new BitmojiKitStickerPickerMount(this.bitmoji_kit_event_base, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_BitmojiKitStickerPickerMount extends ProtoAdapter<BitmojiKitStickerPickerMount> {
        public ProtoAdapter_BitmojiKitStickerPickerMount() {
            super(FieldEncoding.LENGTH_DELIMITED, BitmojiKitStickerPickerMount.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitStickerPickerMount decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag != 1) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.bitmoji_kit_event_base(BitmojiKitEventBase.ADAPTER.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, BitmojiKitStickerPickerMount bitmojiKitStickerPickerMount) throws IOException {
            BitmojiKitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, bitmojiKitStickerPickerMount.bitmoji_kit_event_base);
            protoWriter.writeBytes(bitmojiKitStickerPickerMount.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(BitmojiKitStickerPickerMount bitmojiKitStickerPickerMount) {
            return BitmojiKitEventBase.ADAPTER.encodedSizeWithTag(1, bitmojiKitStickerPickerMount.bitmoji_kit_event_base) + bitmojiKitStickerPickerMount.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snapchat.kit.sdk.core.metrics.model.BitmojiKitStickerPickerMount$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitStickerPickerMount redact(BitmojiKitStickerPickerMount bitmojiKitStickerPickerMount) {
            ?? newBuilder2 = bitmojiKitStickerPickerMount.newBuilder2();
            BitmojiKitEventBase bitmojiKitEventBase = newBuilder2.bitmoji_kit_event_base;
            if (bitmojiKitEventBase != null) {
                newBuilder2.bitmoji_kit_event_base = BitmojiKitEventBase.ADAPTER.redact(bitmojiKitEventBase);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public BitmojiKitStickerPickerMount(BitmojiKitEventBase bitmojiKitEventBase) {
        this(bitmojiKitEventBase, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BitmojiKitStickerPickerMount) {
            BitmojiKitStickerPickerMount bitmojiKitStickerPickerMount = (BitmojiKitStickerPickerMount) obj;
            return unknownFields().equals(bitmojiKitStickerPickerMount.unknownFields()) && Internal.equals(this.bitmoji_kit_event_base, bitmojiKitStickerPickerMount.bitmoji_kit_event_base);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            BitmojiKitEventBase bitmojiKitEventBase = this.bitmoji_kit_event_base;
            int hashCode2 = hashCode + (bitmojiKitEventBase != null ? bitmojiKitEventBase.hashCode() : 0);
            this.hashCode = hashCode2;
            return hashCode2;
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
        StringBuilder replace = sb2.replace(0, 2, "BitmojiKitStickerPickerMount{");
        replace.append('}');
        return replace.toString();
    }

    public BitmojiKitStickerPickerMount(BitmojiKitEventBase bitmojiKitEventBase, ByteString byteString) {
        super(ADAPTER, byteString);
        this.bitmoji_kit_event_base = bitmojiKitEventBase;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<BitmojiKitStickerPickerMount, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.bitmoji_kit_event_base = this.bitmoji_kit_event_base;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
