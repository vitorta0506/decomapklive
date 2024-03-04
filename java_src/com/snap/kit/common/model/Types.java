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
public final class Types extends Message<Types, a> {
    public static final ProtoAdapter<Types> ADAPTER = new b();
    private static final long serialVersionUID = 0;

    /* loaded from: classes4.dex */
    public enum Trilean implements WireEnum {
        NONE(0),
        FALSE(1),
        TRUE(2);
        
        public static final ProtoAdapter<Trilean> ADAPTER = new a();
        private final int value;

        /* loaded from: classes4.dex */
        private static final class a extends EnumAdapter<Trilean> {
            a() {
                super(Trilean.class);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            /* renamed from: a */
            public final Trilean fromValue(int i9) {
                return Trilean.fromValue(i9);
            }
        }

        Trilean(int i9) {
            this.value = i9;
        }

        public static Trilean fromValue(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return TRUE;
                }
                return FALSE;
            }
            return NONE;
        }

        @Override // com.squareup.wire.WireEnum
        public final int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes4.dex */
    public static final class a extends Message.Builder<Types, a> {
        @Override // com.squareup.wire.Message.Builder
        /* renamed from: a */
        public final Types build() {
            return new Types(super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class b extends ProtoAdapter<Types> {
        public b() {
            super(FieldEncoding.LENGTH_DELIMITED, Types.class);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: a */
        public final Types decode(ProtoReader protoReader) throws IOException {
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
        public final void encode(ProtoWriter protoWriter, Types types) throws IOException {
            protoWriter.writeBytes(types.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: c */
        public final int encodedSize(Types types) {
            return types.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [com.snap.kit.common.model.Types$a, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: d */
        public final Types redact(Types types) {
            ?? newBuilder2 = types.newBuilder2();
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public Types() {
        this(ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        return obj instanceof Types;
    }

    public final int hashCode() {
        return unknownFields().hashCode();
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder replace = new StringBuilder().replace(0, 2, "Types{");
        replace.append('}');
        return replace.toString();
    }

    public Types(ByteString byteString) {
        super(ADAPTER, byteString);
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<Types, a> newBuilder2() {
        a aVar = new a();
        aVar.addUnknownFields(unknownFields());
        return aVar;
    }
}
