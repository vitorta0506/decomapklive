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
public final class StoryKitEventBase extends Message<StoryKitEventBase, Builder> {
    public static final ProtoAdapter<StoryKitEventBase> ADAPTER = new ProtoAdapter_StoryKitEventBase();
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.KitEventBase#ADAPTER", tag = 1)
    public final KitEventBase kit_event_base;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<StoryKitEventBase, Builder> {
        public KitEventBase kit_event_base;

        public final Builder kit_event_base(KitEventBase kitEventBase) {
            this.kit_event_base = kitEventBase;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final StoryKitEventBase build() {
            return new StoryKitEventBase(this.kit_event_base, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_StoryKitEventBase extends ProtoAdapter<StoryKitEventBase> {
        public ProtoAdapter_StoryKitEventBase() {
            super(FieldEncoding.LENGTH_DELIMITED, StoryKitEventBase.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final StoryKitEventBase decode(ProtoReader protoReader) throws IOException {
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
                    builder.kit_event_base(KitEventBase.ADAPTER.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, StoryKitEventBase storyKitEventBase) throws IOException {
            KitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, storyKitEventBase.kit_event_base);
            protoWriter.writeBytes(storyKitEventBase.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(StoryKitEventBase storyKitEventBase) {
            return KitEventBase.ADAPTER.encodedSizeWithTag(1, storyKitEventBase.kit_event_base) + storyKitEventBase.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snapchat.kit.sdk.core.metrics.model.StoryKitEventBase$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final StoryKitEventBase redact(StoryKitEventBase storyKitEventBase) {
            ?? newBuilder2 = storyKitEventBase.newBuilder2();
            KitEventBase kitEventBase = newBuilder2.kit_event_base;
            if (kitEventBase != null) {
                newBuilder2.kit_event_base = KitEventBase.ADAPTER.redact(kitEventBase);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public StoryKitEventBase(KitEventBase kitEventBase) {
        this(kitEventBase, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof StoryKitEventBase) {
            StoryKitEventBase storyKitEventBase = (StoryKitEventBase) obj;
            return unknownFields().equals(storyKitEventBase.unknownFields()) && Internal.equals(this.kit_event_base, storyKitEventBase.kit_event_base);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            KitEventBase kitEventBase = this.kit_event_base;
            int hashCode2 = hashCode + (kitEventBase != null ? kitEventBase.hashCode() : 0);
            this.hashCode = hashCode2;
            return hashCode2;
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
        StringBuilder replace = sb2.replace(0, 2, "StoryKitEventBase{");
        replace.append('}');
        return replace.toString();
    }

    public StoryKitEventBase(KitEventBase kitEventBase, ByteString byteString) {
        super(ADAPTER, byteString);
        this.kit_event_base = kitEventBase;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<StoryKitEventBase, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.kit_event_base = this.kit_event_base;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
