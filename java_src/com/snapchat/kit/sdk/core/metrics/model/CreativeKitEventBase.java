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
public final class CreativeKitEventBase extends Message<CreativeKitEventBase, Builder> {
    public static final ProtoAdapter<CreativeKitEventBase> ADAPTER = new ProtoAdapter_CreativeKitEventBase();
    public static final String DEFAULT_ATTACHMENT_URL = "";
    public static final String DEFAULT_SOURCE_URL = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final String attachment_url;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.KitEventBase#ADAPTER", tag = 1)
    public final KitEventBase kit_event_base;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String source_url;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<CreativeKitEventBase, Builder> {
        public String attachment_url;
        public KitEventBase kit_event_base;
        public String source_url;

        public final Builder attachment_url(String str) {
            this.attachment_url = str;
            return this;
        }

        public final Builder kit_event_base(KitEventBase kitEventBase) {
            this.kit_event_base = kitEventBase;
            return this;
        }

        public final Builder source_url(String str) {
            this.source_url = str;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final CreativeKitEventBase build() {
            return new CreativeKitEventBase(this.kit_event_base, this.source_url, this.attachment_url, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_CreativeKitEventBase extends ProtoAdapter<CreativeKitEventBase> {
        public ProtoAdapter_CreativeKitEventBase() {
            super(FieldEncoding.LENGTH_DELIMITED, CreativeKitEventBase.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final CreativeKitEventBase decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.kit_event_base(KitEventBase.ADAPTER.decode(protoReader));
                } else if (nextTag == 2) {
                    builder.source_url(ProtoAdapter.STRING.decode(protoReader));
                } else if (nextTag != 3) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.attachment_url(ProtoAdapter.STRING.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, CreativeKitEventBase creativeKitEventBase) throws IOException {
            KitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, creativeKitEventBase.kit_event_base);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            protoAdapter.encodeWithTag(protoWriter, 2, creativeKitEventBase.source_url);
            protoAdapter.encodeWithTag(protoWriter, 3, creativeKitEventBase.attachment_url);
            protoWriter.writeBytes(creativeKitEventBase.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(CreativeKitEventBase creativeKitEventBase) {
            int encodedSizeWithTag = KitEventBase.ADAPTER.encodedSizeWithTag(1, creativeKitEventBase.kit_event_base);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            return encodedSizeWithTag + protoAdapter.encodedSizeWithTag(2, creativeKitEventBase.source_url) + protoAdapter.encodedSizeWithTag(3, creativeKitEventBase.attachment_url) + creativeKitEventBase.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snapchat.kit.sdk.core.metrics.model.CreativeKitEventBase$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final CreativeKitEventBase redact(CreativeKitEventBase creativeKitEventBase) {
            ?? newBuilder2 = creativeKitEventBase.newBuilder2();
            KitEventBase kitEventBase = newBuilder2.kit_event_base;
            if (kitEventBase != null) {
                newBuilder2.kit_event_base = KitEventBase.ADAPTER.redact(kitEventBase);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public CreativeKitEventBase(KitEventBase kitEventBase, String str, String str2) {
        this(kitEventBase, str, str2, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CreativeKitEventBase) {
            CreativeKitEventBase creativeKitEventBase = (CreativeKitEventBase) obj;
            return unknownFields().equals(creativeKitEventBase.unknownFields()) && Internal.equals(this.kit_event_base, creativeKitEventBase.kit_event_base) && Internal.equals(this.source_url, creativeKitEventBase.source_url) && Internal.equals(this.attachment_url, creativeKitEventBase.attachment_url);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            KitEventBase kitEventBase = this.kit_event_base;
            int hashCode2 = (hashCode + (kitEventBase != null ? kitEventBase.hashCode() : 0)) * 37;
            String str = this.source_url;
            int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 37;
            String str2 = this.attachment_url;
            int hashCode4 = hashCode3 + (str2 != null ? str2.hashCode() : 0);
            this.hashCode = hashCode4;
            return hashCode4;
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
        if (this.source_url != null) {
            sb2.append(", source_url=");
            sb2.append(this.source_url);
        }
        if (this.attachment_url != null) {
            sb2.append(", attachment_url=");
            sb2.append(this.attachment_url);
        }
        StringBuilder replace = sb2.replace(0, 2, "CreativeKitEventBase{");
        replace.append('}');
        return replace.toString();
    }

    public CreativeKitEventBase(KitEventBase kitEventBase, String str, String str2, ByteString byteString) {
        super(ADAPTER, byteString);
        this.kit_event_base = kitEventBase;
        this.source_url = str;
        this.attachment_url = str2;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<CreativeKitEventBase, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.kit_event_base = this.kit_event_base;
        builder.source_url = this.source_url;
        builder.attachment_url = this.attachment_url;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
