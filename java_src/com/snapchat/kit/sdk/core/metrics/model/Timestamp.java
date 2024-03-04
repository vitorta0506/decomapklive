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
public final class Timestamp extends Message<Timestamp, Builder> {
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 2)
    public final Integer nanos;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", tag = 1)
    public final Long seconds;
    public static final ProtoAdapter<Timestamp> ADAPTER = new ProtoAdapter_Timestamp();
    public static final Long DEFAULT_SECONDS = 0L;
    public static final Integer DEFAULT_NANOS = 0;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<Timestamp, Builder> {
        public Integer nanos;
        public Long seconds;

        public final Builder nanos(Integer num) {
            this.nanos = num;
            return this;
        }

        public final Builder seconds(Long l10) {
            this.seconds = l10;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final Timestamp build() {
            return new Timestamp(this.seconds, this.nanos, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_Timestamp extends ProtoAdapter<Timestamp> {
        public ProtoAdapter_Timestamp() {
            super(FieldEncoding.LENGTH_DELIMITED, Timestamp.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final Timestamp decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.seconds(ProtoAdapter.INT64.decode(protoReader));
                } else if (nextTag != 2) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.nanos(ProtoAdapter.INT32.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, Timestamp timestamp) throws IOException {
            ProtoAdapter.INT64.encodeWithTag(protoWriter, 1, timestamp.seconds);
            ProtoAdapter.INT32.encodeWithTag(protoWriter, 2, timestamp.nanos);
            protoWriter.writeBytes(timestamp.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(Timestamp timestamp) {
            return ProtoAdapter.INT64.encodedSizeWithTag(1, timestamp.seconds) + ProtoAdapter.INT32.encodedSizeWithTag(2, timestamp.nanos) + timestamp.unknownFields().size();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final Timestamp redact(Timestamp timestamp) {
            Message.Builder<Timestamp, Builder> newBuilder2 = timestamp.newBuilder2();
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public Timestamp(Long l10, Integer num) {
        this(l10, num, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Timestamp) {
            Timestamp timestamp = (Timestamp) obj;
            return unknownFields().equals(timestamp.unknownFields()) && Internal.equals(this.seconds, timestamp.seconds) && Internal.equals(this.nanos, timestamp.nanos);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            Long l10 = this.seconds;
            int hashCode2 = (hashCode + (l10 != null ? l10.hashCode() : 0)) * 37;
            Integer num = this.nanos;
            int hashCode3 = hashCode2 + (num != null ? num.hashCode() : 0);
            this.hashCode = hashCode3;
            return hashCode3;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.seconds != null) {
            sb2.append(", seconds=");
            sb2.append(this.seconds);
        }
        if (this.nanos != null) {
            sb2.append(", nanos=");
            sb2.append(this.nanos);
        }
        StringBuilder replace = sb2.replace(0, 2, "Timestamp{");
        replace.append('}');
        return replace.toString();
    }

    public Timestamp(Long l10, Integer num, ByteString byteString) {
        super(ADAPTER, byteString);
        this.seconds = l10;
        this.nanos = num;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<Timestamp, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.seconds = this.seconds;
        builder.nanos = this.nanos;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
