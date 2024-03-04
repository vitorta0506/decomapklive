package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0006HÆ\u0003J\t\u0010 \u001a\u00020\u0006HÆ\u0003J\t\u0010!\u001a\u00020\tHÆ\u0003J\u000f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00030\u000bHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019Jh\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010&J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\t\u0010+\u001a\u00020\u0006HÖ\u0001R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u0006,"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesAudioMessage;", "", "duration", "", "id", "linkMp3", "", "linkOgg", "ownerId", "Lcom/vk/dto/common/id/UserId;", "waveform", "", "accessKey", "transcriptError", "(IILjava/lang/String;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V", "getAccessKey", "()Ljava/lang/String;", "getDuration", "()I", "getId", "getLinkMp3", "getLinkOgg", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getTranscriptError", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getWaveform", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(IILjava/lang/String;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/sdk/api/messages/dto/MessagesAudioMessage;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesAudioMessage {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("duration")
    private final int duration;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35905id;
    @SerializedName("link_mp3")
    @NotNull
    private final String linkMp3;
    @SerializedName("link_ogg")
    @NotNull
    private final String linkOgg;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("transcript_error")
    @Nullable
    private final Integer transcriptError;
    @SerializedName("waveform")
    @NotNull
    private final List<Integer> waveform;

    public MessagesAudioMessage(int i9, int i10, @NotNull String linkMp3, @NotNull String linkOgg, @NotNull UserId ownerId, @NotNull List<Integer> waveform, @Nullable String str, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(linkMp3, "linkMp3");
        Intrinsics.checkNotNullParameter(linkOgg, "linkOgg");
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(waveform, "waveform");
        this.duration = i9;
        this.f35905id = i10;
        this.linkMp3 = linkMp3;
        this.linkOgg = linkOgg;
        this.ownerId = ownerId;
        this.waveform = waveform;
        this.accessKey = str;
        this.transcriptError = num;
    }

    public final int component1() {
        return this.duration;
    }

    public final int component2() {
        return this.f35905id;
    }

    @NotNull
    public final String component3() {
        return this.linkMp3;
    }

    @NotNull
    public final String component4() {
        return this.linkOgg;
    }

    @NotNull
    public final UserId component5() {
        return this.ownerId;
    }

    @NotNull
    public final List<Integer> component6() {
        return this.waveform;
    }

    @Nullable
    public final String component7() {
        return this.accessKey;
    }

    @Nullable
    public final Integer component8() {
        return this.transcriptError;
    }

    @NotNull
    public final MessagesAudioMessage copy(int i9, int i10, @NotNull String linkMp3, @NotNull String linkOgg, @NotNull UserId ownerId, @NotNull List<Integer> waveform, @Nullable String str, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(linkMp3, "linkMp3");
        Intrinsics.checkNotNullParameter(linkOgg, "linkOgg");
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(waveform, "waveform");
        return new MessagesAudioMessage(i9, i10, linkMp3, linkOgg, ownerId, waveform, str, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesAudioMessage) {
            MessagesAudioMessage messagesAudioMessage = (MessagesAudioMessage) obj;
            return this.duration == messagesAudioMessage.duration && this.f35905id == messagesAudioMessage.f35905id && Intrinsics.areEqual(this.linkMp3, messagesAudioMessage.linkMp3) && Intrinsics.areEqual(this.linkOgg, messagesAudioMessage.linkOgg) && Intrinsics.areEqual(this.ownerId, messagesAudioMessage.ownerId) && Intrinsics.areEqual(this.waveform, messagesAudioMessage.waveform) && Intrinsics.areEqual(this.accessKey, messagesAudioMessage.accessKey) && Intrinsics.areEqual(this.transcriptError, messagesAudioMessage.transcriptError);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    public final int getDuration() {
        return this.duration;
    }

    public final int getId() {
        return this.f35905id;
    }

    @NotNull
    public final String getLinkMp3() {
        return this.linkMp3;
    }

    @NotNull
    public final String getLinkOgg() {
        return this.linkOgg;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final Integer getTranscriptError() {
        return this.transcriptError;
    }

    @NotNull
    public final List<Integer> getWaveform() {
        return this.waveform;
    }

    public int hashCode() {
        int hashCode = ((((((((((this.duration * 31) + this.f35905id) * 31) + this.linkMp3.hashCode()) * 31) + this.linkOgg.hashCode()) * 31) + this.ownerId.hashCode()) * 31) + this.waveform.hashCode()) * 31;
        String str = this.accessKey;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.transcriptError;
        return hashCode2 + (num != null ? num.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.duration;
        int i10 = this.f35905id;
        String str = this.linkMp3;
        String str2 = this.linkOgg;
        UserId userId = this.ownerId;
        List<Integer> list = this.waveform;
        String str3 = this.accessKey;
        Integer num = this.transcriptError;
        return "MessagesAudioMessage(duration=" + i9 + ", id=" + i10 + ", linkMp3=" + str + ", linkOgg=" + str2 + ", ownerId=" + userId + ", waveform=" + list + ", accessKey=" + str3 + ", transcriptError=" + num + ")";
    }

    public /* synthetic */ MessagesAudioMessage(int i9, int i10, String str, String str2, UserId userId, List list, String str3, Integer num, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, str, str2, userId, list, (i11 & 64) != 0 ? null : str3, (i11 & 128) != 0 ? null : num);
    }
}
