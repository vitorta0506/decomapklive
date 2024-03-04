package com.snap.kit.sdk.model;

import com.snap.kit.common.model.DeviceEnvironmentInfo;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.io.IOException;
import java.util.List;
import okio.ByteString;
/* loaded from: classes4.dex */
public final class SnapKitStorySnapViews extends Message<SnapKitStorySnapViews, Builder> {
    public static final ProtoAdapter<SnapKitStorySnapViews> ADAPTER = new ProtoAdapter_SnapKitStorySnapViews();
    public static final String DEFAULT_APP_ID = "";
    public static final String DEFAULT_CLIENT_ID = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final String app_id;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String client_id;
    @WireField(adapter = "com.snap.kit.common.model.DeviceEnvironmentInfo#ADAPTER", tag = 1)
    public final DeviceEnvironmentInfo device_environment_info;
    @WireField(adapter = "com.snap.kit.sdk.model.SnapKitStorySnapView#ADAPTER", label = WireField.Label.REPEATED, tag = 4)
    public final List<SnapKitStorySnapView> views;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<SnapKitStorySnapViews, Builder> {
        public String app_id;
        public String client_id;
        public DeviceEnvironmentInfo device_environment_info;
        public List<SnapKitStorySnapView> views = Internal.newMutableList();

        public final Builder app_id(String str) {
            this.app_id = str;
            return this;
        }

        public final Builder client_id(String str) {
            this.client_id = str;
            return this;
        }

        public final Builder device_environment_info(DeviceEnvironmentInfo deviceEnvironmentInfo) {
            this.device_environment_info = deviceEnvironmentInfo;
            return this;
        }

        public final Builder views(List<SnapKitStorySnapView> list) {
            Internal.checkElementsNotNull(list);
            this.views = list;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final SnapKitStorySnapViews build() {
            return new SnapKitStorySnapViews(this.device_environment_info, this.client_id, this.app_id, this.views, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_SnapKitStorySnapViews extends ProtoAdapter<SnapKitStorySnapViews> {
        public ProtoAdapter_SnapKitStorySnapViews() {
            super(FieldEncoding.LENGTH_DELIMITED, SnapKitStorySnapViews.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final SnapKitStorySnapViews decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.device_environment_info(DeviceEnvironmentInfo.ADAPTER.decode(protoReader));
                } else if (nextTag == 2) {
                    builder.client_id(ProtoAdapter.STRING.decode(protoReader));
                } else if (nextTag == 3) {
                    builder.app_id(ProtoAdapter.STRING.decode(protoReader));
                } else if (nextTag != 4) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.views.add(SnapKitStorySnapView.ADAPTER.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, SnapKitStorySnapViews snapKitStorySnapViews) throws IOException {
            DeviceEnvironmentInfo.ADAPTER.encodeWithTag(protoWriter, 1, snapKitStorySnapViews.device_environment_info);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            protoAdapter.encodeWithTag(protoWriter, 2, snapKitStorySnapViews.client_id);
            protoAdapter.encodeWithTag(protoWriter, 3, snapKitStorySnapViews.app_id);
            SnapKitStorySnapView.ADAPTER.asRepeated().encodeWithTag(protoWriter, 4, snapKitStorySnapViews.views);
            protoWriter.writeBytes(snapKitStorySnapViews.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(SnapKitStorySnapViews snapKitStorySnapViews) {
            int encodedSizeWithTag = DeviceEnvironmentInfo.ADAPTER.encodedSizeWithTag(1, snapKitStorySnapViews.device_environment_info);
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            return encodedSizeWithTag + protoAdapter.encodedSizeWithTag(2, snapKitStorySnapViews.client_id) + protoAdapter.encodedSizeWithTag(3, snapKitStorySnapViews.app_id) + SnapKitStorySnapView.ADAPTER.asRepeated().encodedSizeWithTag(4, snapKitStorySnapViews.views) + snapKitStorySnapViews.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snap.kit.sdk.model.SnapKitStorySnapViews$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final SnapKitStorySnapViews redact(SnapKitStorySnapViews snapKitStorySnapViews) {
            ?? newBuilder2 = snapKitStorySnapViews.newBuilder2();
            DeviceEnvironmentInfo deviceEnvironmentInfo = newBuilder2.device_environment_info;
            if (deviceEnvironmentInfo != null) {
                newBuilder2.device_environment_info = DeviceEnvironmentInfo.ADAPTER.redact(deviceEnvironmentInfo);
            }
            Internal.redactElements(newBuilder2.views, SnapKitStorySnapView.ADAPTER);
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public SnapKitStorySnapViews(DeviceEnvironmentInfo deviceEnvironmentInfo, String str, String str2, List<SnapKitStorySnapView> list) {
        this(deviceEnvironmentInfo, str, str2, list, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SnapKitStorySnapViews) {
            SnapKitStorySnapViews snapKitStorySnapViews = (SnapKitStorySnapViews) obj;
            return unknownFields().equals(snapKitStorySnapViews.unknownFields()) && Internal.equals(this.device_environment_info, snapKitStorySnapViews.device_environment_info) && Internal.equals(this.client_id, snapKitStorySnapViews.client_id) && Internal.equals(this.app_id, snapKitStorySnapViews.app_id) && this.views.equals(snapKitStorySnapViews.views);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            DeviceEnvironmentInfo deviceEnvironmentInfo = this.device_environment_info;
            int hashCode2 = (hashCode + (deviceEnvironmentInfo != null ? deviceEnvironmentInfo.hashCode() : 0)) * 37;
            String str = this.client_id;
            int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 37;
            String str2 = this.app_id;
            int hashCode4 = ((hashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37) + this.views.hashCode();
            this.hashCode = hashCode4;
            return hashCode4;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.device_environment_info != null) {
            sb2.append(", device_environment_info=");
            sb2.append(this.device_environment_info);
        }
        if (this.client_id != null) {
            sb2.append(", client_id=");
            sb2.append(this.client_id);
        }
        if (this.app_id != null) {
            sb2.append(", app_id=");
            sb2.append(this.app_id);
        }
        if (!this.views.isEmpty()) {
            sb2.append(", views=");
            sb2.append(this.views);
        }
        StringBuilder replace = sb2.replace(0, 2, "SnapKitStorySnapViews{");
        replace.append('}');
        return replace.toString();
    }

    public SnapKitStorySnapViews(DeviceEnvironmentInfo deviceEnvironmentInfo, String str, String str2, List<SnapKitStorySnapView> list, ByteString byteString) {
        super(ADAPTER, byteString);
        this.device_environment_info = deviceEnvironmentInfo;
        this.client_id = str;
        this.app_id = str2;
        this.views = Internal.immutableCopyOf(AdUnitActivity.EXTRA_VIEWS, list);
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<SnapKitStorySnapViews, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.device_environment_info = this.device_environment_info;
        builder.client_id = this.client_id;
        builder.app_id = this.app_id;
        builder.views = Internal.copyOf(AdUnitActivity.EXTRA_VIEWS, this.views);
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
