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
public final class BitmojiKitSearchTerm extends Message<BitmojiKitSearchTerm, Builder> {
    public static final ProtoAdapter<BitmojiKitSearchTerm> ADAPTER = new ProtoAdapter_BitmojiKitSearchTerm();
    public static final BitmojiKitSearchCategory DEFAULT_CATEGORY = BitmojiKitSearchCategory.UNKNOWN_BITMOJI_KIT_SEARCH_CATEGORY;
    public static final String DEFAULT_VALUE = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitSearchCategory#ADAPTER", tag = 1)
    public final BitmojiKitSearchCategory category;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String value;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<BitmojiKitSearchTerm, Builder> {
        public BitmojiKitSearchCategory category;
        public String value;

        public final Builder category(BitmojiKitSearchCategory bitmojiKitSearchCategory) {
            this.category = bitmojiKitSearchCategory;
            return this;
        }

        public final Builder value(String str) {
            this.value = str;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final BitmojiKitSearchTerm build() {
            return new BitmojiKitSearchTerm(this.category, this.value, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_BitmojiKitSearchTerm extends ProtoAdapter<BitmojiKitSearchTerm> {
        public ProtoAdapter_BitmojiKitSearchTerm() {
            super(FieldEncoding.LENGTH_DELIMITED, BitmojiKitSearchTerm.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitSearchTerm decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    try {
                        builder.category(BitmojiKitSearchCategory.ADAPTER.decode(protoReader));
                    } catch (ProtoAdapter.EnumConstantNotFoundException e10) {
                        builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e10.value));
                    }
                } else if (nextTag != 2) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.value(ProtoAdapter.STRING.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, BitmojiKitSearchTerm bitmojiKitSearchTerm) throws IOException {
            BitmojiKitSearchCategory.ADAPTER.encodeWithTag(protoWriter, 1, bitmojiKitSearchTerm.category);
            ProtoAdapter.STRING.encodeWithTag(protoWriter, 2, bitmojiKitSearchTerm.value);
            protoWriter.writeBytes(bitmojiKitSearchTerm.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(BitmojiKitSearchTerm bitmojiKitSearchTerm) {
            return BitmojiKitSearchCategory.ADAPTER.encodedSizeWithTag(1, bitmojiKitSearchTerm.category) + ProtoAdapter.STRING.encodedSizeWithTag(2, bitmojiKitSearchTerm.value) + bitmojiKitSearchTerm.unknownFields().size();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitSearchTerm redact(BitmojiKitSearchTerm bitmojiKitSearchTerm) {
            Message.Builder<BitmojiKitSearchTerm, Builder> newBuilder2 = bitmojiKitSearchTerm.newBuilder2();
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public BitmojiKitSearchTerm(BitmojiKitSearchCategory bitmojiKitSearchCategory, String str) {
        this(bitmojiKitSearchCategory, str, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BitmojiKitSearchTerm) {
            BitmojiKitSearchTerm bitmojiKitSearchTerm = (BitmojiKitSearchTerm) obj;
            return unknownFields().equals(bitmojiKitSearchTerm.unknownFields()) && Internal.equals(this.category, bitmojiKitSearchTerm.category) && Internal.equals(this.value, bitmojiKitSearchTerm.value);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            BitmojiKitSearchCategory bitmojiKitSearchCategory = this.category;
            int hashCode2 = (hashCode + (bitmojiKitSearchCategory != null ? bitmojiKitSearchCategory.hashCode() : 0)) * 37;
            String str = this.value;
            int hashCode3 = hashCode2 + (str != null ? str.hashCode() : 0);
            this.hashCode = hashCode3;
            return hashCode3;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.category != null) {
            sb2.append(", category=");
            sb2.append(this.category);
        }
        if (this.value != null) {
            sb2.append(", value=");
            sb2.append(this.value);
        }
        StringBuilder replace = sb2.replace(0, 2, "BitmojiKitSearchTerm{");
        replace.append('}');
        return replace.toString();
    }

    public BitmojiKitSearchTerm(BitmojiKitSearchCategory bitmojiKitSearchCategory, String str, ByteString byteString) {
        super(ADAPTER, byteString);
        this.category = bitmojiKitSearchCategory;
        this.value = str;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<BitmojiKitSearchTerm, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.category = this.category;
        builder.value = this.value;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
