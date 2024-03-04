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
public final class StoryKitSnapPlaybackPlayerSession extends Message<StoryKitSnapPlaybackPlayerSession, Builder> {
    public static final String DEFAULT_PLAYER_SESSION_ID = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String player_session_id;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.StoryKitPlayerType#ADAPTER", tag = 5)
    public final StoryKitPlayerType player_type;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", tag = 4)
    public final Long session_duration_ms;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", tag = 3)
    public final Long snap_count;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.StoryKitEventBase#ADAPTER", tag = 1)
    public final StoryKitEventBase story_kit_event_base;
    public static final ProtoAdapter<StoryKitSnapPlaybackPlayerSession> ADAPTER = new ProtoAdapter_StoryKitSnapPlaybackPlayerSession();
    public static final Long DEFAULT_SNAP_COUNT = 0L;
    public static final Long DEFAULT_SESSION_DURATION_MS = 0L;
    public static final StoryKitPlayerType DEFAULT_PLAYER_TYPE = StoryKitPlayerType.STORY_KIT_PLAYER_TYPE_NONE;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<StoryKitSnapPlaybackPlayerSession, Builder> {
        public String player_session_id;
        public StoryKitPlayerType player_type;
        public Long session_duration_ms;
        public Long snap_count;
        public StoryKitEventBase story_kit_event_base;

        public final Builder player_session_id(String str) {
            this.player_session_id = str;
            return this;
        }

        public final Builder player_type(StoryKitPlayerType storyKitPlayerType) {
            this.player_type = storyKitPlayerType;
            return this;
        }

        public final Builder session_duration_ms(Long l10) {
            this.session_duration_ms = l10;
            return this;
        }

        public final Builder snap_count(Long l10) {
            this.snap_count = l10;
            return this;
        }

        public final Builder story_kit_event_base(StoryKitEventBase storyKitEventBase) {
            this.story_kit_event_base = storyKitEventBase;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final StoryKitSnapPlaybackPlayerSession build() {
            return new StoryKitSnapPlaybackPlayerSession(this.story_kit_event_base, this.player_session_id, this.snap_count, this.session_duration_ms, this.player_type, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_StoryKitSnapPlaybackPlayerSession extends ProtoAdapter<StoryKitSnapPlaybackPlayerSession> {
        public ProtoAdapter_StoryKitSnapPlaybackPlayerSession() {
            super(FieldEncoding.LENGTH_DELIMITED, StoryKitSnapPlaybackPlayerSession.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final StoryKitSnapPlaybackPlayerSession decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.story_kit_event_base(StoryKitEventBase.ADAPTER.decode(protoReader));
                } else if (nextTag == 2) {
                    builder.player_session_id(ProtoAdapter.STRING.decode(protoReader));
                } else if (nextTag == 3) {
                    builder.snap_count(ProtoAdapter.UINT64.decode(protoReader));
                } else if (nextTag == 4) {
                    builder.session_duration_ms(ProtoAdapter.UINT64.decode(protoReader));
                } else if (nextTag != 5) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    try {
                        builder.player_type(StoryKitPlayerType.ADAPTER.decode(protoReader));
                    } catch (ProtoAdapter.EnumConstantNotFoundException e10) {
                        builder.addUnknownField(nextTag, FieldEncoding.VARINT, Long.valueOf(e10.value));
                    }
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, StoryKitSnapPlaybackPlayerSession storyKitSnapPlaybackPlayerSession) throws IOException {
            StoryKitEventBase.ADAPTER.encodeWithTag(protoWriter, 1, storyKitSnapPlaybackPlayerSession.story_kit_event_base);
            ProtoAdapter.STRING.encodeWithTag(protoWriter, 2, storyKitSnapPlaybackPlayerSession.player_session_id);
            ProtoAdapter<Long> protoAdapter = ProtoAdapter.UINT64;
            protoAdapter.encodeWithTag(protoWriter, 3, storyKitSnapPlaybackPlayerSession.snap_count);
            protoAdapter.encodeWithTag(protoWriter, 4, storyKitSnapPlaybackPlayerSession.session_duration_ms);
            StoryKitPlayerType.ADAPTER.encodeWithTag(protoWriter, 5, storyKitSnapPlaybackPlayerSession.player_type);
            protoWriter.writeBytes(storyKitSnapPlaybackPlayerSession.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(StoryKitSnapPlaybackPlayerSession storyKitSnapPlaybackPlayerSession) {
            int encodedSizeWithTag = StoryKitEventBase.ADAPTER.encodedSizeWithTag(1, storyKitSnapPlaybackPlayerSession.story_kit_event_base) + ProtoAdapter.STRING.encodedSizeWithTag(2, storyKitSnapPlaybackPlayerSession.player_session_id);
            ProtoAdapter<Long> protoAdapter = ProtoAdapter.UINT64;
            return encodedSizeWithTag + protoAdapter.encodedSizeWithTag(3, storyKitSnapPlaybackPlayerSession.snap_count) + protoAdapter.encodedSizeWithTag(4, storyKitSnapPlaybackPlayerSession.session_duration_ms) + StoryKitPlayerType.ADAPTER.encodedSizeWithTag(5, storyKitSnapPlaybackPlayerSession.player_type) + storyKitSnapPlaybackPlayerSession.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.squareup.wire.Message$Builder, com.snapchat.kit.sdk.core.metrics.model.StoryKitSnapPlaybackPlayerSession$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final StoryKitSnapPlaybackPlayerSession redact(StoryKitSnapPlaybackPlayerSession storyKitSnapPlaybackPlayerSession) {
            ?? newBuilder2 = storyKitSnapPlaybackPlayerSession.newBuilder2();
            StoryKitEventBase storyKitEventBase = newBuilder2.story_kit_event_base;
            if (storyKitEventBase != null) {
                newBuilder2.story_kit_event_base = StoryKitEventBase.ADAPTER.redact(storyKitEventBase);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public StoryKitSnapPlaybackPlayerSession(StoryKitEventBase storyKitEventBase, String str, Long l10, Long l11, StoryKitPlayerType storyKitPlayerType) {
        this(storyKitEventBase, str, l10, l11, storyKitPlayerType, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof StoryKitSnapPlaybackPlayerSession) {
            StoryKitSnapPlaybackPlayerSession storyKitSnapPlaybackPlayerSession = (StoryKitSnapPlaybackPlayerSession) obj;
            return unknownFields().equals(storyKitSnapPlaybackPlayerSession.unknownFields()) && Internal.equals(this.story_kit_event_base, storyKitSnapPlaybackPlayerSession.story_kit_event_base) && Internal.equals(this.player_session_id, storyKitSnapPlaybackPlayerSession.player_session_id) && Internal.equals(this.snap_count, storyKitSnapPlaybackPlayerSession.snap_count) && Internal.equals(this.session_duration_ms, storyKitSnapPlaybackPlayerSession.session_duration_ms) && Internal.equals(this.player_type, storyKitSnapPlaybackPlayerSession.player_type);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            StoryKitEventBase storyKitEventBase = this.story_kit_event_base;
            int hashCode2 = (hashCode + (storyKitEventBase != null ? storyKitEventBase.hashCode() : 0)) * 37;
            String str = this.player_session_id;
            int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 37;
            Long l10 = this.snap_count;
            int hashCode4 = (hashCode3 + (l10 != null ? l10.hashCode() : 0)) * 37;
            Long l11 = this.session_duration_ms;
            int hashCode5 = (hashCode4 + (l11 != null ? l11.hashCode() : 0)) * 37;
            StoryKitPlayerType storyKitPlayerType = this.player_type;
            int hashCode6 = hashCode5 + (storyKitPlayerType != null ? storyKitPlayerType.hashCode() : 0);
            this.hashCode = hashCode6;
            return hashCode6;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.story_kit_event_base != null) {
            sb2.append(", story_kit_event_base=");
            sb2.append(this.story_kit_event_base);
        }
        if (this.player_session_id != null) {
            sb2.append(", player_session_id=");
            sb2.append(this.player_session_id);
        }
        if (this.snap_count != null) {
            sb2.append(", snap_count=");
            sb2.append(this.snap_count);
        }
        if (this.session_duration_ms != null) {
            sb2.append(", session_duration_ms=");
            sb2.append(this.session_duration_ms);
        }
        if (this.player_type != null) {
            sb2.append(", player_type=");
            sb2.append(this.player_type);
        }
        StringBuilder replace = sb2.replace(0, 2, "StoryKitSnapPlaybackPlayerSession{");
        replace.append('}');
        return replace.toString();
    }

    public StoryKitSnapPlaybackPlayerSession(StoryKitEventBase storyKitEventBase, String str, Long l10, Long l11, StoryKitPlayerType storyKitPlayerType, ByteString byteString) {
        super(ADAPTER, byteString);
        this.story_kit_event_base = storyKitEventBase;
        this.player_session_id = str;
        this.snap_count = l10;
        this.session_duration_ms = l11;
        this.player_type = storyKitPlayerType;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<StoryKitSnapPlaybackPlayerSession, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.story_kit_event_base = this.story_kit_event_base;
        builder.player_session_id = this.player_session_id;
        builder.snap_count = this.snap_count;
        builder.session_duration_ms = this.session_duration_ms;
        builder.player_type = this.player_type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
