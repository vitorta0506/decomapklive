package com.snap.kit.common.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.WireEnum;
import java.io.IOException;
import okio.ByteString;
/* loaded from: classes4.dex */
public final class OsType extends Message<OsType, a> {
    public static final ProtoAdapter<OsType> ADAPTER = new b();
    private static final long serialVersionUID = 0;

    /* loaded from: classes4.dex */
    public enum Enum implements WireEnum {
        NONE(0, "None"),
        IOS(1, "iOS"),
        ANDROID(2, "Android");
        
        public static final ProtoAdapter<Enum> ADAPTER = new a();
        public final String name;
        private final int value;

        /* loaded from: classes4.dex */
        private static final class a extends EnumAdapter<Enum> {
            a() {
                super(Enum.class);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            /* renamed from: a */
            public final Enum fromValue(int i9) {
                return Enum.fromValue(i9);
            }
        }

        Enum(int i9, String str) {
            this.value = i9;
            this.name = str;
        }

        public static Enum fromValue(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return ANDROID;
                }
                return IOS;
            }
            return NONE;
        }

        @Override // com.squareup.wire.WireEnum
        public final int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes4.dex */
    public static final class a extends Message.Builder<OsType, a> {
        @Override // com.squareup.wire.Message.Builder
        /* renamed from: a */
        public final OsType build() {
            return new OsType(super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class b extends ProtoAdapter<OsType> {
        public b() {
            super(FieldEncoding.LENGTH_DELIMITED, OsType.class);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: a */
        public final OsType decode(ProtoReader protoReader) throws IOException {
            a aVar = new a();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag != -1) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    aVar.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    protoReader.endMessage(beginMessage);
                    return aVar.build();
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: b */
        public final void encode(ProtoWriter protoWriter, OsType osType) throws IOException {
            protoWriter.writeBytes(osType.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: c */
        public final int encodedSize(OsType osType) {
            return osType.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [com.snap.kit.common.model.OsType$a, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: d */
        public final OsType redact(OsType osType) {
            ?? newBuilder2 = osType.newBuilder2();
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public OsType() {
        this(ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        return obj instanceof OsType;
    }

    public final int hashCode() {
        return unknownFields().hashCode();
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder replace = new StringBuilder().replace(0, 2, "OsType{");
        replace.append('}');
        return replace.toString();
    }

    public OsType(ByteString byteString) {
        super(ADAPTER, byteString);
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<OsType, a> newBuilder2() {
        a aVar = new a();
        aVar.addUnknownFields(unknownFields());
        return aVar;
    }
}
