package com.vk.sdk.api.status.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.audio.dto.AudioAudio;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/status/dto/StatusStatus;", "", ViewHierarchyConstants.TEXT_KEY, "", "audio", "Lcom/vk/sdk/api/audio/dto/AudioAudio;", "(Ljava/lang/String;Lcom/vk/sdk/api/audio/dto/AudioAudio;)V", "getAudio", "()Lcom/vk/sdk/api/audio/dto/AudioAudio;", "getText", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StatusStatus {
    @SerializedName("audio")
    @Nullable
    private final AudioAudio audio;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @NotNull
    private final String text;

    public StatusStatus(@NotNull String text, @Nullable AudioAudio audioAudio) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.text = text;
        this.audio = audioAudio;
    }

    public static /* synthetic */ StatusStatus copy$default(StatusStatus statusStatus, String str, AudioAudio audioAudio, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = statusStatus.text;
        }
        if ((i9 & 2) != 0) {
            audioAudio = statusStatus.audio;
        }
        return statusStatus.copy(str, audioAudio);
    }

    @NotNull
    public final String component1() {
        return this.text;
    }

    @Nullable
    public final AudioAudio component2() {
        return this.audio;
    }

    @NotNull
    public final StatusStatus copy(@NotNull String text, @Nullable AudioAudio audioAudio) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new StatusStatus(text, audioAudio);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StatusStatus) {
            StatusStatus statusStatus = (StatusStatus) obj;
            return Intrinsics.areEqual(this.text, statusStatus.text) && Intrinsics.areEqual(this.audio, statusStatus.audio);
        }
        return false;
    }

    @Nullable
    public final AudioAudio getAudio() {
        return this.audio;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        int hashCode = this.text.hashCode() * 31;
        AudioAudio audioAudio = this.audio;
        return hashCode + (audioAudio == null ? 0 : audioAudio.hashCode());
    }

    @NotNull
    public String toString() {
        String str = this.text;
        AudioAudio audioAudio = this.audio;
        return "StatusStatus(text=" + str + ", audio=" + audioAudio + ")";
    }

    public /* synthetic */ StatusStatus(String str, AudioAudio audioAudio, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i9 & 2) != 0 ? null : audioAudio);
    }
}
