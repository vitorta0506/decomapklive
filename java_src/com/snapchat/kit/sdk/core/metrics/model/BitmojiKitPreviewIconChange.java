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
public final class BitmojiKitPreviewIconChange extends Message<BitmojiKitPreviewIconChange, Builder> {
    public static final ProtoAdapter<BitmojiKitPreviewIconChange> ADAPTER = new ProtoAdapter_BitmojiKitPreviewIconChange();
    public static final String DEFAULT_PREVIEW_STICKER_ID = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitEventBase#ADAPTER", tag = 1)
    public final BitmojiKitEventBase bitmoji_kit_event_base;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String preview_sticker_id;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<BitmojiKitPreviewIconChange, Builder> {
        public BitmojiKitEventBase bitmoji_kit_event_base;
        public String preview_sticker_id;

        public final Builder bitmoji_kit_event_base(BitmojiKitEventBase bitmojiKitEventBase) {
            this.bitmoji_kit_event_base = bitmojiKitEventBase;
            return this;
        }

        public final Builder preview_sticker_id(String str) {
            this.preview_sticker_id = str;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final BitmojiKitPreviewIconChange build() {
            return new BitmojiKitPreviewIconChange(this.bitmoji_kit_event_base, this.preview_sticker_id, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_BitmojiKitPreviewIconChange extends ProtoAdapter<BitmojiKitPreviewIconChange> {
        public ProtoAdapter_BitmojiKitPreviewIconChange() {
            super(FieldEncoding.LENGTH_DELIMITED, BitmojiKitPreviewIconChange.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitPreviewIconChange decode(ProtoReader protoReader) throws IOException {
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
                    builder.preview_sticker_id(ProtoAdapter.STRING.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, BitmojiKitPreviewIconChange bitmojiKitPreviewIconChange) throws IOException {
            BitmojiKitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, bitmojiKitPreviewIconChange.bitmoji_kit_event_base);
            ProtoAdapter.STRING.encodeWithTag(protoWriter, 2, bitmojiKitPreviewIconChange.preview_sticker_id);
            protoWriter.writeBytes(bitmojiKitPreviewIconChange.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(BitmojiKitPreviewIconChange bitmojiKitPreviewIconChange) {
            return BitmojiKitEventBase.ADAPTER.encodedSizeWithTag(1, bitmojiKitPreviewIconChange.bitmoji_kit_event_base) + ProtoAdapter.STRING.encodedSizeWithTag(2, bitmojiKitPreviewIconChange.preview_sticker_id) + bitmojiKitPreviewIconChange.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snapchat.kit.sdk.core.metrics.model.BitmojiKitPreviewIconChange$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitPreviewIconChange redact(BitmojiKitPreviewIconChange bitmojiKitPreviewIconChange) {
            ?? newBuilder2 = bitmojiKitPreviewIconChange.newBuilder2();
            BitmojiKitEventBase bitmojiKitEventBase = newBuilder2.bitmoji_kit_event_base;
            if (bitmojiKitEventBase != null) {
                newBuilder2.bitmoji_kit_event_base = BitmojiKitEventBase.ADAPTER.redact(bitmojiKitEventBase);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public BitmojiKitPreviewIconChange(BitmojiKitEventBase bitmojiKitEventBase, String str) {
        this(bitmojiKitEventBase, str, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BitmojiKitPreviewIconChange) {
            BitmojiKitPreviewIconChange bitmojiKitPreviewIconChange = (BitmojiKitPreviewIconChange) obj;
            return unknownFields().equals(bitmojiKitPreviewIconChange.unknownFields()) && Internal.equals(this.bitmoji_kit_event_base, bitmojiKitPreviewIconChange.bitmoji_kit_event_base) && Internal.equals(this.preview_sticker_id, bitmojiKitPreviewIconChange.preview_sticker_id);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            BitmojiKitEventBase bitmojiKitEventBase = this.bitmoji_kit_event_base;
            int hashCode2 = (hashCode + (bitmojiKitEventBase != null ? bitmojiKitEventBase.hashCode() : 0)) * 37;
            String str = this.preview_sticker_id;
            int hashCode3 = hashCode2 + (str != null ? str.hashCode() : 0);
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
        if (this.preview_sticker_id != null) {
            sb2.append(", preview_sticker_id=");
            sb2.append(this.preview_sticker_id);
        }
        StringBuilder replace = sb2.replace(0, 2, "BitmojiKitPreviewIconChange{");
        replace.append('}');
        return replace.toString();
    }

    public BitmojiKitPreviewIconChange(BitmojiKitEventBase bitmojiKitEventBase, String str, ByteString byteString) {
        super(ADAPTER, byteString);
        this.bitmoji_kit_event_base = bitmojiKitEventBase;
        this.preview_sticker_id = str;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<BitmojiKitPreviewIconChange, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.bitmoji_kit_event_base = this.bitmoji_kit_event_base;
        builder.preview_sticker_id = this.preview_sticker_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
