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
public final class LevelMetric extends Message<LevelMetric, Builder> {
    public static final ProtoAdapter<LevelMetric> ADAPTER = new ProtoAdapter_LevelMetric();
    public static final Long DEFAULT_LEVEL = 0L;
    public static final String DEFAULT_NAME = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", tag = 3)
    public final Long level;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String name;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.Timestamp#ADAPTER", tag = 2)
    public final Timestamp timestamp;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<LevelMetric, Builder> {
        public Long level;
        public String name;
        public Timestamp timestamp;

        public final Builder level(Long l10) {
            this.level = l10;
            return this;
        }

        public final Builder name(String str) {
            this.name = str;
            return this;
        }

        public final Builder timestamp(Timestamp timestamp) {
            this.timestamp = timestamp;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final LevelMetric build() {
            return new LevelMetric(this.name, this.timestamp, this.level, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_LevelMetric extends ProtoAdapter<LevelMetric> {
        public ProtoAdapter_LevelMetric() {
            super(FieldEncoding.LENGTH_DELIMITED, LevelMetric.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final LevelMetric decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.name(ProtoAdapter.STRING.decode(protoReader));
                } else if (nextTag == 2) {
                    builder.timestamp(Timestamp.ADAPTER.decode(protoReader));
                } else if (nextTag != 3) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.level(ProtoAdapter.INT64.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, LevelMetric levelMetric) throws IOException {
            ProtoAdapter.STRING.encodeWithTag(protoWriter, 1, levelMetric.name);
            Timestamp.ADAPTER.encodeWithTag(protoWriter, 2, levelMetric.timestamp);
            ProtoAdapter.INT64.encodeWithTag(protoWriter, 3, levelMetric.level);
            protoWriter.writeBytes(levelMetric.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(LevelMetric levelMetric) {
            return ProtoAdapter.STRING.encodedSizeWithTag(1, levelMetric.name) + Timestamp.ADAPTER.encodedSizeWithTag(2, levelMetric.timestamp) + ProtoAdapter.INT64.encodedSizeWithTag(3, levelMetric.level) + levelMetric.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.squareup.wire.Message$Builder, com.snapchat.kit.sdk.core.metrics.model.LevelMetric$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final LevelMetric redact(LevelMetric levelMetric) {
            ?? newBuilder2 = levelMetric.newBuilder2();
            Timestamp timestamp = newBuilder2.timestamp;
            if (timestamp != null) {
                newBuilder2.timestamp = Timestamp.ADAPTER.redact(timestamp);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public LevelMetric(String str, Timestamp timestamp, Long l10) {
        this(str, timestamp, l10, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof LevelMetric) {
            LevelMetric levelMetric = (LevelMetric) obj;
            return unknownFields().equals(levelMetric.unknownFields()) && Internal.equals(this.name, levelMetric.name) && Internal.equals(this.timestamp, levelMetric.timestamp) && Internal.equals(this.level, levelMetric.level);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            String str = this.name;
            int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 37;
            Timestamp timestamp = this.timestamp;
            int hashCode3 = (hashCode2 + (timestamp != null ? timestamp.hashCode() : 0)) * 37;
            Long l10 = this.level;
            int hashCode4 = hashCode3 + (l10 != null ? l10.hashCode() : 0);
            this.hashCode = hashCode4;
            return hashCode4;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.name != null) {
            sb2.append(", name=");
            sb2.append(this.name);
        }
        if (this.timestamp != null) {
            sb2.append(", timestamp=");
            sb2.append(this.timestamp);
        }
        if (this.level != null) {
            sb2.append(", level=");
            sb2.append(this.level);
        }
        StringBuilder replace = sb2.replace(0, 2, "LevelMetric{");
        replace.append('}');
        return replace.toString();
    }

    public LevelMetric(String str, Timestamp timestamp, Long l10, ByteString byteString) {
        super(ADAPTER, byteString);
        this.name = str;
        this.timestamp = timestamp;
        this.level = l10;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<LevelMetric, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.name = this.name;
        builder.timestamp = this.timestamp;
        builder.level = this.level;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
