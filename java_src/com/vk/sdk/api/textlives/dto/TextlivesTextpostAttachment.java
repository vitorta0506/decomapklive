package com.vk.sdk.api.textlives.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseLink;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import com.vk.sdk.api.polls.dto.PollsPoll;
import com.vk.sdk.api.video.dto.VideoVideoFull;
import com.vk.sdk.api.wall.dto.WallWallpostAttachmentType;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\rHÆ\u0003JO\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\t\u0010'\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006("}, d2 = {"Lcom/vk/sdk/api/textlives/dto/TextlivesTextpostAttachment;", "", "type", "Lcom/vk/sdk/api/wall/dto/WallWallpostAttachmentType;", "accessKey", "", "link", "Lcom/vk/sdk/api/base/dto/BaseLink;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "poll", "Lcom/vk/sdk/api/polls/dto/PollsPoll;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "Lcom/vk/sdk/api/video/dto/VideoVideoFull;", "(Lcom/vk/sdk/api/wall/dto/WallWallpostAttachmentType;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLink;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Lcom/vk/sdk/api/polls/dto/PollsPoll;Lcom/vk/sdk/api/video/dto/VideoVideoFull;)V", "getAccessKey", "()Ljava/lang/String;", "getLink", "()Lcom/vk/sdk/api/base/dto/BaseLink;", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getPoll", "()Lcom/vk/sdk/api/polls/dto/PollsPoll;", "getType", "()Lcom/vk/sdk/api/wall/dto/WallWallpostAttachmentType;", "getVideo", "()Lcom/vk/sdk/api/video/dto/VideoVideoFull;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class TextlivesTextpostAttachment {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("link")
    @Nullable
    private final BaseLink link;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;
    @SerializedName("poll")
    @Nullable
    private final PollsPoll poll;
    @SerializedName("type")
    @NotNull
    private final WallWallpostAttachmentType type;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)
    @Nullable
    private final VideoVideoFull video;

    public TextlivesTextpostAttachment(@NotNull WallWallpostAttachmentType type, @Nullable String str, @Nullable BaseLink baseLink, @Nullable PhotosPhoto photosPhoto, @Nullable PollsPoll pollsPoll, @Nullable VideoVideoFull videoVideoFull) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.accessKey = str;
        this.link = baseLink;
        this.photo = photosPhoto;
        this.poll = pollsPoll;
        this.video = videoVideoFull;
    }

    public static /* synthetic */ TextlivesTextpostAttachment copy$default(TextlivesTextpostAttachment textlivesTextpostAttachment, WallWallpostAttachmentType wallWallpostAttachmentType, String str, BaseLink baseLink, PhotosPhoto photosPhoto, PollsPoll pollsPoll, VideoVideoFull videoVideoFull, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            wallWallpostAttachmentType = textlivesTextpostAttachment.type;
        }
        if ((i9 & 2) != 0) {
            str = textlivesTextpostAttachment.accessKey;
        }
        String str2 = str;
        if ((i9 & 4) != 0) {
            baseLink = textlivesTextpostAttachment.link;
        }
        BaseLink baseLink2 = baseLink;
        if ((i9 & 8) != 0) {
            photosPhoto = textlivesTextpostAttachment.photo;
        }
        PhotosPhoto photosPhoto2 = photosPhoto;
        if ((i9 & 16) != 0) {
            pollsPoll = textlivesTextpostAttachment.poll;
        }
        PollsPoll pollsPoll2 = pollsPoll;
        if ((i9 & 32) != 0) {
            videoVideoFull = textlivesTextpostAttachment.video;
        }
        return textlivesTextpostAttachment.copy(wallWallpostAttachmentType, str2, baseLink2, photosPhoto2, pollsPoll2, videoVideoFull);
    }

    @NotNull
    public final WallWallpostAttachmentType component1() {
        return this.type;
    }

    @Nullable
    public final String component2() {
        return this.accessKey;
    }

    @Nullable
    public final BaseLink component3() {
        return this.link;
    }

    @Nullable
    public final PhotosPhoto component4() {
        return this.photo;
    }

    @Nullable
    public final PollsPoll component5() {
        return this.poll;
    }

    @Nullable
    public final VideoVideoFull component6() {
        return this.video;
    }

    @NotNull
    public final TextlivesTextpostAttachment copy(@NotNull WallWallpostAttachmentType type, @Nullable String str, @Nullable BaseLink baseLink, @Nullable PhotosPhoto photosPhoto, @Nullable PollsPoll pollsPoll, @Nullable VideoVideoFull videoVideoFull) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new TextlivesTextpostAttachment(type, str, baseLink, photosPhoto, pollsPoll, videoVideoFull);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TextlivesTextpostAttachment) {
            TextlivesTextpostAttachment textlivesTextpostAttachment = (TextlivesTextpostAttachment) obj;
            return this.type == textlivesTextpostAttachment.type && Intrinsics.areEqual(this.accessKey, textlivesTextpostAttachment.accessKey) && Intrinsics.areEqual(this.link, textlivesTextpostAttachment.link) && Intrinsics.areEqual(this.photo, textlivesTextpostAttachment.photo) && Intrinsics.areEqual(this.poll, textlivesTextpostAttachment.poll) && Intrinsics.areEqual(this.video, textlivesTextpostAttachment.video);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    @Nullable
    public final BaseLink getLink() {
        return this.link;
    }

    @Nullable
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    @Nullable
    public final PollsPoll getPoll() {
        return this.poll;
    }

    @NotNull
    public final WallWallpostAttachmentType getType() {
        return this.type;
    }

    @Nullable
    public final VideoVideoFull getVideo() {
        return this.video;
    }

    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        String str = this.accessKey;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        BaseLink baseLink = this.link;
        int hashCode3 = (hashCode2 + (baseLink == null ? 0 : baseLink.hashCode())) * 31;
        PhotosPhoto photosPhoto = this.photo;
        int hashCode4 = (hashCode3 + (photosPhoto == null ? 0 : photosPhoto.hashCode())) * 31;
        PollsPoll pollsPoll = this.poll;
        int hashCode5 = (hashCode4 + (pollsPoll == null ? 0 : pollsPoll.hashCode())) * 31;
        VideoVideoFull videoVideoFull = this.video;
        return hashCode5 + (videoVideoFull != null ? videoVideoFull.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        WallWallpostAttachmentType wallWallpostAttachmentType = this.type;
        String str = this.accessKey;
        BaseLink baseLink = this.link;
        PhotosPhoto photosPhoto = this.photo;
        PollsPoll pollsPoll = this.poll;
        VideoVideoFull videoVideoFull = this.video;
        return "TextlivesTextpostAttachment(type=" + wallWallpostAttachmentType + ", accessKey=" + str + ", link=" + baseLink + ", photo=" + photosPhoto + ", poll=" + pollsPoll + ", video=" + videoVideoFull + ")";
    }

    public /* synthetic */ TextlivesTextpostAttachment(WallWallpostAttachmentType wallWallpostAttachmentType, String str, BaseLink baseLink, PhotosPhoto photosPhoto, PollsPoll pollsPoll, VideoVideoFull videoVideoFull, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(wallWallpostAttachmentType, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : baseLink, (i9 & 8) != 0 ? null : photosPhoto, (i9 & 16) != 0 ? null : pollsPoll, (i9 & 32) == 0 ? videoVideoFull : null);
    }
}
