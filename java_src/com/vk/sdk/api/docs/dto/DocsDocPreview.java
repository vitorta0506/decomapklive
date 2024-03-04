package com.vk.sdk.api.docs.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\tHÆ\u0003J9\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001f"}, d2 = {"Lcom/vk/sdk/api/docs/dto/DocsDocPreview;", "", "audioMsg", "Lcom/vk/sdk/api/docs/dto/DocsDocPreviewAudioMsg;", "graffiti", "Lcom/vk/sdk/api/docs/dto/DocsDocPreviewGraffiti;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/docs/dto/DocsDocPreviewPhoto;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "Lcom/vk/sdk/api/docs/dto/DocsDocPreviewVideo;", "(Lcom/vk/sdk/api/docs/dto/DocsDocPreviewAudioMsg;Lcom/vk/sdk/api/docs/dto/DocsDocPreviewGraffiti;Lcom/vk/sdk/api/docs/dto/DocsDocPreviewPhoto;Lcom/vk/sdk/api/docs/dto/DocsDocPreviewVideo;)V", "getAudioMsg", "()Lcom/vk/sdk/api/docs/dto/DocsDocPreviewAudioMsg;", "getGraffiti", "()Lcom/vk/sdk/api/docs/dto/DocsDocPreviewGraffiti;", "getPhoto", "()Lcom/vk/sdk/api/docs/dto/DocsDocPreviewPhoto;", "getVideo", "()Lcom/vk/sdk/api/docs/dto/DocsDocPreviewVideo;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DocsDocPreview {
    @SerializedName("audio_msg")
    @Nullable
    private final DocsDocPreviewAudioMsg audioMsg;
    @SerializedName("graffiti")
    @Nullable
    private final DocsDocPreviewGraffiti graffiti;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final DocsDocPreviewPhoto photo;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)
    @Nullable
    private final DocsDocPreviewVideo video;

    public DocsDocPreview() {
        this(null, null, null, null, 15, null);
    }

    public DocsDocPreview(@Nullable DocsDocPreviewAudioMsg docsDocPreviewAudioMsg, @Nullable DocsDocPreviewGraffiti docsDocPreviewGraffiti, @Nullable DocsDocPreviewPhoto docsDocPreviewPhoto, @Nullable DocsDocPreviewVideo docsDocPreviewVideo) {
        this.audioMsg = docsDocPreviewAudioMsg;
        this.graffiti = docsDocPreviewGraffiti;
        this.photo = docsDocPreviewPhoto;
        this.video = docsDocPreviewVideo;
    }

    public static /* synthetic */ DocsDocPreview copy$default(DocsDocPreview docsDocPreview, DocsDocPreviewAudioMsg docsDocPreviewAudioMsg, DocsDocPreviewGraffiti docsDocPreviewGraffiti, DocsDocPreviewPhoto docsDocPreviewPhoto, DocsDocPreviewVideo docsDocPreviewVideo, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            docsDocPreviewAudioMsg = docsDocPreview.audioMsg;
        }
        if ((i9 & 2) != 0) {
            docsDocPreviewGraffiti = docsDocPreview.graffiti;
        }
        if ((i9 & 4) != 0) {
            docsDocPreviewPhoto = docsDocPreview.photo;
        }
        if ((i9 & 8) != 0) {
            docsDocPreviewVideo = docsDocPreview.video;
        }
        return docsDocPreview.copy(docsDocPreviewAudioMsg, docsDocPreviewGraffiti, docsDocPreviewPhoto, docsDocPreviewVideo);
    }

    @Nullable
    public final DocsDocPreviewAudioMsg component1() {
        return this.audioMsg;
    }

    @Nullable
    public final DocsDocPreviewGraffiti component2() {
        return this.graffiti;
    }

    @Nullable
    public final DocsDocPreviewPhoto component3() {
        return this.photo;
    }

    @Nullable
    public final DocsDocPreviewVideo component4() {
        return this.video;
    }

    @NotNull
    public final DocsDocPreview copy(@Nullable DocsDocPreviewAudioMsg docsDocPreviewAudioMsg, @Nullable DocsDocPreviewGraffiti docsDocPreviewGraffiti, @Nullable DocsDocPreviewPhoto docsDocPreviewPhoto, @Nullable DocsDocPreviewVideo docsDocPreviewVideo) {
        return new DocsDocPreview(docsDocPreviewAudioMsg, docsDocPreviewGraffiti, docsDocPreviewPhoto, docsDocPreviewVideo);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DocsDocPreview) {
            DocsDocPreview docsDocPreview = (DocsDocPreview) obj;
            return Intrinsics.areEqual(this.audioMsg, docsDocPreview.audioMsg) && Intrinsics.areEqual(this.graffiti, docsDocPreview.graffiti) && Intrinsics.areEqual(this.photo, docsDocPreview.photo) && Intrinsics.areEqual(this.video, docsDocPreview.video);
        }
        return false;
    }

    @Nullable
    public final DocsDocPreviewAudioMsg getAudioMsg() {
        return this.audioMsg;
    }

    @Nullable
    public final DocsDocPreviewGraffiti getGraffiti() {
        return this.graffiti;
    }

    @Nullable
    public final DocsDocPreviewPhoto getPhoto() {
        return this.photo;
    }

    @Nullable
    public final DocsDocPreviewVideo getVideo() {
        return this.video;
    }

    public int hashCode() {
        DocsDocPreviewAudioMsg docsDocPreviewAudioMsg = this.audioMsg;
        int hashCode = (docsDocPreviewAudioMsg == null ? 0 : docsDocPreviewAudioMsg.hashCode()) * 31;
        DocsDocPreviewGraffiti docsDocPreviewGraffiti = this.graffiti;
        int hashCode2 = (hashCode + (docsDocPreviewGraffiti == null ? 0 : docsDocPreviewGraffiti.hashCode())) * 31;
        DocsDocPreviewPhoto docsDocPreviewPhoto = this.photo;
        int hashCode3 = (hashCode2 + (docsDocPreviewPhoto == null ? 0 : docsDocPreviewPhoto.hashCode())) * 31;
        DocsDocPreviewVideo docsDocPreviewVideo = this.video;
        return hashCode3 + (docsDocPreviewVideo != null ? docsDocPreviewVideo.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        DocsDocPreviewAudioMsg docsDocPreviewAudioMsg = this.audioMsg;
        DocsDocPreviewGraffiti docsDocPreviewGraffiti = this.graffiti;
        DocsDocPreviewPhoto docsDocPreviewPhoto = this.photo;
        DocsDocPreviewVideo docsDocPreviewVideo = this.video;
        return "DocsDocPreview(audioMsg=" + docsDocPreviewAudioMsg + ", graffiti=" + docsDocPreviewGraffiti + ", photo=" + docsDocPreviewPhoto + ", video=" + docsDocPreviewVideo + ")";
    }

    public /* synthetic */ DocsDocPreview(DocsDocPreviewAudioMsg docsDocPreviewAudioMsg, DocsDocPreviewGraffiti docsDocPreviewGraffiti, DocsDocPreviewPhoto docsDocPreviewPhoto, DocsDocPreviewVideo docsDocPreviewVideo, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : docsDocPreviewAudioMsg, (i9 & 2) != 0 ? null : docsDocPreviewGraffiti, (i9 & 4) != 0 ? null : docsDocPreviewPhoto, (i9 & 8) != 0 ? null : docsDocPreviewVideo);
    }
}
