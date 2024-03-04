package com.vk.sdk.api.classifieds.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b(\b\u0086\b\u0018\u00002\u00020\u0001Bo\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0005\u0012\u0006\u0010\u0012\u001a\u00020\f\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0014J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0005HÆ\u0003J\t\u0010'\u001a\u00020\fHÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010)\u001a\u00020\u0005HÆ\u0003J\t\u0010*\u001a\u00020\u0005HÆ\u0003J\t\u0010+\u001a\u00020\u0005HÆ\u0003J\u000f\u0010,\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\t\u0010-\u001a\u00020\fHÆ\u0003J\t\u0010.\u001a\u00020\u000eHÆ\u0003J\t\u0010/\u001a\u00020\u0005HÆ\u0003J\t\u00100\u001a\u00020\u0005HÆ\u0003J\u0089\u0001\u00101\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u00052\b\b\u0002\u0010\u0012\u001a\u00020\f2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u00102\u001a\u00020\f2\b\u00103\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00104\u001a\u00020\u000eHÖ\u0001J\t\u00105\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0012\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0018R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010\u0010\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001aR\u0016\u0010\u0011\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001aR\u0016\u0010\u000f\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001aR\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001aR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001aR\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001a¨\u00066"}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaGroupsBlockItem;", "", "groupId", "Lcom/vk/dto/common/id/UserId;", "title", "", "subtitle", "url", "products", "", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaGroupsBlockProduct;", "hasNew", "", "newCount", "", "photo50", "photo100", "photo200", "isSubscribed", "lastPhotoText", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V", "getGroupId", "()Lcom/vk/dto/common/id/UserId;", "getHasNew", "()Z", "getLastPhotoText", "()Ljava/lang/String;", "getNewCount", "()I", "getPhoto100", "getPhoto200", "getPhoto50", "getProducts", "()Ljava/util/List;", "getSubtitle", "getTitle", "getUrl", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ClassifiedsYoulaGroupsBlockItem {
    @SerializedName("group_id")
    @NotNull
    private final UserId groupId;
    @SerializedName("has_new")
    private final boolean hasNew;
    @SerializedName("is_subscribed")
    private final boolean isSubscribed;
    @SerializedName("last_photo_text")
    @Nullable
    private final String lastPhotoText;
    @SerializedName("new_count")
    private final int newCount;
    @SerializedName("photo_100")
    @NotNull
    private final String photo100;
    @SerializedName("photo_200")
    @NotNull
    private final String photo200;
    @SerializedName("photo_50")
    @NotNull
    private final String photo50;
    @SerializedName("products")
    @NotNull
    private final List<ClassifiedsYoulaGroupsBlockProduct> products;
    @SerializedName("subtitle")
    @NotNull
    private final String subtitle;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("url")
    @NotNull
    private final String url;

    public ClassifiedsYoulaGroupsBlockItem(@NotNull UserId groupId, @NotNull String title, @NotNull String subtitle, @NotNull String url, @NotNull List<ClassifiedsYoulaGroupsBlockProduct> products, boolean z10, int i9, @NotNull String photo50, @NotNull String photo100, @NotNull String photo200, boolean z11, @Nullable String str) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(products, "products");
        Intrinsics.checkNotNullParameter(photo50, "photo50");
        Intrinsics.checkNotNullParameter(photo100, "photo100");
        Intrinsics.checkNotNullParameter(photo200, "photo200");
        this.groupId = groupId;
        this.title = title;
        this.subtitle = subtitle;
        this.url = url;
        this.products = products;
        this.hasNew = z10;
        this.newCount = i9;
        this.photo50 = photo50;
        this.photo100 = photo100;
        this.photo200 = photo200;
        this.isSubscribed = z11;
        this.lastPhotoText = str;
    }

    @NotNull
    public final UserId component1() {
        return this.groupId;
    }

    @NotNull
    public final String component10() {
        return this.photo200;
    }

    public final boolean component11() {
        return this.isSubscribed;
    }

    @Nullable
    public final String component12() {
        return this.lastPhotoText;
    }

    @NotNull
    public final String component2() {
        return this.title;
    }

    @NotNull
    public final String component3() {
        return this.subtitle;
    }

    @NotNull
    public final String component4() {
        return this.url;
    }

    @NotNull
    public final List<ClassifiedsYoulaGroupsBlockProduct> component5() {
        return this.products;
    }

    public final boolean component6() {
        return this.hasNew;
    }

    public final int component7() {
        return this.newCount;
    }

    @NotNull
    public final String component8() {
        return this.photo50;
    }

    @NotNull
    public final String component9() {
        return this.photo100;
    }

    @NotNull
    public final ClassifiedsYoulaGroupsBlockItem copy(@NotNull UserId groupId, @NotNull String title, @NotNull String subtitle, @NotNull String url, @NotNull List<ClassifiedsYoulaGroupsBlockProduct> products, boolean z10, int i9, @NotNull String photo50, @NotNull String photo100, @NotNull String photo200, boolean z11, @Nullable String str) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(products, "products");
        Intrinsics.checkNotNullParameter(photo50, "photo50");
        Intrinsics.checkNotNullParameter(photo100, "photo100");
        Intrinsics.checkNotNullParameter(photo200, "photo200");
        return new ClassifiedsYoulaGroupsBlockItem(groupId, title, subtitle, url, products, z10, i9, photo50, photo100, photo200, z11, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassifiedsYoulaGroupsBlockItem) {
            ClassifiedsYoulaGroupsBlockItem classifiedsYoulaGroupsBlockItem = (ClassifiedsYoulaGroupsBlockItem) obj;
            return Intrinsics.areEqual(this.groupId, classifiedsYoulaGroupsBlockItem.groupId) && Intrinsics.areEqual(this.title, classifiedsYoulaGroupsBlockItem.title) && Intrinsics.areEqual(this.subtitle, classifiedsYoulaGroupsBlockItem.subtitle) && Intrinsics.areEqual(this.url, classifiedsYoulaGroupsBlockItem.url) && Intrinsics.areEqual(this.products, classifiedsYoulaGroupsBlockItem.products) && this.hasNew == classifiedsYoulaGroupsBlockItem.hasNew && this.newCount == classifiedsYoulaGroupsBlockItem.newCount && Intrinsics.areEqual(this.photo50, classifiedsYoulaGroupsBlockItem.photo50) && Intrinsics.areEqual(this.photo100, classifiedsYoulaGroupsBlockItem.photo100) && Intrinsics.areEqual(this.photo200, classifiedsYoulaGroupsBlockItem.photo200) && this.isSubscribed == classifiedsYoulaGroupsBlockItem.isSubscribed && Intrinsics.areEqual(this.lastPhotoText, classifiedsYoulaGroupsBlockItem.lastPhotoText);
        }
        return false;
    }

    @NotNull
    public final UserId getGroupId() {
        return this.groupId;
    }

    public final boolean getHasNew() {
        return this.hasNew;
    }

    @Nullable
    public final String getLastPhotoText() {
        return this.lastPhotoText;
    }

    public final int getNewCount() {
        return this.newCount;
    }

    @NotNull
    public final String getPhoto100() {
        return this.photo100;
    }

    @NotNull
    public final String getPhoto200() {
        return this.photo200;
    }

    @NotNull
    public final String getPhoto50() {
        return this.photo50;
    }

    @NotNull
    public final List<ClassifiedsYoulaGroupsBlockProduct> getProducts() {
        return this.products;
    }

    @NotNull
    public final String getSubtitle() {
        return this.subtitle;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((this.groupId.hashCode() * 31) + this.title.hashCode()) * 31) + this.subtitle.hashCode()) * 31) + this.url.hashCode()) * 31) + this.products.hashCode()) * 31;
        boolean z10 = this.hasNew;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        int hashCode2 = (((((((((hashCode + i9) * 31) + this.newCount) * 31) + this.photo50.hashCode()) * 31) + this.photo100.hashCode()) * 31) + this.photo200.hashCode()) * 31;
        boolean z11 = this.isSubscribed;
        int i10 = (hashCode2 + (z11 ? 1 : z11 ? 1 : 0)) * 31;
        String str = this.lastPhotoText;
        return i10 + (str == null ? 0 : str.hashCode());
    }

    public final boolean isSubscribed() {
        return this.isSubscribed;
    }

    @NotNull
    public String toString() {
        UserId userId = this.groupId;
        String str = this.title;
        String str2 = this.subtitle;
        String str3 = this.url;
        List<ClassifiedsYoulaGroupsBlockProduct> list = this.products;
        boolean z10 = this.hasNew;
        int i9 = this.newCount;
        String str4 = this.photo50;
        String str5 = this.photo100;
        String str6 = this.photo200;
        boolean z11 = this.isSubscribed;
        String str7 = this.lastPhotoText;
        return "ClassifiedsYoulaGroupsBlockItem(groupId=" + userId + ", title=" + str + ", subtitle=" + str2 + ", url=" + str3 + ", products=" + list + ", hasNew=" + z10 + ", newCount=" + i9 + ", photo50=" + str4 + ", photo100=" + str5 + ", photo200=" + str6 + ", isSubscribed=" + z11 + ", lastPhotoText=" + str7 + ")";
    }

    public /* synthetic */ ClassifiedsYoulaGroupsBlockItem(UserId userId, String str, String str2, String str3, List list, boolean z10, int i9, String str4, String str5, String str6, boolean z11, String str7, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, str, str2, str3, list, z10, i9, str4, str5, str6, z11, (i10 & 2048) != 0 ? null : str7);
    }
}
