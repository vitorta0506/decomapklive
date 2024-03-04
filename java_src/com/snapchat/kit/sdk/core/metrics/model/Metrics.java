package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import java.util.List;
import okio.ByteString;
/* loaded from: classes4.dex */
public final class Metrics extends Message<Metrics, Builder> {
    public static final ProtoAdapter<Metrics> ADAPTER = new ProtoAdapter_Metrics();
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.CounterMetric#ADAPTER", label = WireField.Label.REPEATED, tag = 1)
    public final List<CounterMetric> counters;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.LevelMetric#ADAPTER", label = WireField.Label.REPEATED, tag = 3)
    public final List<LevelMetric> levels;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.TimerMetric#ADAPTER", label = WireField.Label.REPEATED, tag = 2)
    public final List<TimerMetric> timers;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<Metrics, Builder> {
        public List<CounterMetric> counters = Internal.newMutableList();
        public List<TimerMetric> timers = Internal.newMutableList();
        public List<LevelMetric> levels = Internal.newMutableList();

        public final Builder counters(List<CounterMetric> list) {
            Internal.checkElementsNotNull(list);
            this.counters = list;
            return this;
        }

        public final Builder levels(List<LevelMetric> list) {
            Internal.checkElementsNotNull(list);
            this.levels = list;
            return this;
        }

        public final Builder timers(List<TimerMetric> list) {
            Internal.checkElementsNotNull(list);
            this.timers = list;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final Metrics build() {
            return new Metrics(this.counters, this.timers, this.levels, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_Metrics extends ProtoAdapter<Metrics> {
        public ProtoAdapter_Metrics() {
            super(FieldEncoding.LENGTH_DELIMITED, Metrics.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final Metrics decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.counters.add(CounterMetric.ADAPTER.decode(protoReader));
                } else if (nextTag == 2) {
                    builder.timers.add(TimerMetric.ADAPTER.decode(protoReader));
                } else if (nextTag != 3) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.levels.add(LevelMetric.ADAPTER.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, Metrics metrics) throws IOException {
            CounterMetric.ADAPTER.asRepeated().encodeWithTag(protoWriter, 1, metrics.counters);
            TimerMetric.ADAPTER.asRepeated().encodeWithTag(protoWriter, 2, metrics.timers);
            LevelMetric.ADAPTER.asRepeated().encodeWithTag(protoWriter, 3, metrics.levels);
            protoWriter.writeBytes(metrics.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(Metrics metrics) {
            return CounterMetric.ADAPTER.asRepeated().encodedSizeWithTag(1, metrics.counters) + TimerMetric.ADAPTER.asRepeated().encodedSizeWithTag(2, metrics.timers) + LevelMetric.ADAPTER.asRepeated().encodedSizeWithTag(3, metrics.levels) + metrics.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snapchat.kit.sdk.core.metrics.model.Metrics$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final Metrics redact(Metrics metrics) {
            ?? newBuilder2 = metrics.newBuilder2();
            Internal.redactElements(newBuilder2.counters, CounterMetric.ADAPTER);
            Internal.redactElements(newBuilder2.timers, TimerMetric.ADAPTER);
            Internal.redactElements(newBuilder2.levels, LevelMetric.ADAPTER);
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public Metrics(List<CounterMetric> list, List<TimerMetric> list2, List<LevelMetric> list3) {
        this(list, list2, list3, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Metrics) {
            Metrics metrics = (Metrics) obj;
            return unknownFields().equals(metrics.unknownFields()) && this.counters.equals(metrics.counters) && this.timers.equals(metrics.timers) && this.levels.equals(metrics.levels);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = (((((unknownFields().hashCode() * 37) + this.counters.hashCode()) * 37) + this.timers.hashCode()) * 37) + this.levels.hashCode();
            this.hashCode = hashCode;
            return hashCode;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (!this.counters.isEmpty()) {
            sb2.append(", counters=");
            sb2.append(this.counters);
        }
        if (!this.timers.isEmpty()) {
            sb2.append(", timers=");
            sb2.append(this.timers);
        }
        if (!this.levels.isEmpty()) {
            sb2.append(", levels=");
            sb2.append(this.levels);
        }
        StringBuilder replace = sb2.replace(0, 2, "Metrics{");
        replace.append('}');
        return replace.toString();
    }

    public Metrics(List<CounterMetric> list, List<TimerMetric> list2, List<LevelMetric> list3, ByteString byteString) {
        super(ADAPTER, byteString);
        this.counters = Internal.immutableCopyOf("counters", list);
        this.timers = Internal.immutableCopyOf("timers", list2);
        this.levels = Internal.immutableCopyOf("levels", list3);
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<Metrics, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.counters = Internal.copyOf("counters", this.counters);
        builder.timers = Internal.copyOf("timers", this.timers);
        builder.levels = Internal.copyOf("levels", this.levels);
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
