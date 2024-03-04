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
public final class KitType extends Message<KitType, a> {
    public static final ProtoAdapter<KitType> ADAPTER = new b();
    private static final long serialVersionUID = 0;

    /* loaded from: classes4.dex */
    public enum Enum implements WireEnum {
        NONE(0),
        LOGIN_KIT(1),
        BITMOJI_KIT(2),
        CREATIVE_KIT(3),
        STORY_KIT(4);
        
        public static final ProtoAdapter<Enum> ADAPTER = new a();
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

        Enum(int i9) {
            this.value = i9;
        }

        public static Enum fromValue(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                return null;
                            }
                            return STORY_KIT;
                        }
                        return CREATIVE_KIT;
                    }
                    return BITMOJI_KIT;
                }
                return LOGIN_KIT;
            }
            return NONE;
        }

        @Override // com.squareup.wire.WireEnum
        public final int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes4.dex */
    public static final class a extends Message.Builder<KitType, a> {
        @Override // com.squareup.wire.Message.Builder
        /* renamed from: a */
        public final KitType build() {
            return new KitType(super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class b extends ProtoAdapter<KitType> {
        public b() {
            super(FieldEncoding.LENGTH_DELIMITED, KitType.class);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: a */
        public final KitType decode(ProtoReader protoReader) throws IOException {
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
        public final void encode(ProtoWriter protoWriter, KitType kitType) throws IOException {
            protoWriter.writeBytes(kitType.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: c */
        public final int encodedSize(KitType kitType) {
            return kitType.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [com.squareup.wire.Message$Builder, com.snap.kit.common.model.KitType$a] */
        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: d */
        public final KitType redact(KitType kitType) {
            ?? newBuilder2 = kitType.newBuilder2();
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public KitType() {
        this(ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        return obj instanceof KitType;
    }

    public final int hashCode() {
        return unknownFields().hashCode();
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder replace = new StringBuilder().replace(0, 2, "KitType{");
        replace.append('}');
        return replace.toString();
    }

    public KitType(ByteString byteString) {
        super(ADAPTER, byteString);
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<KitType, a> newBuilder2() {
        a aVar = new a();
        aVar.addUnknownFields(unknownFields());
        return aVar;
    }
}
