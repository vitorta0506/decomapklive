package com.vk.sdk.api.photos.dto;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Be\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0007\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0011\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003Ji\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012¨\u0006'"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItem;", "", "title", "", ShareConstants.FEED_CAPTION_PARAM, "type", "buttons", "", "Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItemButton;", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "tags", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoTag;", "trackCode", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Ljava/util/List;Ljava/lang/String;)V", "getButtons", "()Ljava/util/List;", "getCaption", "()Ljava/lang/String;", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getTags", "getTitle", "getTrackCode", "getType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosTagsSuggestionItem {
    @SerializedName("buttons")
    @Nullable
    private final List<PhotosTagsSuggestionItemButton> buttons;
    @SerializedName(ShareConstants.FEED_CAPTION_PARAM)
    @Nullable
    private final String caption;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;
    @SerializedName("tags")
    @Nullable
    private final List<PhotosPhotoTag> tags;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("track_code")
    @Nullable
    private final String trackCode;
    @SerializedName("type")
    @Nullable
    private final String type;

    public PhotosTagsSuggestionItem() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public PhotosTagsSuggestionItem(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable List<PhotosTagsSuggestionItemButton> list, @Nullable PhotosPhoto photosPhoto, @Nullable List<PhotosPhotoTag> list2, @Nullable String str4) {
        this.title = str;
        this.caption = str2;
        this.type = str3;
        this.buttons = list;
        this.photo = photosPhoto;
        this.tags = list2;
        this.trackCode = str4;
    }

    public static /* synthetic */ PhotosTagsSuggestionItem copy$default(PhotosTagsSuggestionItem photosTagsSuggestionItem, String str, String str2, String str3, List list, PhotosPhoto photosPhoto, List list2, String str4, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = photosTagsSuggestionItem.title;
        }
        if ((i9 & 2) != 0) {
            str2 = photosTagsSuggestionItem.caption;
        }
        String str5 = str2;
        if ((i9 & 4) != 0) {
            str3 = photosTagsSuggestionItem.type;
        }
        String str6 = str3;
        List<PhotosTagsSuggestionItemButton> list3 = list;
        if ((i9 & 8) != 0) {
            list3 = photosTagsSuggestionItem.buttons;
        }
        List list4 = list3;
        if ((i9 & 16) != 0) {
            photosPhoto = photosTagsSuggestionItem.photo;
        }
        PhotosPhoto photosPhoto2 = photosPhoto;
        List<PhotosPhotoTag> list5 = list2;
        if ((i9 & 32) != 0) {
            list5 = photosTagsSuggestionItem.tags;
        }
        List list6 = list5;
        if ((i9 & 64) != 0) {
            str4 = photosTagsSuggestionItem.trackCode;
        }
        return photosTagsSuggestionItem.copy(str, str5, str6, list4, photosPhoto2, list6, str4);
    }

    @Nullable
    public final String component1() {
        return this.title;
    }

    @Nullable
    public final String component2() {
        return this.caption;
    }

    @Nullable
    public final String component3() {
        return this.type;
    }

    @Nullable
    public final List<PhotosTagsSuggestionItemButton> component4() {
        return this.buttons;
    }

    @Nullable
    public final PhotosPhoto component5() {
        return this.photo;
    }

    @Nullable
    public final List<PhotosPhotoTag> component6() {
        return this.tags;
    }

    @Nullable
    public final String component7() {
        return this.trackCode;
    }

    @NotNull
    public final PhotosTagsSuggestionItem copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable List<PhotosTagsSuggestionItemButton> list, @Nullable PhotosPhoto photosPhoto, @Nullable List<PhotosPhotoTag> list2, @Nullable String str4) {
        return new PhotosTagsSuggestionItem(str, str2, str3, list, photosPhoto, list2, str4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosTagsSuggestionItem) {
            PhotosTagsSuggestionItem photosTagsSuggestionItem = (PhotosTagsSuggestionItem) obj;
            return Intrinsics.areEqual(this.title, photosTagsSuggestionItem.title) && Intrinsics.areEqual(this.caption, photosTagsSuggestionItem.caption) && Intrinsics.areEqual(this.type, photosTagsSuggestionItem.type) && Intrinsics.areEqual(this.buttons, photosTagsSuggestionItem.buttons) && Intrinsics.areEqual(this.photo, photosTagsSuggestionItem.photo) && Intrinsics.areEqual(this.tags, photosTagsSuggestionItem.tags) && Intrinsics.areEqual(this.trackCode, photosTagsSuggestionItem.trackCode);
        }
        return false;
    }

    @Nullable
    public final List<PhotosTagsSuggestionItemButton> getButtons() {
        return this.buttons;
    }

    @Nullable
    public final String getCaption() {
        return this.caption;
    }

    @Nullable
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    @Nullable
    public final List<PhotosPhotoTag> getTags() {
        return this.tags;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final String getTrackCode() {
        return this.trackCode;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.title;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.caption;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.type;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List<PhotosTagsSuggestionItemButton> list = this.buttons;
        int hashCode4 = (hashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        PhotosPhoto photosPhoto = this.photo;
        int hashCode5 = (hashCode4 + (photosPhoto == null ? 0 : photosPhoto.hashCode())) * 31;
        List<PhotosPhotoTag> list2 = this.tags;
        int hashCode6 = (hashCode5 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str4 = this.trackCode;
        return hashCode6 + (str4 != null ? str4.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.title;
        String str2 = this.caption;
        String str3 = this.type;
        List<PhotosTagsSuggestionItemButton> list = this.buttons;
        PhotosPhoto photosPhoto = this.photo;
        List<PhotosPhotoTag> list2 = this.tags;
        String str4 = this.trackCode;
        return "PhotosTagsSuggestionItem(title=" + str + ", caption=" + str2 + ", type=" + str3 + ", buttons=" + list + ", photo=" + photosPhoto + ", tags=" + list2 + ", trackCode=" + str4 + ")";
    }

    public /* synthetic */ PhotosTagsSuggestionItem(String str, String str2, String str3, List list, PhotosPhoto photosPhoto, List list2, String str4, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : str2, (i9 & 4) != 0 ? null : str3, (i9 & 8) != 0 ? null : list, (i9 & 16) != 0 ? null : photosPhoto, (i9 & 32) != 0 ? null : list2, (i9 & 64) != 0 ? null : str4);
    }
}
