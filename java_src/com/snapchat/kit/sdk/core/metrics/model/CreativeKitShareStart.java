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
public final class CreativeKitShareStart extends Message<CreativeKitShareStart, Builder> {
    public static final ProtoAdapter<CreativeKitShareStart> ADAPTER = new ProtoAdapter_CreativeKitShareStart();
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.CreativeKitEventBase#ADAPTER", tag = 1)
    public final CreativeKitEventBase creative_kit_event_base;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<CreativeKitShareStart, Builder> {
        public CreativeKitEventBase creative_kit_event_base;

        public final Builder creative_kit_event_base(CreativeKitEventBase creativeKitEventBase) {
            this.creative_kit_event_base = creativeKitEventBase;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final CreativeKitShareStart build() {
            return new CreativeKitShareStart(this.creative_kit_event_base, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_CreativeKitShareStart extends ProtoAdapter<CreativeKitShareStart> {
        public ProtoAdapter_CreativeKitShareStart() {
            super(FieldEncoding.LENGTH_DELIMITED, CreativeKitShareStart.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final CreativeKitShareStart decode(ProtoReader protoReader) throws IOException {
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
                    builder.creative_kit_event_base(CreativeKitEventBase.ADAPTER.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, CreativeKitShareStart creativeKitShareStart) throws IOException {
            CreativeKitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, creativeKitShareStart.creative_kit_event_base);
            protoWriter.writeBytes(creativeKitShareStart.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(CreativeKitShareStart creativeKitShareStart) {
            return CreativeKitEventBase.ADAPTER.encodedSizeWithTag(1, creativeKitShareStart.creative_kit_event_base) + creativeKitShareStart.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snapchat.kit.sdk.core.metrics.model.CreativeKitShareStart$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final CreativeKitShareStart redact(CreativeKitShareStart creativeKitShareStart) {
            ?? newBuilder2 = creativeKitShareStart.newBuilder2();
            CreativeKitEventBase creativeKitEventBase = newBuilder2.creative_kit_event_base;
            if (creativeKitEventBase != null) {
                newBuilder2.creative_kit_event_base = CreativeKitEventBase.ADAPTER.redact(creativeKitEventBase);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public CreativeKitShareStart(CreativeKitEventBase creativeKitEventBase) {
        this(creativeKitEventBase, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CreativeKitShareStart) {
            CreativeKitShareStart creativeKitShareStart = (CreativeKitShareStart) obj;
            return unknownFields().equals(creativeKitShareStart.unknownFields()) && Internal.equals(this.creative_kit_event_base, creativeKitShareStart.creative_kit_event_base);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            CreativeKitEventBase creativeKitEventBase = this.creative_kit_event_base;
            int hashCode2 = hashCode + (creativeKitEventBase != null ? creativeKitEventBase.hashCode() : 0);
            this.hashCode = hashCode2;
            return hashCode2;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.creative_kit_event_base != null) {
            sb2.append(", creative_kit_event_base=");
            sb2.append(this.creative_kit_event_base);
        }
        StringBuilder replace = sb2.replace(0, 2, "CreativeKitShareStart{");
        replace.append('}');
        return replace.toString();
    }

    public CreativeKitShareStart(CreativeKitEventBase creativeKitEventBase, ByteString byteString) {
        super(ADAPTER, byteString);
        this.creative_kit_event_base = creativeKitEventBase;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<CreativeKitShareStart, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.creative_kit_event_base = this.creative_kit_event_base;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
