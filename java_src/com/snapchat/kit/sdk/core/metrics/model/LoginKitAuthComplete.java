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
public final class LoginKitAuthComplete extends Message<LoginKitAuthComplete, Builder> {
    public static final ProtoAdapter<LoginKitAuthComplete> ADAPTER = new ProtoAdapter_LoginKitAuthComplete();
    public static final Boolean DEFAULT_IS_SUCCESS = Boolean.FALSE;
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 2)
    public final Boolean is_success;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.LoginKitEventBase#ADAPTER", tag = 1)
    public final LoginKitEventBase log_kit_event_base;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<LoginKitAuthComplete, Builder> {
        public Boolean is_success;
        public LoginKitEventBase log_kit_event_base;

        public final Builder is_success(Boolean bool) {
            this.is_success = bool;
            return this;
        }

        public final Builder log_kit_event_base(LoginKitEventBase loginKitEventBase) {
            this.log_kit_event_base = loginKitEventBase;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final LoginKitAuthComplete build() {
            return new LoginKitAuthComplete(this.log_kit_event_base, this.is_success, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_LoginKitAuthComplete extends ProtoAdapter<LoginKitAuthComplete> {
        public ProtoAdapter_LoginKitAuthComplete() {
            super(FieldEncoding.LENGTH_DELIMITED, LoginKitAuthComplete.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final LoginKitAuthComplete decode(ProtoReader protoReader) throws IOException {
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
                    builder.is_success(ProtoAdapter.BOOL.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, LoginKitAuthComplete loginKitAuthComplete) throws IOException {
            LoginKitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, loginKitAuthComplete.log_kit_event_base);
            ProtoAdapter.BOOL.encodeWithTag(protoWriter, 2, loginKitAuthComplete.is_success);
            protoWriter.writeBytes(loginKitAuthComplete.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(LoginKitAuthComplete loginKitAuthComplete) {
            return LoginKitEventBase.ADAPTER.encodedSizeWithTag(1, loginKitAuthComplete.log_kit_event_base) + ProtoAdapter.BOOL.encodedSizeWithTag(2, loginKitAuthComplete.is_success) + loginKitAuthComplete.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snapchat.kit.sdk.core.metrics.model.LoginKitAuthComplete$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final LoginKitAuthComplete redact(LoginKitAuthComplete loginKitAuthComplete) {
            ?? newBuilder2 = loginKitAuthComplete.newBuilder2();
            LoginKitEventBase loginKitEventBase = newBuilder2.log_kit_event_base;
            if (loginKitEventBase != null) {
                newBuilder2.log_kit_event_base = LoginKitEventBase.ADAPTER.redact(loginKitEventBase);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public LoginKitAuthComplete(LoginKitEventBase loginKitEventBase, Boolean bool) {
        this(loginKitEventBase, bool, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof LoginKitAuthComplete) {
            LoginKitAuthComplete loginKitAuthComplete = (LoginKitAuthComplete) obj;
            return unknownFields().equals(loginKitAuthComplete.unknownFields()) && Internal.equals(this.log_kit_event_base, loginKitAuthComplete.log_kit_event_base) && Internal.equals(this.is_success, loginKitAuthComplete.is_success);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            LoginKitEventBase loginKitEventBase = this.log_kit_event_base;
            int hashCode2 = (hashCode + (loginKitEventBase != null ? loginKitEventBase.hashCode() : 0)) * 37;
            Boolean bool = this.is_success;
            int hashCode3 = hashCode2 + (bool != null ? bool.hashCode() : 0);
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
        if (this.is_success != null) {
            sb2.append(", is_success=");
            sb2.append(this.is_success);
        }
        StringBuilder replace = sb2.replace(0, 2, "LoginKitAuthComplete{");
        replace.append('}');
        return replace.toString();
    }

    public LoginKitAuthComplete(LoginKitEventBase loginKitEventBase, Boolean bool, ByteString byteString) {
        super(ADAPTER, byteString);
        this.log_kit_event_base = loginKitEventBase;
        this.is_success = bool;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<LoginKitAuthComplete, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.log_kit_event_base = this.log_kit_event_base;
        builder.is_success = this.is_success;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
