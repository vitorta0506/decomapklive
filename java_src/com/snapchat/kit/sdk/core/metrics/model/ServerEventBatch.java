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
public final class ServerEventBatch extends Message<ServerEventBatch, Builder> {
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", tag = 3)
    public final Long max_sequence_id_on_instance;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.ServerEvent#ADAPTER", label = WireField.Label.REPEATED, tag = 4)
    public final List<ServerEvent> server_events;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#DOUBLE", tag = 1)
    public final Double server_upload_ts;
    public static final ProtoAdapter<ServerEventBatch> ADAPTER = new ProtoAdapter_ServerEventBatch();
    public static final Double DEFAULT_SERVER_UPLOAD_TS = Double.valueOf(0.0d);
    public static final Long DEFAULT_MAX_SEQUENCE_ID_ON_INSTANCE = 0L;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<ServerEventBatch, Builder> {
        public Long max_sequence_id_on_instance;
        public List<ServerEvent> server_events = Internal.newMutableList();
        public Double server_upload_ts;

        public final Builder max_sequence_id_on_instance(Long l10) {
            this.max_sequence_id_on_instance = l10;
            return this;
        }

        public final Builder server_events(List<ServerEvent> list) {
            Internal.checkElementsNotNull(list);
            this.server_events = list;
            return this;
        }

        public final Builder server_upload_ts(Double d10) {
            this.server_upload_ts = d10;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final ServerEventBatch build() {
            return new ServerEventBatch(this.server_upload_ts, this.max_sequence_id_on_instance, this.server_events, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_ServerEventBatch extends ProtoAdapter<ServerEventBatch> {
        public ProtoAdapter_ServerEventBatch() {
            super(FieldEncoding.LENGTH_DELIMITED, ServerEventBatch.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final ServerEventBatch decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.server_upload_ts(ProtoAdapter.DOUBLE.decode(protoReader));
                } else if (nextTag == 3) {
                    builder.max_sequence_id_on_instance(ProtoAdapter.UINT64.decode(protoReader));
                } else if (nextTag != 4) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.server_events.add(ServerEvent.ADAPTER.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, ServerEventBatch serverEventBatch) throws IOException {
            ProtoAdapter.DOUBLE.encodeWithTag(protoWriter, 1, serverEventBatch.server_upload_ts);
            ProtoAdapter.UINT64.encodeWithTag(protoWriter, 3, serverEventBatch.max_sequence_id_on_instance);
            ServerEvent.ADAPTER.asRepeated().encodeWithTag(protoWriter, 4, serverEventBatch.server_events);
            protoWriter.writeBytes(serverEventBatch.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(ServerEventBatch serverEventBatch) {
            return ProtoAdapter.DOUBLE.encodedSizeWithTag(1, serverEventBatch.server_upload_ts) + ProtoAdapter.UINT64.encodedSizeWithTag(3, serverEventBatch.max_sequence_id_on_instance) + ServerEvent.ADAPTER.asRepeated().encodedSizeWithTag(4, serverEventBatch.server_events) + serverEventBatch.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snapchat.kit.sdk.core.metrics.model.ServerEventBatch$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final ServerEventBatch redact(ServerEventBatch serverEventBatch) {
            ?? newBuilder2 = serverEventBatch.newBuilder2();
            Internal.redactElements(newBuilder2.server_events, ServerEvent.ADAPTER);
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public ServerEventBatch(Double d10, Long l10, List<ServerEvent> list) {
        this(d10, l10, list, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ServerEventBatch) {
            ServerEventBatch serverEventBatch = (ServerEventBatch) obj;
            return unknownFields().equals(serverEventBatch.unknownFields()) && Internal.equals(this.server_upload_ts, serverEventBatch.server_upload_ts) && Internal.equals(this.max_sequence_id_on_instance, serverEventBatch.max_sequence_id_on_instance) && this.server_events.equals(serverEventBatch.server_events);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            Double d10 = this.server_upload_ts;
            int hashCode2 = (hashCode + (d10 != null ? d10.hashCode() : 0)) * 37;
            Long l10 = this.max_sequence_id_on_instance;
            int hashCode3 = ((hashCode2 + (l10 != null ? l10.hashCode() : 0)) * 37) + this.server_events.hashCode();
            this.hashCode = hashCode3;
            return hashCode3;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.server_upload_ts != null) {
            sb2.append(", server_upload_ts=");
            sb2.append(this.server_upload_ts);
        }
        if (this.max_sequence_id_on_instance != null) {
            sb2.append(", max_sequence_id_on_instance=");
            sb2.append(this.max_sequence_id_on_instance);
        }
        if (!this.server_events.isEmpty()) {
            sb2.append(", server_events=");
            sb2.append(this.server_events);
        }
        StringBuilder replace = sb2.replace(0, 2, "ServerEventBatch{");
        replace.append('}');
        return replace.toString();
    }

    public ServerEventBatch(Double d10, Long l10, List<ServerEvent> list, ByteString byteString) {
        super(ADAPTER, byteString);
        this.server_upload_ts = d10;
        this.max_sequence_id_on_instance = l10;
        this.server_events = Internal.immutableCopyOf("server_events", list);
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<ServerEventBatch, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.server_upload_ts = this.server_upload_ts;
        builder.max_sequence_id_on_instance = this.max_sequence_id_on_instance;
        builder.server_events = Internal.copyOf("server_events", this.server_events);
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
