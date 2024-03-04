package com.vk.sdk.api.stories.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.groups.dto.GroupsGroup;
import com.vk.sdk.api.users.dto.UsersUserFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u0014JX\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00052\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011¨\u0006#"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesGetV5113Response;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/stories/dto/StoriesFeedItem;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroup;", "needUploadScreen", "", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)V", "getCount", "()I", "getGroups", "()Ljava/util/List;", "getItems", "getNeedUploadScreen", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getProfiles", "component1", "component2", "component3", "component4", "component5", "copy", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)Lcom/vk/sdk/api/stories/dto/StoriesGetV5113Response;", "equals", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesGetV5113Response {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroup> groups;
    @SerializedName("items")
    @NotNull
    private final List<StoriesFeedItem> items;
    @SerializedName("need_upload_screen")
    @Nullable
    private final Boolean needUploadScreen;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUserFull> profiles;

    public StoriesGetV5113Response(int i9, @NotNull List<StoriesFeedItem> items, @Nullable List<UsersUserFull> list, @Nullable List<GroupsGroup> list2, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.count = i9;
        this.items = items;
        this.profiles = list;
        this.groups = list2;
        this.needUploadScreen = bool;
    }

    public static /* synthetic */ StoriesGetV5113Response copy$default(StoriesGetV5113Response storiesGetV5113Response, int i9, List list, List list2, List list3, Boolean bool, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = storiesGetV5113Response.count;
        }
        List<StoriesFeedItem> list4 = list;
        if ((i10 & 2) != 0) {
            list4 = storiesGetV5113Response.items;
        }
        List list5 = list4;
        List<UsersUserFull> list6 = list2;
        if ((i10 & 4) != 0) {
            list6 = storiesGetV5113Response.profiles;
        }
        List list7 = list6;
        List<GroupsGroup> list8 = list3;
        if ((i10 & 8) != 0) {
            list8 = storiesGetV5113Response.groups;
        }
        List list9 = list8;
        if ((i10 & 16) != 0) {
            bool = storiesGetV5113Response.needUploadScreen;
        }
        return storiesGetV5113Response.copy(i9, list5, list7, list9, bool);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<StoriesFeedItem> component2() {
        return this.items;
    }

    @Nullable
    public final List<UsersUserFull> component3() {
        return this.profiles;
    }

    @Nullable
    public final List<GroupsGroup> component4() {
        return this.groups;
    }

    @Nullable
    public final Boolean component5() {
        return this.needUploadScreen;
    }

    @NotNull
    public final StoriesGetV5113Response copy(int i9, @NotNull List<StoriesFeedItem> items, @Nullable List<UsersUserFull> list, @Nullable List<GroupsGroup> list2, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new StoriesGetV5113Response(i9, items, list, list2, bool);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoriesGetV5113Response) {
            StoriesGetV5113Response storiesGetV5113Response = (StoriesGetV5113Response) obj;
            return this.count == storiesGetV5113Response.count && Intrinsics.areEqual(this.items, storiesGetV5113Response.items) && Intrinsics.areEqual(this.profiles, storiesGetV5113Response.profiles) && Intrinsics.areEqual(this.groups, storiesGetV5113Response.groups) && Intrinsics.areEqual(this.needUploadScreen, storiesGetV5113Response.needUploadScreen);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @Nullable
    public final List<GroupsGroup> getGroups() {
        return this.groups;
    }

    @NotNull
    public final List<StoriesFeedItem> getItems() {
        return this.items;
    }

    @Nullable
    public final Boolean getNeedUploadScreen() {
        return this.needUploadScreen;
    }

    @Nullable
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        int hashCode = ((this.count * 31) + this.items.hashCode()) * 31;
        List<UsersUserFull> list = this.profiles;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<GroupsGroup> list2 = this.groups;
        int hashCode3 = (hashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Boolean bool = this.needUploadScreen;
        return hashCode3 + (bool != null ? bool.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<StoriesFeedItem> list = this.items;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroup> list3 = this.groups;
        Boolean bool = this.needUploadScreen;
        return "StoriesGetV5113Response(count=" + i9 + ", items=" + list + ", profiles=" + list2 + ", groups=" + list3 + ", needUploadScreen=" + bool + ")";
    }

    public /* synthetic */ StoriesGetV5113Response(int i9, List list, List list2, List list3, Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, list, (i10 & 4) != 0 ? null : list2, (i10 & 8) != 0 ? null : list3, (i10 & 16) != 0 ? null : bool);
    }
}
