package com.vk.sdk.api.docs.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\bHÆ\u0003J7\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/docs/dto/DocsDocPreviewAudioMsg;", "", "duration", "", "linkMp3", "", "linkOgg", "waveform", "", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getDuration", "()I", "getLinkMp3", "()Ljava/lang/String;", "getLinkOgg", "getWaveform", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DocsDocPreviewAudioMsg {
    @SerializedName("duration")
    private final int duration;
    @SerializedName("link_mp3")
    @NotNull
    private final String linkMp3;
    @SerializedName("link_ogg")
    @NotNull
    private final String linkOgg;
    @SerializedName("waveform")
    @NotNull
    private final List<Integer> waveform;

    public DocsDocPreviewAudioMsg(int i9, @NotNull String linkMp3, @NotNull String linkOgg, @NotNull List<Integer> waveform) {
        Intrinsics.checkNotNullParameter(linkMp3, "linkMp3");
        Intrinsics.checkNotNullParameter(linkOgg, "linkOgg");
        Intrinsics.checkNotNullParameter(waveform, "waveform");
        this.duration = i9;
        this.linkMp3 = linkMp3;
        this.linkOgg = linkOgg;
        this.waveform = waveform;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DocsDocPreviewAudioMsg copy$default(DocsDocPreviewAudioMsg docsDocPreviewAudioMsg, int i9, String str, String str2, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = docsDocPreviewAudioMsg.duration;
        }
        if ((i10 & 2) != 0) {
            str = docsDocPreviewAudioMsg.linkMp3;
        }
        if ((i10 & 4) != 0) {
            str2 = docsDocPreviewAudioMsg.linkOgg;
        }
        if ((i10 & 8) != 0) {
            list = docsDocPreviewAudioMsg.waveform;
        }
        return docsDocPreviewAudioMsg.copy(i9, str, str2, list);
    }

    public final int component1() {
        return this.duration;
    }

    @NotNull
    public final String component2() {
        return this.linkMp3;
    }

    @NotNull
    public final String component3() {
        return this.linkOgg;
    }

    @NotNull
    public final List<Integer> component4() {
        return this.waveform;
    }

    @NotNull
    public final DocsDocPreviewAudioMsg copy(int i9, @NotNull String linkMp3, @NotNull String linkOgg, @NotNull List<Integer> waveform) {
        Intrinsics.checkNotNullParameter(linkMp3, "linkMp3");
        Intrinsics.checkNotNullParameter(linkOgg, "linkOgg");
        Intrinsics.checkNotNullParameter(waveform, "waveform");
        return new DocsDocPreviewAudioMsg(i9, linkMp3, linkOgg, waveform);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DocsDocPreviewAudioMsg) {
            DocsDocPreviewAudioMsg docsDocPreviewAudioMsg = (DocsDocPreviewAudioMsg) obj;
            return this.duration == docsDocPreviewAudioMsg.duration && Intrinsics.areEqual(this.linkMp3, docsDocPreviewAudioMsg.linkMp3) && Intrinsics.areEqual(this.linkOgg, docsDocPreviewAudioMsg.linkOgg) && Intrinsics.areEqual(this.waveform, docsDocPreviewAudioMsg.waveform);
        }
        return false;
    }

    public final int getDuration() {
        return this.duration;
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
    public final List<Integer> getWaveform() {
        return this.waveform;
    }

    public int hashCode() {
        return (((((this.duration * 31) + this.linkMp3.hashCode()) * 31) + this.linkOgg.hashCode()) * 31) + this.waveform.hashCode();
    }

    @NotNull
    public String toString() {
        int i9 = this.duration;
        String str = this.linkMp3;
        String str2 = this.linkOgg;
        List<Integer> list = this.waveform;
        return "DocsDocPreviewAudioMsg(duration=" + i9 + ", linkMp3=" + str + ", linkOgg=" + str2 + ", waveform=" + list + ")";
    }
}
