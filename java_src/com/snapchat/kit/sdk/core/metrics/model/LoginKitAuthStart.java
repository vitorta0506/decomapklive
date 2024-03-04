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
public final class LoginKitAuthStart extends Message<LoginKitAuthStart, Builder> {
    public static final ProtoAdapter<LoginKitAuthStart> ADAPTER = new ProtoAdapter_LoginKitAuthStart();
    public static final String DEFAULT_FEATURES_REQUESTED_STRING_LIST = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String features_requested_string_list;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.LoginKitEventBase#ADAPTER", tag = 1)
    public final LoginKitEventBase log_kit_event_base;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<LoginKitAuthStart, Builder> {
        public String features_requested_string_list;
        public LoginKitEventBase log_kit_event_base;

        public final Builder features_requested_string_list(String str) {
            this.features_requested_string_list = str;
            return this;
        }

        public final Builder log_kit_event_base(LoginKitEventBase loginKitEventBase) {
            this.log_kit_event_base = loginKitEventBase;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final LoginKitAuthStart build() {
            return new LoginKitAuthStart(this.log_kit_event_base, this.features_requested_string_list, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_LoginKitAuthStart extends ProtoAdapter<LoginKitAuthStart> {
        public ProtoAdapter_LoginKitAuthStart() {
            super(FieldEncoding.LENGTH_DELIMITED, LoginKitAuthStart.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final LoginKitAuthStart decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.log_kit_event_base(LoginKitEventBase.ADAPTER.decode(protoReader));
                } else if (nextTag != 2) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.features_requested_string_list(ProtoAdapter.STRING.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, LoginKitAuthStart loginKitAuthStart) throws IOException {
            LoginKitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, loginKitAuthStart.log_kit_event_base);
            ProtoAdapter.STRING.encodeWithTag(protoWriter, 2, loginKitAuthStart.features_requested_string_list);
            protoWriter.writeBytes(loginKitAuthStart.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(LoginKitAuthStart loginKitAuthStart) {
            return LoginKitEventBase.ADAPTER.encodedSizeWithTag(1, loginKitAuthStart.log_kit_event_base) + ProtoAdapter.STRING.encodedSizeWithTag(2, loginKitAuthStart.features_requested_string_list) + loginKitAuthStart.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snapchat.kit.sdk.core.metrics.model.LoginKitAuthStart$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final LoginKitAuthStart redact(LoginKitAuthStart loginKitAuthStart) {
            ?? newBuilder2 = loginKitAuthStart.newBuilder2();
            LoginKitEventBase loginKitEventBase = newBuilder2.log_kit_event_base;
            if (loginKitEventBase != null) {
                newBuilder2.log_kit_event_base = LoginKitEventBase.ADAPTER.redact(loginKitEventBase);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public LoginKitAuthStart(LoginKitEventBase loginKitEventBase, String str) {
        this(loginKitEventBase, str, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof LoginKitAuthStart) {
            LoginKitAuthStart loginKitAuthStart = (LoginKitAuthStart) obj;
            return unknownFields().equals(loginKitAuthStart.unknownFields()) && Internal.equals(this.log_kit_event_base, loginKitAuthStart.log_kit_event_base) && Internal.equals(this.features_requested_string_list, loginKitAuthStart.features_requested_string_list);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            LoginKitEventBase loginKitEventBase = this.log_kit_event_base;
            int hashCode2 = (hashCode + (loginKitEventBase != null ? loginKitEventBase.hashCode() : 0)) * 37;
            String str = this.features_requested_string_list;
            int hashCode3 = hashCode2 + (str != null ? str.hashCode() : 0);
            this.hashCode = hashCode3;
            return hashCode3;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.log_kit_event_base != null) {
            sb2.append(", log_kit_event_base=");
            sb2.append(this.log_kit_event_base);
        }
        if (this.features_requested_string_list != null) {
            sb2.append(", features_requested_string_list=");
            sb2.append(this.features_requested_string_list);
        }
        StringBuilder replace = sb2.replace(0, 2, "LoginKitAuthStart{");
        replace.append('}');
        return replace.toString();
    }

    public LoginKitAuthStart(LoginKitEventBase loginKitEventBase, String str, ByteString byteString) {
        super(ADAPTER, byteString);
        this.log_kit_event_base = loginKitEventBase;
        this.features_requested_string_list = str;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<LoginKitAuthStart, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.log_kit_event_base = this.log_kit_event_base;
        builder.features_requested_string_list = this.features_requested_string_list;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
