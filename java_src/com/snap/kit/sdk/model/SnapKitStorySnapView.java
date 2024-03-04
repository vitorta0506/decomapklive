package com.snap.kit.sdk.model;

import com.snapchat.kit.sdk.core.metrics.model.Timestamp;
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
public final class SnapKitStorySnapView extends Message<SnapKitStorySnapView, Builder> {
    public static final ProtoAdapter<SnapKitStorySnapView> ADAPTER = new ProtoAdapter_SnapKitStorySnapView();
    public static final String DEFAULT_OWNER_EXTERNAL_ID = "";
    public static final String DEFAULT_SNAP_ID = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.google.protobuf.Timestamp#ADAPTER", tag = 1)
    public final Timestamp client_timestamp;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final String owner_external_id;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String snap_id;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<SnapKitStorySnapView, Builder> {
        public Timestamp client_timestamp;
        public String owner_external_id;
        public String snap_id;

        public final Builder client_timestamp(Timestamp timestamp) {
            this.client_timestamp = timestamp;
            return this;
        }

        public final Builder owner_external_id(String str) {
            this.owner_external_id = str;
            return this;
        }

        public final Builder snap_id(String str) {
            this.snap_id = str;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final SnapKitStorySnapView build() {
            return new SnapKitStorySnapView(this.client_timestamp, this.snap_id, this.owner_external_id, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_SnapKitStorySnapView extends ProtoAdapter<SnapKitStorySnapView> {
        public ProtoAdapter_SnapKitStorySnapView() {
            super(FieldEncoding.LENGTH_DELIMITED, SnapKitStorySnapView.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final SnapKitStorySnapView decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.client_timestamp(Timestamp.ADAPTER.decode(protoReader));
                } else if (nextTag == 2) {
                    builder.snap_id(ProtoAdapter.STRING.decode(protoReader));
                } else if (nextTag != 3) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.owner_external_id(ProtoAdapter.STRING.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, SnapKitStorySnapView snapKitStorySnapView) throws IOException {
            Timestamp.ADAPTER.encodeWithTag(protoWriter, 1, snapKitStorySnapView.client_timestamp);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            protoAdapter.encodeWithTag(protoWriter, 2, snapKitStorySnapView.snap_id);
            protoAdapter.encodeWithTag(protoWriter, 3, snapKitStorySnapView.owner_external_id);
            protoWriter.writeBytes(snapKitStorySnapView.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(SnapKitStorySnapView snapKitStorySnapView) {
            int encodedSizeWithTag = Timestamp.ADAPTER.encodedSizeWithTag(1, snapKitStorySnapView.client_timestamp);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            return encodedSizeWithTag + protoAdapter.encodedSizeWithTag(2, snapKitStorySnapView.snap_id) + protoAdapter.encodedSizeWithTag(3, snapKitStorySnapView.owner_external_id) + snapKitStorySnapView.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snap.kit.sdk.model.SnapKitStorySnapView$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final SnapKitStorySnapView redact(SnapKitStorySnapView snapKitStorySnapView) {
            ?? newBuilder2 = snapKitStorySnapView.newBuilder2();
            Timestamp timestamp = newBuilder2.client_timestamp;
            if (timestamp != null) {
                newBuilder2.client_timestamp = Timestamp.ADAPTER.redact(timestamp);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public SnapKitStorySnapView(Timestamp timestamp, String str, String str2) {
        this(timestamp, str, str2, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SnapKitStorySnapView) {
            SnapKitStorySnapView snapKitStorySnapView = (SnapKitStorySnapView) obj;
            return unknownFields().equals(snapKitStorySnapView.unknownFields()) && Internal.equals(this.client_timestamp, snapKitStorySnapView.client_timestamp) && Internal.equals(this.snap_id, snapKitStorySnapView.snap_id) && Internal.equals(this.owner_external_id, snapKitStorySnapView.owner_external_id);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            Timestamp timestamp = this.client_timestamp;
            int hashCode2 = (hashCode + (timestamp != null ? timestamp.hashCode() : 0)) * 37;
            String str = this.snap_id;
            int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 37;
            String str2 = this.owner_external_id;
            int hashCode4 = hashCode3 + (str2 != null ? str2.hashCode() : 0);
            this.hashCode = hashCode4;
            return hashCode4;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.client_timestamp != null) {
            sb2.append(", client_timestamp=");
            sb2.append(this.client_timestamp);
        }
        if (this.snap_id != null) {
            sb2.append(", snap_id=");
            sb2.append(this.snap_id);
        }
        if (this.owner_external_id != null) {
            sb2.append(", owner_external_id=");
            sb2.append(this.owner_external_id);
        }
        StringBuilder replace = sb2.replace(0, 2, "SnapKitStorySnapView{");
        replace.append('}');
        return replace.toString();
    }

    public SnapKitStorySnapView(Timestamp timestamp, String str, String str2, ByteString byteString) {
        super(ADAPTER, byteString);
        this.client_timestamp = timestamp;
        this.snap_id = str;
        this.owner_external_id = str2;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<SnapKitStorySnapView, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.client_timestamp = this.client_timestamp;
        builder.snap_id = this.snap_id;
        builder.owner_external_id = this.owner_external_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
