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
public final class BitmojiKitSearch extends Message<BitmojiKitSearch, Builder> {
    public static final ProtoAdapter<BitmojiKitSearch> ADAPTER = new ProtoAdapter_BitmojiKitSearch();
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitEventBase#ADAPTER", tag = 1)
    public final BitmojiKitEventBase bitmoji_kit_event_base;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitSearchTerm#ADAPTER", label = WireField.Label.REPEATED, tag = 2)
    public final List<BitmojiKitSearchTerm> search_terms;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<BitmojiKitSearch, Builder> {
        public BitmojiKitEventBase bitmoji_kit_event_base;
        public List<BitmojiKitSearchTerm> search_terms = Internal.newMutableList();

        public final Builder bitmoji_kit_event_base(BitmojiKitEventBase bitmojiKitEventBase) {
            this.bitmoji_kit_event_base = bitmojiKitEventBase;
            return this;
        }

        public final Builder search_terms(List<BitmojiKitSearchTerm> list) {
            Internal.checkElementsNotNull(list);
            this.search_terms = list;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final BitmojiKitSearch build() {
            return new BitmojiKitSearch(this.bitmoji_kit_event_base, this.search_terms, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_BitmojiKitSearch extends ProtoAdapter<BitmojiKitSearch> {
        public ProtoAdapter_BitmojiKitSearch() {
            super(FieldEncoding.LENGTH_DELIMITED, BitmojiKitSearch.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitSearch decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.bitmoji_kit_event_base(BitmojiKitEventBase.ADAPTER.decode(protoReader));
                } else if (nextTag != 2) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.search_terms.add(BitmojiKitSearchTerm.ADAPTER.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, BitmojiKitSearch bitmojiKitSearch) throws IOException {
            BitmojiKitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, bitmojiKitSearch.bitmoji_kit_event_base);
            BitmojiKitSearchTerm.ADAPTER.asRepeated().encodeWithTag(protoWriter, 2, bitmojiKitSearch.search_terms);
            protoWriter.writeBytes(bitmojiKitSearch.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(BitmojiKitSearch bitmojiKitSearch) {
            return BitmojiKitEventBase.ADAPTER.encodedSizeWithTag(1, bitmojiKitSearch.bitmoji_kit_event_base) + BitmojiKitSearchTerm.ADAPTER.asRepeated().encodedSizeWithTag(2, bitmojiKitSearch.search_terms) + bitmojiKitSearch.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.squareup.wire.Message$Builder, com.snapchat.kit.sdk.core.metrics.model.BitmojiKitSearch$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final BitmojiKitSearch redact(BitmojiKitSearch bitmojiKitSearch) {
            ?? newBuilder2 = bitmojiKitSearch.newBuilder2();
            BitmojiKitEventBase bitmojiKitEventBase = newBuilder2.bitmoji_kit_event_base;
            if (bitmojiKitEventBase != null) {
                newBuilder2.bitmoji_kit_event_base = BitmojiKitEventBase.ADAPTER.redact(bitmojiKitEventBase);
            }
            Internal.redactElements(newBuilder2.search_terms, BitmojiKitSearchTerm.ADAPTER);
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public BitmojiKitSearch(BitmojiKitEventBase bitmojiKitEventBase, List<BitmojiKitSearchTerm> list) {
        this(bitmojiKitEventBase, list, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BitmojiKitSearch) {
            BitmojiKitSearch bitmojiKitSearch = (BitmojiKitSearch) obj;
            return unknownFields().equals(bitmojiKitSearch.unknownFields()) && Internal.equals(this.bitmoji_kit_event_base, bitmojiKitSearch.bitmoji_kit_event_base) && this.search_terms.equals(bitmojiKitSearch.search_terms);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            BitmojiKitEventBase bitmojiKitEventBase = this.bitmoji_kit_event_base;
            int hashCode2 = ((hashCode + (bitmojiKitEventBase != null ? bitmojiKitEventBase.hashCode() : 0)) * 37) + this.search_terms.hashCode();
            this.hashCode = hashCode2;
            return hashCode2;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.bitmoji_kit_event_base != null) {
            sb2.append(", bitmoji_kit_event_base=");
            sb2.append(this.bitmoji_kit_event_base);
        }
        if (!this.search_terms.isEmpty()) {
            sb2.append(", search_terms=");
            sb2.append(this.search_terms);
        }
        StringBuilder replace = sb2.replace(0, 2, "BitmojiKitSearch{");
        replace.append('}');
        return replace.toString();
    }

    public BitmojiKitSearch(BitmojiKitEventBase bitmojiKitEventBase, List<BitmojiKitSearchTerm> list, ByteString byteString) {
        super(ADAPTER, byteString);
        this.bitmoji_kit_event_base = bitmojiKitEventBase;
        this.search_terms = Internal.immutableCopyOf("search_terms", list);
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<BitmojiKitSearch, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.bitmoji_kit_event_base = this.bitmoji_kit_event_base;
        builder.search_terms = Internal.copyOf("search_terms", this.search_terms);
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
