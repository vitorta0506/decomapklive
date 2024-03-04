package com.snap.kit.sdk.model;

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
public final class MetricSampleRate extends Message<MetricSampleRate, Builder> {
    public static final ProtoAdapter<MetricSampleRate> ADAPTER = new ProtoAdapter_MetricSampleRate();
    public static final Double DEFAULT_RATE = Double.valueOf(0.0d);
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#DOUBLE", tag = 1)
    public final Double rate;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<MetricSampleRate, Builder> {
        public Double rate;

        public final Builder rate(Double d10) {
            this.rate = d10;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final MetricSampleRate build() {
            return new MetricSampleRate(this.rate, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_MetricSampleRate extends ProtoAdapter<MetricSampleRate> {
        public ProtoAdapter_MetricSampleRate() {
            super(FieldEncoding.LENGTH_DELIMITED, MetricSampleRate.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final MetricSampleRate decode(ProtoReader protoReader) throws IOException {
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
                    builder.rate(ProtoAdapter.DOUBLE.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, MetricSampleRate metricSampleRate) throws IOException {
            ProtoAdapter.DOUBLE.encodeWithTag(protoWriter, 1, metricSampleRate.rate);
            protoWriter.writeBytes(metricSampleRate.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(MetricSampleRate metricSampleRate) {
            return ProtoAdapter.DOUBLE.encodedSizeWithTag(1, metricSampleRate.rate) + metricSampleRate.unknownFields().size();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final MetricSampleRate redact(MetricSampleRate metricSampleRate) {
            Message.Builder<MetricSampleRate, Builder> newBuilder2 = metricSampleRate.newBuilder2();
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public MetricSampleRate(Double d10) {
        this(d10, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof MetricSampleRate) {
            MetricSampleRate metricSampleRate = (MetricSampleRate) obj;
            return unknownFields().equals(metricSampleRate.unknownFields()) && Internal.equals(this.rate, metricSampleRate.rate);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            Double d10 = this.rate;
            int hashCode2 = hashCode + (d10 != null ? d10.hashCode() : 0);
            this.hashCode = hashCode2;
            return hashCode2;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.rate != null) {
            sb2.append(", rate=");
            sb2.append(this.rate);
        }
        StringBuilder replace = sb2.replace(0, 2, "MetricSampleRate{");
        replace.append('}');
        return replace.toString();
    }

    public MetricSampleRate(Double d10, ByteString byteString) {
        super(ADAPTER, byteString);
        this.rate = d10;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<MetricSampleRate, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.rate = this.rate;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
