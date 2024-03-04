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
public final class BitmojiKitPermissionUpdate extends Message<BitmojiKitPermissionUpdate, Builder> {
    public static final ProtoAdapter<BitmojiKitPermissionUpdate> ADAPTER = new ProtoAdapter_BitmojiKitPermissionUpdate();
    public static final BitmojiKitPermissionUpdateStatus DEFAULT_STATUS = BitmojiKitPermissionUpdateStatus.UNKNOWN_BITMOJI_KIT_PERMISSION_UPDATE_STATUS;
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitEventBase#ADAPTER", tag = 1)
    public final BitmojiKitEventBase bitmoji_kit_event_base;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitPermissionUpdateStatus#ADAPTER", tag = 2)
    public final BitmojiKitPermissionUpdateStatus status;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<BitmojiKitPermissionUpdate, Builder> {
        public BitmojiKitEventBase bitmoji_kit_event_base;
        public BitmojiKitPermissionUpdateStatus status;

        public final Builder bitmoji_kit_event_base(BitmojiKitEventBase bitmojiKitEventBase) {
            this.bitmoji_kit_event_base = bitmojiKitEventBase;
            return this;
        }

        public final Builder status(BitmojiKitPermissionUpdateStatus bitmojiKitPermissionUpdateStatus) {
            this.status = bitmojiKitPermissionUpdateStatus;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final BitmojiKitPermissionUpdate build() {
            return new BitmojiKitPermissionUpdate(this.bitmoji_kit_event_base, this.status, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_BitmojiKitPermissionUpdate extends ProtoAdapter<BitmojiKitPermissionUpdate> {
        public ProtoAdapter_BitmojiKitPermissionUpdate() {
            super(FieldEncoding.LENGTH_DELIMITED, BitmojiKitPermissionUpdate.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitPermissionUpdate decode(ProtoReader protoReader) throws IOException {
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
                    try {
                        builder.status(BitmojiKitPermissionUpdateStatus.ADAPTER.decode(protoReader));
                    } catch (ProtoAdapter.EnumConstantNotFoundException e10) {
                        builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e10.value));
                    }
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, BitmojiKitPermissionUpdate bitmojiKitPermissionUpdate) throws IOException {
            BitmojiKitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, bitmojiKitPermissionUpdate.bitmoji_kit_event_base);
            BitmojiKitPermissionUpdateStatus.ADAPTER.encodeWithTag(protoWriter, 2, bitmojiKitPermissionUpdate.status);
            protoWriter.writeBytes(bitmojiKitPermissionUpdate.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(BitmojiKitPermissionUpdate bitmojiKitPermissionUpdate) {
            return BitmojiKitEventBase.ADAPTER.encodedSizeWithTag(1, bitmojiKitPermissionUpdate.bitmoji_kit_event_base) + BitmojiKitPermissionUpdateStatus.ADAPTER.encodedSizeWithTag(2, bitmojiKitPermissionUpdate.status) + bitmojiKitPermissionUpdate.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.squareup.wire.Message$Builder, com.snapchat.kit.sdk.core.metrics.model.BitmojiKitPermissionUpdate$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitPermissionUpdate redact(BitmojiKitPermissionUpdate bitmojiKitPermissionUpdate) {
            ?? newBuilder2 = bitmojiKitPermissionUpdate.newBuilder2();
            BitmojiKitEventBase bitmojiKitEventBase = newBuilder2.bitmoji_kit_event_base;
            if (bitmojiKitEventBase != null) {
                newBuilder2.bitmoji_kit_event_base = BitmojiKitEventBase.ADAPTER.redact(bitmojiKitEventBase);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public BitmojiKitPermissionUpdate(BitmojiKitEventBase bitmojiKitEventBase, BitmojiKitPermissionUpdateStatus bitmojiKitPermissionUpdateStatus) {
        this(bitmojiKitEventBase, bitmojiKitPermissionUpdateStatus, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BitmojiKitPermissionUpdate) {
            BitmojiKitPermissionUpdate bitmojiKitPermissionUpdate = (BitmojiKitPermissionUpdate) obj;
            return unknownFields().equals(bitmojiKitPermissionUpdate.unknownFields()) && Internal.equals(this.bitmoji_kit_event_base, bitmojiKitPermissionUpdate.bitmoji_kit_event_base) && Internal.equals(this.status, bitmojiKitPermissionUpdate.status);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            BitmojiKitEventBase bitmojiKitEventBase = this.bitmoji_kit_event_base;
            int hashCode2 = (hashCode + (bitmojiKitEventBase != null ? bitmojiKitEventBase.hashCode() : 0)) * 37;
            BitmojiKitPermissionUpdateStatus bitmojiKitPermissionUpdateStatus = this.status;
            int hashCode3 = hashCode2 + (bitmojiKitPermissionUpdateStatus != null ? bitmojiKitPermissionUpdateStatus.hashCode() : 0);
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
        if (this.status != null) {
            sb2.append(", status=");
            sb2.append(this.status);
        }
        StringBuilder replace = sb2.replace(0, 2, "BitmojiKitPermissionUpdate{");
        replace.append('}');
        return replace.toString();
    }

    public BitmojiKitPermissionUpdate(BitmojiKitEventBase bitmojiKitEventBase, BitmojiKitPermissionUpdateStatus bitmojiKitPermissionUpdateStatus, ByteString byteString) {
        super(ADAPTER, byteString);
        this.bitmoji_kit_event_base = bitmojiKitEventBase;
        this.status = bitmojiKitPermissionUpdateStatus;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<BitmojiKitPermissionUpdate, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.bitmoji_kit_event_base = this.bitmoji_kit_event_base;
        builder.status = this.status;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
