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
public final class CreativeKitShareComplete extends Message<CreativeKitShareComplete, Builder> {
    public static final ProtoAdapter<CreativeKitShareComplete> ADAPTER = new ProtoAdapter_CreativeKitShareComplete();
    public static final Boolean DEFAULT_IS_SUCCESS = Boolean.FALSE;
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.CreativeKitEventBase#ADAPTER", tag = 1)
    public final CreativeKitEventBase creative_kit_event_base;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 2)
    public final Boolean is_success;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<CreativeKitShareComplete, Builder> {
        public CreativeKitEventBase creative_kit_event_base;
        public Boolean is_success;

        public final Builder creative_kit_event_base(CreativeKitEventBase creativeKitEventBase) {
            this.creative_kit_event_base = creativeKitEventBase;
            return this;
        }

        public final Builder is_success(Boolean bool) {
            this.is_success = bool;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final CreativeKitShareComplete build() {
            return new CreativeKitShareComplete(this.creative_kit_event_base, this.is_success, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_CreativeKitShareComplete extends ProtoAdapter<CreativeKitShareComplete> {
        public ProtoAdapter_CreativeKitShareComplete() {
            super(FieldEncoding.LENGTH_DELIMITED, CreativeKitShareComplete.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final CreativeKitShareComplete decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.creative_kit_event_base(CreativeKitEventBase.ADAPTER.decode(protoReader));
                } else if (nextTag != 2) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.is_success(ProtoAdapter.BOOL.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, CreativeKitShareComplete creativeKitShareComplete) throws IOException {
            CreativeKitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, creativeKitShareComplete.creative_kit_event_base);
            ProtoAdapter.BOOL.encodeWithTag(protoWriter, 2, creativeKitShareComplete.is_success);
            protoWriter.writeBytes(creativeKitShareComplete.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(CreativeKitShareComplete creativeKitShareComplete) {
            return CreativeKitEventBase.ADAPTER.encodedSizeWithTag(1, creativeKitShareComplete.creative_kit_event_base) + ProtoAdapter.BOOL.encodedSizeWithTag(2, creativeKitShareComplete.is_success) + creativeKitShareComplete.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snapchat.kit.sdk.core.metrics.model.CreativeKitShareComplete$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final CreativeKitShareComplete redact(CreativeKitShareComplete creativeKitShareComplete) {
            ?? newBuilder2 = creativeKitShareComplete.newBuilder2();
            CreativeKitEventBase creativeKitEventBase = newBuilder2.creative_kit_event_base;
            if (creativeKitEventBase != null) {
                newBuilder2.creative_kit_event_base = CreativeKitEventBase.ADAPTER.redact(creativeKitEventBase);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public CreativeKitShareComplete(CreativeKitEventBase creativeKitEventBase, Boolean bool) {
        this(creativeKitEventBase, bool, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CreativeKitShareComplete) {
            CreativeKitShareComplete creativeKitShareComplete = (CreativeKitShareComplete) obj;
            return unknownFields().equals(creativeKitShareComplete.unknownFields()) && Internal.equals(this.creative_kit_event_base, creativeKitShareComplete.creative_kit_event_base) && Internal.equals(this.is_success, creativeKitShareComplete.is_success);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            CreativeKitEventBase creativeKitEventBase = this.creative_kit_event_base;
            int hashCode2 = (hashCode + (creativeKitEventBase != null ? creativeKitEventBase.hashCode() : 0)) * 37;
            Boolean bool = this.is_success;
            int hashCode3 = hashCode2 + (bool != null ? bool.hashCode() : 0);
            this.hashCode = hashCode3;
            return hashCode3;
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
        if (this.is_success != null) {
            sb2.append(", is_success=");
            sb2.append(this.is_success);
        }
        StringBuilder replace = sb2.replace(0, 2, "CreativeKitShareComplete{");
        replace.append('}');
        return replace.toString();
    }

    public CreativeKitShareComplete(CreativeKitEventBase creativeKitEventBase, Boolean bool, ByteString byteString) {
        super(ADAPTER, byteString);
        this.creative_kit_event_base = creativeKitEventBase;
        this.is_success = bool;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<CreativeKitShareComplete, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.creative_kit_event_base = this.creative_kit_event_base;
        builder.is_success = this.is_success;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
