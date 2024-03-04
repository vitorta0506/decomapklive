package com.vk.sdk.api.base.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001#B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001a\u001a\u00020\bHÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003JI\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\bHÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006$"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseLinkChat;", "", "title", "", "inviteLink", "type", "Lcom/vk/sdk/api/base/dto/BaseLinkChat$Type;", "membersCount", "", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "description", "(Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkChat$Type;ILcom/vk/sdk/api/photos/dto/PhotosPhoto;Ljava/lang/String;)V", "getDescription", "()Ljava/lang/String;", "getInviteLink", "getMembersCount", "()I", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getTitle", "getType", "()Lcom/vk/sdk/api/base/dto/BaseLinkChat$Type;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseLinkChat {
    @SerializedName("description")
    @Nullable
    private final String description;
    @SerializedName("invite_link")
    @NotNull
    private final String inviteLink;
    @SerializedName("members_count")
    private final int membersCount;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("type")
    @NotNull
    private final Type type;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseLinkChat$Type;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CHAT", "GROUP", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Type {
        CHAT(0),
        GROUP(17);
        
        private final int value;

        Type(int i9) {
            this.value = i9;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public BaseLinkChat(@NotNull String title, @NotNull String inviteLink, @NotNull Type type, int i9, @Nullable PhotosPhoto photosPhoto, @Nullable String str) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(inviteLink, "inviteLink");
        Intrinsics.checkNotNullParameter(type, "type");
        this.title = title;
        this.inviteLink = inviteLink;
        this.type = type;
        this.membersCount = i9;
        this.photo = photosPhoto;
        this.description = str;
    }

    public static /* synthetic */ BaseLinkChat copy$default(BaseLinkChat baseLinkChat, String str, String str2, Type type, int i9, PhotosPhoto photosPhoto, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = baseLinkChat.title;
        }
        if ((i10 & 2) != 0) {
            str2 = baseLinkChat.inviteLink;
        }
        String str4 = str2;
        if ((i10 & 4) != 0) {
            type = baseLinkChat.type;
        }
        Type type2 = type;
        if ((i10 & 8) != 0) {
            i9 = baseLinkChat.membersCount;
        }
        int i11 = i9;
        if ((i10 & 16) != 0) {
            photosPhoto = baseLinkChat.photo;
        }
        PhotosPhoto photosPhoto2 = photosPhoto;
        if ((i10 & 32) != 0) {
            str3 = baseLinkChat.description;
        }
        return baseLinkChat.copy(str, str4, type2, i11, photosPhoto2, str3);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @NotNull
    public final String component2() {
        return this.inviteLink;
    }

    @NotNull
    public final Type component3() {
        return this.type;
    }

    public final int component4() {
        return this.membersCount;
    }

    @Nullable
    public final PhotosPhoto component5() {
        return this.photo;
    }

    @Nullable
    public final String component6() {
        return this.description;
    }

    @NotNull
    public final BaseLinkChat copy(@NotNull String title, @NotNull String inviteLink, @NotNull Type type, int i9, @Nullable PhotosPhoto photosPhoto, @Nullable String str) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(inviteLink, "inviteLink");
        Intrinsics.checkNotNullParameter(type, "type");
        return new BaseLinkChat(title, inviteLink, type, i9, photosPhoto, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseLinkChat) {
            BaseLinkChat baseLinkChat = (BaseLinkChat) obj;
            return Intrinsics.areEqual(this.title, baseLinkChat.title) && Intrinsics.areEqual(this.inviteLink, baseLinkChat.inviteLink) && this.type == baseLinkChat.type && this.membersCount == baseLinkChat.membersCount && Intrinsics.areEqual(this.photo, baseLinkChat.photo) && Intrinsics.areEqual(this.description, baseLinkChat.description);
        }
        return false;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    @NotNull
    public final String getInviteLink() {
        return this.inviteLink;
    }

    public final int getMembersCount() {
        return this.membersCount;
    }

    @Nullable
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((((((this.title.hashCode() * 31) + this.inviteLink.hashCode()) * 31) + this.type.hashCode()) * 31) + this.membersCount) * 31;
        PhotosPhoto photosPhoto = this.photo;
        int hashCode2 = (hashCode + (photosPhoto == null ? 0 : photosPhoto.hashCode())) * 31;
        String str = this.description;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.title;
        String str2 = this.inviteLink;
        Type type = this.type;
        int i9 = this.membersCount;
        PhotosPhoto photosPhoto = this.photo;
        String str3 = this.description;
        return "BaseLinkChat(title=" + str + ", inviteLink=" + str2 + ", type=" + type + ", membersCount=" + i9 + ", photo=" + photosPhoto + ", description=" + str3 + ")";
    }

    public /* synthetic */ BaseLinkChat(String str, String str2, Type type, int i9, PhotosPhoto photosPhoto, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, type, i9, (i10 & 16) != 0 ? null : photosPhoto, (i10 & 32) != 0 ? null : str3);
    }
}
