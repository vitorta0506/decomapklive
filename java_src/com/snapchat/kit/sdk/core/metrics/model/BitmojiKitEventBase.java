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
public final class BitmojiKitEventBase extends Message<BitmojiKitEventBase, Builder> {
    public static final ProtoAdapter<BitmojiKitEventBase> ADAPTER = new ProtoAdapter_BitmojiKitEventBase();
    public static final String DEFAULT_STICKER_PICKER_SESSION_ID = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.KitEventBase#ADAPTER", tag = 1)
    public final KitEventBase kit_event_base;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String sticker_picker_session_id;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<BitmojiKitEventBase, Builder> {
        public KitEventBase kit_event_base;
        public String sticker_picker_session_id;

        public final Builder kit_event_base(KitEventBase kitEventBase) {
            this.kit_event_base = kitEventBase;
            return this;
        }

        public final Builder sticker_picker_session_id(String str) {
            this.sticker_picker_session_id = str;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final BitmojiKitEventBase build() {
            return new BitmojiKitEventBase(this.kit_event_base, this.sticker_picker_session_id, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_BitmojiKitEventBase extends ProtoAdapter<BitmojiKitEventBase> {
        public ProtoAdapter_BitmojiKitEventBase() {
            super(FieldEncoding.LENGTH_DELIMITED, BitmojiKitEventBase.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitEventBase decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.kit_event_base(KitEventBase.ADAPTER.decode(protoReader));
                } else if (nextTag != 2) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.sticker_picker_session_id(ProtoAdapter.STRING.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, BitmojiKitEventBase bitmojiKitEventBase) throws IOException {
            KitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, bitmojiKitEventBase.kit_event_base);
            ProtoAdapter.STRING.encodeWithTag(protoWriter, 2, bitmojiKitEventBase.sticker_picker_session_id);
            protoWriter.writeBytes(bitmojiKitEventBase.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(BitmojiKitEventBase bitmojiKitEventBase) {
            return KitEventBase.ADAPTER.encodedSizeWithTag(1, bitmojiKitEventBase.kit_event_base) + ProtoAdapter.STRING.encodedSizeWithTag(2, bitmojiKitEventBase.sticker_picker_session_id) + bitmojiKitEventBase.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snapchat.kit.sdk.core.metrics.model.BitmojiKitEventBase$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitEventBase redact(BitmojiKitEventBase bitmojiKitEventBase) {
            ?? newBuilder2 = bitmojiKitEventBase.newBuilder2();
            KitEventBase kitEventBase = newBuilder2.kit_event_base;
            if (kitEventBase != null) {
                newBuilder2.kit_event_base = KitEventBase.ADAPTER.redact(kitEventBase);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public BitmojiKitEventBase(KitEventBase kitEventBase, String str) {
        this(kitEventBase, str, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BitmojiKitEventBase) {
            BitmojiKitEventBase bitmojiKitEventBase = (BitmojiKitEventBase) obj;
            return unknownFields().equals(bitmojiKitEventBase.unknownFields()) && Internal.equals(this.kit_event_base, bitmojiKitEventBase.kit_event_base) && Internal.equals(this.sticker_picker_session_id, bitmojiKitEventBase.sticker_picker_session_id);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            KitEventBase kitEventBase = this.kit_event_base;
            int hashCode2 = (hashCode + (kitEventBase != null ? kitEventBase.hashCode() : 0)) * 37;
            String str = this.sticker_picker_session_id;
            int hashCode3 = hashCode2 + (str != null ? str.hashCode() : 0);
            this.hashCode = hashCode3;
            return hashCode3;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.kit_event_base != null) {
            sb2.append(", kit_event_base=");
            sb2.append(this.kit_event_base);
        }
        if (this.sticker_picker_session_id != null) {
            sb2.append(", sticker_picker_session_id=");
            sb2.append(this.sticker_picker_session_id);
        }
        StringBuilder replace = sb2.replace(0, 2, "BitmojiKitEventBase{");
        replace.append('}');
        return replace.toString();
    }

    public BitmojiKitEventBase(KitEventBase kitEventBase, String str, ByteString byteString) {
        super(ADAPTER, byteString);
        this.kit_event_base = kitEventBase;
        this.sticker_picker_session_id = str;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<BitmojiKitEventBase, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.kit_event_base = this.kit_event_base;
        builder.sticker_picker_session_id = this.sticker_picker_session_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
