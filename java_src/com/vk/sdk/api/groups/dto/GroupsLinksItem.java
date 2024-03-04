package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Be\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\rJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0006HÆ\u0003Jn\u0010\"\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\bHÖ\u0001J\t\u0010(\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000fR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u000f¨\u0006)"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsLinksItem;", "", "name", "", "desc", "editTitle", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "id", "", "photo100", "photo50", "url", "imageProcessing", "(Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "getDesc", "()Ljava/lang/String;", "getEditTitle", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getImageProcessing", "getName", "getPhoto100", "getPhoto50", "getUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)Lcom/vk/sdk/api/groups/dto/GroupsLinksItem;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsLinksItem {
    @SerializedName("desc")
    @Nullable
    private final String desc;
    @SerializedName("edit_title")
    @Nullable
    private final BaseBoolInt editTitle;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35836id;
    @SerializedName("image_processing")
    @Nullable
    private final BaseBoolInt imageProcessing;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("photo_100")
    @Nullable
    private final String photo100;
    @SerializedName("photo_50")
    @Nullable
    private final String photo50;
    @SerializedName("url")
    @Nullable
    private final String url;

    public GroupsLinksItem() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public GroupsLinksItem(@Nullable String str, @Nullable String str2, @Nullable BaseBoolInt baseBoolInt, @Nullable Integer num, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable BaseBoolInt baseBoolInt2) {
        this.name = str;
        this.desc = str2;
        this.editTitle = baseBoolInt;
        this.f35836id = num;
        this.photo100 = str3;
        this.photo50 = str4;
        this.url = str5;
        this.imageProcessing = baseBoolInt2;
    }

    @Nullable
    public final String component1() {
        return this.name;
    }

    @Nullable
    public final String component2() {
        return this.desc;
    }

    @Nullable
    public final BaseBoolInt component3() {
        return this.editTitle;
    }

    @Nullable
    public final Integer component4() {
        return this.f35836id;
    }

    @Nullable
    public final String component5() {
        return this.photo100;
    }

    @Nullable
    public final String component6() {
        return this.photo50;
    }

    @Nullable
    public final String component7() {
        return this.url;
    }

    @Nullable
    public final BaseBoolInt component8() {
        return this.imageProcessing;
    }

    @NotNull
    public final GroupsLinksItem copy(@Nullable String str, @Nullable String str2, @Nullable BaseBoolInt baseBoolInt, @Nullable Integer num, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable BaseBoolInt baseBoolInt2) {
        return new GroupsLinksItem(str, str2, baseBoolInt, num, str3, str4, str5, baseBoolInt2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsLinksItem) {
            GroupsLinksItem groupsLinksItem = (GroupsLinksItem) obj;
            return Intrinsics.areEqual(this.name, groupsLinksItem.name) && Intrinsics.areEqual(this.desc, groupsLinksItem.desc) && this.editTitle == groupsLinksItem.editTitle && Intrinsics.areEqual(this.f35836id, groupsLinksItem.f35836id) && Intrinsics.areEqual(this.photo100, groupsLinksItem.photo100) && Intrinsics.areEqual(this.photo50, groupsLinksItem.photo50) && Intrinsics.areEqual(this.url, groupsLinksItem.url) && this.imageProcessing == groupsLinksItem.imageProcessing;
        }
        return false;
    }

    @Nullable
    public final String getDesc() {
        return this.desc;
    }

    @Nullable
    public final BaseBoolInt getEditTitle() {
        return this.editTitle;
    }

    @Nullable
    public final Integer getId() {
        return this.f35836id;
    }

    @Nullable
    public final BaseBoolInt getImageProcessing() {
        return this.imageProcessing;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getPhoto100() {
        return this.photo100;
    }

    @Nullable
    public final String getPhoto50() {
        return this.photo50;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.name;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.desc;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.editTitle;
        int hashCode3 = (hashCode2 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        Integer num = this.f35836id;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.photo100;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.photo50;
        int hashCode6 = (hashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.url;
        int hashCode7 = (hashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.imageProcessing;
        return hashCode7 + (baseBoolInt2 != null ? baseBoolInt2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.name;
        String str2 = this.desc;
        BaseBoolInt baseBoolInt = this.editTitle;
        Integer num = this.f35836id;
        String str3 = this.photo100;
        String str4 = this.photo50;
        String str5 = this.url;
        BaseBoolInt baseBoolInt2 = this.imageProcessing;
        return "GroupsLinksItem(name=" + str + ", desc=" + str2 + ", editTitle=" + baseBoolInt + ", id=" + num + ", photo100=" + str3 + ", photo50=" + str4 + ", url=" + str5 + ", imageProcessing=" + baseBoolInt2 + ")";
    }

    public /* synthetic */ GroupsLinksItem(String str, String str2, BaseBoolInt baseBoolInt, Integer num, String str3, String str4, String str5, BaseBoolInt baseBoolInt2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : str2, (i9 & 4) != 0 ? null : baseBoolInt, (i9 & 8) != 0 ? null : num, (i9 & 16) != 0 ? null : str3, (i9 & 32) != 0 ? null : str4, (i9 & 64) != 0 ? null : str5, (i9 & 128) == 0 ? baseBoolInt2 : null);
    }
}
