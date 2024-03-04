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
public final class LoginKitEventBase extends Message<LoginKitEventBase, Builder> {
    public static final ProtoAdapter<LoginKitEventBase> ADAPTER = new ProtoAdapter_LoginKitEventBase();
    public static final Boolean DEFAULT_IS_FOR_FIREBASE_AUTHENTICATION = Boolean.FALSE;
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", tag = 2)
    public final Boolean is_for_firebase_authentication;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.KitEventBase#ADAPTER", tag = 1)
    public final KitEventBase kit_event_base;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<LoginKitEventBase, Builder> {
        public Boolean is_for_firebase_authentication;
        public KitEventBase kit_event_base;

        public final Builder is_for_firebase_authentication(Boolean bool) {
            this.is_for_firebase_authentication = bool;
            return this;
        }

        public final Builder kit_event_base(KitEventBase kitEventBase) {
            this.kit_event_base = kitEventBase;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final LoginKitEventBase build() {
            return new LoginKitEventBase(this.kit_event_base, this.is_for_firebase_authentication, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_LoginKitEventBase extends ProtoAdapter<LoginKitEventBase> {
        public ProtoAdapter_LoginKitEventBase() {
            super(FieldEncoding.LENGTH_DELIMITED, LoginKitEventBase.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final LoginKitEventBase decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.kit_event_base(KitEventBase.ADAPTER.decode(protoReader));
                } else if (nextTag != 2) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.is_for_firebase_authentication(ProtoAdapter.BOOL.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, LoginKitEventBase loginKitEventBase) throws IOException {
            KitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, loginKitEventBase.kit_event_base);
            ProtoAdapter.BOOL.encodeWithTag(protoWriter, 2, loginKitEventBase.is_for_firebase_authentication);
            protoWriter.writeBytes(loginKitEventBase.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(LoginKitEventBase loginKitEventBase) {
            return KitEventBase.ADAPTER.encodedSizeWithTag(1, loginKitEventBase.kit_event_base) + ProtoAdapter.BOOL.encodedSizeWithTag(2, loginKitEventBase.is_for_firebase_authentication) + loginKitEventBase.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snapchat.kit.sdk.core.metrics.model.LoginKitEventBase$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final LoginKitEventBase redact(LoginKitEventBase loginKitEventBase) {
            ?? newBuilder2 = loginKitEventBase.newBuilder2();
            KitEventBase kitEventBase = newBuilder2.kit_event_base;
            if (kitEventBase != null) {
                newBuilder2.kit_event_base = KitEventBase.ADAPTER.redact(kitEventBase);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public LoginKitEventBase(KitEventBase kitEventBase, Boolean bool) {
        this(kitEventBase, bool, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof LoginKitEventBase) {
            LoginKitEventBase loginKitEventBase = (LoginKitEventBase) obj;
            return unknownFields().equals(loginKitEventBase.unknownFields()) && Internal.equals(this.kit_event_base, loginKitEventBase.kit_event_base) && Internal.equals(this.is_for_firebase_authentication, loginKitEventBase.is_for_firebase_authentication);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            KitEventBase kitEventBase = this.kit_event_base;
            int hashCode2 = (hashCode + (kitEventBase != null ? kitEventBase.hashCode() : 0)) * 37;
            Boolean bool = this.is_for_firebase_authentication;
            int hashCode3 = hashCode2 + (bool != null ? bool.hashCode() : 0);
            this.hashCode = hashCode3;
            return hashCode3;
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
        if (this.is_for_firebase_authentication != null) {
            sb2.append(", is_for_firebase_authentication=");
            sb2.append(this.is_for_firebase_authentication);
        }
        StringBuilder replace = sb2.replace(0, 2, "LoginKitEventBase{");
        replace.append('}');
        return replace.toString();
    }

    public LoginKitEventBase(KitEventBase kitEventBase, Boolean bool, ByteString byteString) {
        super(ADAPTER, byteString);
        this.kit_event_base = kitEventBase;
        this.is_for_firebase_authentication = bool;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<LoginKitEventBase, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.kit_event_base = this.kit_event_base;
        builder.is_for_firebase_authentication = this.is_for_firebase_authentication;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
