package com.vk.sdk.api.classifieds.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\rJP\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\nHÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012¨\u0006#"}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemVkAuthor;", "", "id", "Lcom/vk/dto/common/id/UserId;", "name", "", "profileLink", "sellerProfileUrl", "photoUrl", "activeItemsCount", "", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getActiveItemsCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getId", "()Lcom/vk/dto/common/id/UserId;", "getName", "()Ljava/lang/String;", "getPhotoUrl", "getProfileLink", "getSellerProfileUrl", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemVkAuthor;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ClassifiedsYoulaItemVkAuthor {
    @SerializedName("active_items_count")
    @Nullable
    private final Integer activeItemsCount;
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final UserId f35757id;
    @SerializedName("name")
    @NotNull
    private final String name;
    @SerializedName("photo_url")
    @Nullable
    private final String photoUrl;
    @SerializedName("profile_link")
    @NotNull
    private final String profileLink;
    @SerializedName("seller_profile_url")
    @Nullable
    private final String sellerProfileUrl;

    public ClassifiedsYoulaItemVkAuthor(@NotNull UserId id2, @NotNull String name, @NotNull String profileLink, @Nullable String str, @Nullable String str2, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(profileLink, "profileLink");
        this.f35757id = id2;
        this.name = name;
        this.profileLink = profileLink;
        this.sellerProfileUrl = str;
        this.photoUrl = str2;
        this.activeItemsCount = num;
    }

    public static /* synthetic */ ClassifiedsYoulaItemVkAuthor copy$default(ClassifiedsYoulaItemVkAuthor classifiedsYoulaItemVkAuthor, UserId userId, String str, String str2, String str3, String str4, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = classifiedsYoulaItemVkAuthor.f35757id;
        }
        if ((i9 & 2) != 0) {
            str = classifiedsYoulaItemVkAuthor.name;
        }
        String str5 = str;
        if ((i9 & 4) != 0) {
            str2 = classifiedsYoulaItemVkAuthor.profileLink;
        }
        String str6 = str2;
        if ((i9 & 8) != 0) {
            str3 = classifiedsYoulaItemVkAuthor.sellerProfileUrl;
        }
        String str7 = str3;
        if ((i9 & 16) != 0) {
            str4 = classifiedsYoulaItemVkAuthor.photoUrl;
        }
        String str8 = str4;
        if ((i9 & 32) != 0) {
            num = classifiedsYoulaItemVkAuthor.activeItemsCount;
        }
        return classifiedsYoulaItemVkAuthor.copy(userId, str5, str6, str7, str8, num);
    }

    @NotNull
    public final UserId component1() {
        return this.f35757id;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final String component3() {
        return this.profileLink;
    }

    @Nullable
    public final String component4() {
        return this.sellerProfileUrl;
    }

    @Nullable
    public final String component5() {
        return this.photoUrl;
    }

    @Nullable
    public final Integer component6() {
        return this.activeItemsCount;
    }

    @NotNull
    public final ClassifiedsYoulaItemVkAuthor copy(@NotNull UserId id2, @NotNull String name, @NotNull String profileLink, @Nullable String str, @Nullable String str2, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(profileLink, "profileLink");
        return new ClassifiedsYoulaItemVkAuthor(id2, name, profileLink, str, str2, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassifiedsYoulaItemVkAuthor) {
            ClassifiedsYoulaItemVkAuthor classifiedsYoulaItemVkAuthor = (ClassifiedsYoulaItemVkAuthor) obj;
            return Intrinsics.areEqual(this.f35757id, classifiedsYoulaItemVkAuthor.f35757id) && Intrinsics.areEqual(this.name, classifiedsYoulaItemVkAuthor.name) && Intrinsics.areEqual(this.profileLink, classifiedsYoulaItemVkAuthor.profileLink) && Intrinsics.areEqual(this.sellerProfileUrl, classifiedsYoulaItemVkAuthor.sellerProfileUrl) && Intrinsics.areEqual(this.photoUrl, classifiedsYoulaItemVkAuthor.photoUrl) && Intrinsics.areEqual(this.activeItemsCount, classifiedsYoulaItemVkAuthor.activeItemsCount);
        }
        return false;
    }

    @Nullable
    public final Integer getActiveItemsCount() {
        return this.activeItemsCount;
    }

    @NotNull
    public final UserId getId() {
        return this.f35757id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getPhotoUrl() {
        return this.photoUrl;
    }

    @NotNull
    public final String getProfileLink() {
        return this.profileLink;
    }

    @Nullable
    public final String getSellerProfileUrl() {
        return this.sellerProfileUrl;
    }

    public int hashCode() {
        int hashCode = ((((this.f35757id.hashCode() * 31) + this.name.hashCode()) * 31) + this.profileLink.hashCode()) * 31;
        String str = this.sellerProfileUrl;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.photoUrl;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.activeItemsCount;
        return hashCode3 + (num != null ? num.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        UserId userId = this.f35757id;
        String str = this.name;
        String str2 = this.profileLink;
        String str3 = this.sellerProfileUrl;
        String str4 = this.photoUrl;
        Integer num = this.activeItemsCount;
        return "ClassifiedsYoulaItemVkAuthor(id=" + userId + ", name=" + str + ", profileLink=" + str2 + ", sellerProfileUrl=" + str3 + ", photoUrl=" + str4 + ", activeItemsCount=" + num + ")";
    }

    public /* synthetic */ ClassifiedsYoulaItemVkAuthor(UserId userId, String str, String str2, String str3, String str4, Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, str, str2, (i9 & 8) != 0 ? null : str3, (i9 & 16) != 0 ? null : str4, (i9 & 32) != 0 ? null : num);
    }
}
