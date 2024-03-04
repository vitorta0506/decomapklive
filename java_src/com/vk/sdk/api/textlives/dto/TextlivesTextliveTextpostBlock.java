package com.vk.sdk.api.textlives.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b6\b\u0086\b\u0018\u00002\u00020\u0001:\u0002KLBµ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u001aJ\t\u00105\u001a\u00020\u0003HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u0010\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010 J\u000b\u00109\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010<\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010 J\t\u0010=\u001a\u00020\u0005HÆ\u0003J\t\u0010>\u001a\u00020\u0007HÆ\u0003J\t\u0010?\u001a\u00020\u0003HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010B\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010 J\u000b\u0010C\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u0010\u0010D\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0002\u0010.JÆ\u0001\u0010E\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010FJ\u0013\u0010G\u001a\u00020\u00102\b\u0010H\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010I\u001a\u00020\u0003HÖ\u0001J\t\u0010J\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010!\u001a\u0004\b\u001f\u0010 R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\"R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001cR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010$R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010(R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010!\u001a\u0004\b,\u0010 R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010/\u001a\u0004\b-\u0010.R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u001cR\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010!\u001a\u0004\b3\u0010 R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\u001c¨\u0006M"}, d2 = {"Lcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock;", "", "online", "", "url", "", "isLive", "Lcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock$IsLive;", "textliveId", "type", "Lcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock$Type;", "title", "unread", "coverPhoto", "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "textpostIsImportant", "", "textliveOwnerId", "Lcom/vk/dto/common/id/UserId;", "textpostAuthorId", "textpostDate", ViewHierarchyConstants.TEXT_KEY, "textpostAttachment", "Lcom/vk/sdk/api/textlives/dto/TextlivesTextpostAttachment;", "attachUrl", "endDate", "(ILjava/lang/String;Lcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock$IsLive;ILcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock$Type;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Ljava/lang/Boolean;Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/textlives/dto/TextlivesTextpostAttachment;Ljava/lang/String;Ljava/lang/Integer;)V", "getAttachUrl", "()Ljava/lang/String;", "getCoverPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getEndDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "()Lcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock$IsLive;", "getOnline", "()I", "getText", "getTextliveId", "getTextliveOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getTextpostAttachment", "()Lcom/vk/sdk/api/textlives/dto/TextlivesTextpostAttachment;", "getTextpostAuthorId", "getTextpostDate", "getTextpostIsImportant", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getTitle", "getType", "()Lcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock$Type;", "getUnread", "getUrl", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILjava/lang/String;Lcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock$IsLive;ILcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock$Type;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Ljava/lang/Boolean;Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/textlives/dto/TextlivesTextpostAttachment;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock;", "equals", "other", "hashCode", "toString", "IsLive", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class TextlivesTextliveTextpostBlock {
    @SerializedName("attach_url")
    @Nullable
    private final String attachUrl;
    @SerializedName("cover_photo")
    @Nullable
    private final PhotosPhoto coverPhoto;
    @SerializedName("end_date")
    @Nullable
    private final Integer endDate;
    @SerializedName("is_live")
    @NotNull
    private final IsLive isLive;
    @SerializedName("online")
    private final int online;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @Nullable
    private final String text;
    @SerializedName("textlive_id")
    private final int textliveId;
    @SerializedName("textlive_owner_id")
    @Nullable
    private final UserId textliveOwnerId;
    @SerializedName("textpost_attachment")
    @Nullable
    private final TextlivesTextpostAttachment textpostAttachment;
    @SerializedName("textpost_author_id")
    @Nullable
    private final UserId textpostAuthorId;
    @SerializedName("textpost_date")
    @Nullable
    private final Integer textpostDate;
    @SerializedName("textpost_is_important")
    @Nullable
    private final Boolean textpostIsImportant;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("type")
    @Nullable
    private final Type type;
    @SerializedName("unread")
    @Nullable
    private final Integer unread;
    @SerializedName("url")
    @NotNull
    private final String url;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock$IsLive;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "OFFLINE", "ONGOING", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum IsLive {
        OFFLINE(0),
        ONGOING(1);
        
        private final int value;

        IsLive(int i9) {
            this.value = i9;
        }

        public final int getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/vk/sdk/api/textlives/dto/TextlivesTextliveTextpostBlock$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "TEXTLIVE", "TEXTPOST", "TEXTPOST_PUBLISH", "TEXTLIVE_FEED_BLOCK", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Type {
        TEXTLIVE("textlive"),
        TEXTPOST("textpost"),
        TEXTPOST_PUBLISH("textpost_publish"),
        TEXTLIVE_FEED_BLOCK("textlive_feed_block");
        
        @NotNull
        private final String value;

        Type(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public TextlivesTextliveTextpostBlock(int i9, @NotNull String url, @NotNull IsLive isLive, int i10, @Nullable Type type, @Nullable String str, @Nullable Integer num, @Nullable PhotosPhoto photosPhoto, @Nullable Boolean bool, @Nullable UserId userId, @Nullable UserId userId2, @Nullable Integer num2, @Nullable String str2, @Nullable TextlivesTextpostAttachment textlivesTextpostAttachment, @Nullable String str3, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(isLive, "isLive");
        this.online = i9;
        this.url = url;
        this.isLive = isLive;
        this.textliveId = i10;
        this.type = type;
        this.title = str;
        this.unread = num;
        this.coverPhoto = photosPhoto;
        this.textpostIsImportant = bool;
        this.textliveOwnerId = userId;
        this.textpostAuthorId = userId2;
        this.textpostDate = num2;
        this.text = str2;
        this.textpostAttachment = textlivesTextpostAttachment;
        this.attachUrl = str3;
        this.endDate = num3;
    }

    public final int component1() {
        return this.online;
    }

    @Nullable
    public final UserId component10() {
        return this.textliveOwnerId;
    }

    @Nullable
    public final UserId component11() {
        return this.textpostAuthorId;
    }

    @Nullable
    public final Integer component12() {
        return this.textpostDate;
    }

    @Nullable
    public final String component13() {
        return this.text;
    }

    @Nullable
    public final TextlivesTextpostAttachment component14() {
        return this.textpostAttachment;
    }

    @Nullable
    public final String component15() {
        return this.attachUrl;
    }

    @Nullable
    public final Integer component16() {
        return this.endDate;
    }

    @NotNull
    public final String component2() {
        return this.url;
    }

    @NotNull
    public final IsLive component3() {
        return this.isLive;
    }

    public final int component4() {
        return this.textliveId;
    }

    @Nullable
    public final Type component5() {
        return this.type;
    }

    @Nullable
    public final String component6() {
        return this.title;
    }

    @Nullable
    public final Integer component7() {
        return this.unread;
    }

    @Nullable
    public final PhotosPhoto component8() {
        return this.coverPhoto;
    }

    @Nullable
    public final Boolean component9() {
        return this.textpostIsImportant;
    }

    @NotNull
    public final TextlivesTextliveTextpostBlock copy(int i9, @NotNull String url, @NotNull IsLive isLive, int i10, @Nullable Type type, @Nullable String str, @Nullable Integer num, @Nullable PhotosPhoto photosPhoto, @Nullable Boolean bool, @Nullable UserId userId, @Nullable UserId userId2, @Nullable Integer num2, @Nullable String str2, @Nullable TextlivesTextpostAttachment textlivesTextpostAttachment, @Nullable String str3, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(isLive, "isLive");
        return new TextlivesTextliveTextpostBlock(i9, url, isLive, i10, type, str, num, photosPhoto, bool, userId, userId2, num2, str2, textlivesTextpostAttachment, str3, num3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TextlivesTextliveTextpostBlock) {
            TextlivesTextliveTextpostBlock textlivesTextliveTextpostBlock = (TextlivesTextliveTextpostBlock) obj;
            return this.online == textlivesTextliveTextpostBlock.online && Intrinsics.areEqual(this.url, textlivesTextliveTextpostBlock.url) && this.isLive == textlivesTextliveTextpostBlock.isLive && this.textliveId == textlivesTextliveTextpostBlock.textliveId && this.type == textlivesTextliveTextpostBlock.type && Intrinsics.areEqual(this.title, textlivesTextliveTextpostBlock.title) && Intrinsics.areEqual(this.unread, textlivesTextliveTextpostBlock.unread) && Intrinsics.areEqual(this.coverPhoto, textlivesTextliveTextpostBlock.coverPhoto) && Intrinsics.areEqual(this.textpostIsImportant, textlivesTextliveTextpostBlock.textpostIsImportant) && Intrinsics.areEqual(this.textliveOwnerId, textlivesTextliveTextpostBlock.textliveOwnerId) && Intrinsics.areEqual(this.textpostAuthorId, textlivesTextliveTextpostBlock.textpostAuthorId) && Intrinsics.areEqual(this.textpostDate, textlivesTextliveTextpostBlock.textpostDate) && Intrinsics.areEqual(this.text, textlivesTextliveTextpostBlock.text) && Intrinsics.areEqual(this.textpostAttachment, textlivesTextliveTextpostBlock.textpostAttachment) && Intrinsics.areEqual(this.attachUrl, textlivesTextliveTextpostBlock.attachUrl) && Intrinsics.areEqual(this.endDate, textlivesTextliveTextpostBlock.endDate);
        }
        return false;
    }

    @Nullable
    public final String getAttachUrl() {
        return this.attachUrl;
    }

    @Nullable
    public final PhotosPhoto getCoverPhoto() {
        return this.coverPhoto;
    }

    @Nullable
    public final Integer getEndDate() {
        return this.endDate;
    }

    public final int getOnline() {
        return this.online;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    public final int getTextliveId() {
        return this.textliveId;
    }

    @Nullable
    public final UserId getTextliveOwnerId() {
        return this.textliveOwnerId;
    }

    @Nullable
    public final TextlivesTextpostAttachment getTextpostAttachment() {
        return this.textpostAttachment;
    }

    @Nullable
    public final UserId getTextpostAuthorId() {
        return this.textpostAuthorId;
    }

    @Nullable
    public final Integer getTextpostDate() {
        return this.textpostDate;
    }

    @Nullable
    public final Boolean getTextpostIsImportant() {
        return this.textpostIsImportant;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final Type getType() {
        return this.type;
    }

    @Nullable
    public final Integer getUnread() {
        return this.unread;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode = ((((((this.online * 31) + this.url.hashCode()) * 31) + this.isLive.hashCode()) * 31) + this.textliveId) * 31;
        Type type = this.type;
        int hashCode2 = (hashCode + (type == null ? 0 : type.hashCode())) * 31;
        String str = this.title;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.unread;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        PhotosPhoto photosPhoto = this.coverPhoto;
        int hashCode5 = (hashCode4 + (photosPhoto == null ? 0 : photosPhoto.hashCode())) * 31;
        Boolean bool = this.textpostIsImportant;
        int hashCode6 = (hashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        UserId userId = this.textliveOwnerId;
        int hashCode7 = (hashCode6 + (userId == null ? 0 : userId.hashCode())) * 31;
        UserId userId2 = this.textpostAuthorId;
        int hashCode8 = (hashCode7 + (userId2 == null ? 0 : userId2.hashCode())) * 31;
        Integer num2 = this.textpostDate;
        int hashCode9 = (hashCode8 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str2 = this.text;
        int hashCode10 = (hashCode9 + (str2 == null ? 0 : str2.hashCode())) * 31;
        TextlivesTextpostAttachment textlivesTextpostAttachment = this.textpostAttachment;
        int hashCode11 = (hashCode10 + (textlivesTextpostAttachment == null ? 0 : textlivesTextpostAttachment.hashCode())) * 31;
        String str3 = this.attachUrl;
        int hashCode12 = (hashCode11 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num3 = this.endDate;
        return hashCode12 + (num3 != null ? num3.hashCode() : 0);
    }

    @NotNull
    public final IsLive isLive() {
        return this.isLive;
    }

    @NotNull
    public String toString() {
        int i9 = this.online;
        String str = this.url;
        IsLive isLive = this.isLive;
        int i10 = this.textliveId;
        Type type = this.type;
        String str2 = this.title;
        Integer num = this.unread;
        PhotosPhoto photosPhoto = this.coverPhoto;
        Boolean bool = this.textpostIsImportant;
        UserId userId = this.textliveOwnerId;
        UserId userId2 = this.textpostAuthorId;
        Integer num2 = this.textpostDate;
        String str3 = this.text;
        TextlivesTextpostAttachment textlivesTextpostAttachment = this.textpostAttachment;
        String str4 = this.attachUrl;
        Integer num3 = this.endDate;
        return "TextlivesTextliveTextpostBlock(online=" + i9 + ", url=" + str + ", isLive=" + isLive + ", textliveId=" + i10 + ", type=" + type + ", title=" + str2 + ", unread=" + num + ", coverPhoto=" + photosPhoto + ", textpostIsImportant=" + bool + ", textliveOwnerId=" + userId + ", textpostAuthorId=" + userId2 + ", textpostDate=" + num2 + ", text=" + str3 + ", textpostAttachment=" + textlivesTextpostAttachment + ", attachUrl=" + str4 + ", endDate=" + num3 + ")";
    }

    public /* synthetic */ TextlivesTextliveTextpostBlock(int i9, String str, IsLive isLive, int i10, Type type, String str2, Integer num, PhotosPhoto photosPhoto, Boolean bool, UserId userId, UserId userId2, Integer num2, String str3, TextlivesTextpostAttachment textlivesTextpostAttachment, String str4, Integer num3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, isLive, i10, (i11 & 16) != 0 ? null : type, (i11 & 32) != 0 ? null : str2, (i11 & 64) != 0 ? null : num, (i11 & 128) != 0 ? null : photosPhoto, (i11 & 256) != 0 ? null : bool, (i11 & 512) != 0 ? null : userId, (i11 & 1024) != 0 ? null : userId2, (i11 & 2048) != 0 ? null : num2, (i11 & 4096) != 0 ? null : str3, (i11 & 8192) != 0 ? null : textlivesTextpostAttachment, (i11 & 16384) != 0 ? null : str4, (i11 & 32768) != 0 ? null : num3);
    }
}
