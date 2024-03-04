package com.vk.sdk.api.notifications.dto;

import com.google.gson.annotations.SerializedName;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tencent.ugc.datereport.UGCDataReportDef;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.apps.dto.AppsApp;
import com.vk.sdk.api.groups.dto.GroupsGroup;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import com.vk.sdk.api.users.dto.UsersUser;
import com.vk.sdk.api.video.dto.VideoVideo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B¡\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J\u0011\u0010&\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0011\u0010'\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003J\u0011\u0010(\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005HÆ\u0003J\u0010\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J\u0011\u0010*\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0005HÆ\u0003J\u0011\u0010+\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0005HÆ\u0003J\u0011\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0005HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0013HÆ\u0003Jª\u0001\u0010.\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00052\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00052\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00052\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00052\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010/J\u0013\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00103\u001a\u00020\u0003HÖ\u0001J\t\u00104\u001a\u00020\u0013HÖ\u0001R\u001e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u001d\u0010\u0019R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u001e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0017R\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0017R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\"\u0010\u0019R\u001e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0017¨\u00065"}, d2 = {"Lcom/vk/sdk/api/notifications/dto/NotificationsGetResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/notifications/dto/NotificationsNotificationItem;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUser;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroup;", "lastViewed", "photos", "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "videos", "Lcom/vk/sdk/api/video/dto/VideoVideo;", "apps", "Lcom/vk/sdk/api/apps/dto/AppsApp;", "nextFrom", "", RemoteMessageConst.TTL, "(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V", "getApps", "()Ljava/util/List;", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getGroups", "getItems", "getLastViewed", "getNextFrom", "()Ljava/lang/String;", "getPhotos", "getProfiles", "getTtl", "getVideos", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/sdk/api/notifications/dto/NotificationsGetResponse;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NotificationsGetResponse {
    @SerializedName("apps")
    @Nullable
    private final List<AppsApp> apps;
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroup> groups;
    @SerializedName("items")
    @Nullable
    private final List<NotificationsNotificationItem> items;
    @SerializedName("last_viewed")
    @Nullable
    private final Integer lastViewed;
    @SerializedName("next_from")
    @Nullable
    private final String nextFrom;
    @SerializedName("photos")
    @Nullable
    private final List<PhotosPhoto> photos;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUser> profiles;
    @SerializedName(RemoteMessageConst.TTL)
    @Nullable
    private final Integer ttl;
    @SerializedName("videos")
    @Nullable
    private final List<VideoVideo> videos;

    public NotificationsGetResponse() {
        this(null, null, null, null, null, null, null, null, null, null, UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER, null);
    }

    public NotificationsGetResponse(@Nullable Integer num, @Nullable List<NotificationsNotificationItem> list, @Nullable List<UsersUser> list2, @Nullable List<GroupsGroup> list3, @Nullable Integer num2, @Nullable List<PhotosPhoto> list4, @Nullable List<VideoVideo> list5, @Nullable List<AppsApp> list6, @Nullable String str, @Nullable Integer num3) {
        this.count = num;
        this.items = list;
        this.profiles = list2;
        this.groups = list3;
        this.lastViewed = num2;
        this.photos = list4;
        this.videos = list5;
        this.apps = list6;
        this.nextFrom = str;
        this.ttl = num3;
    }

    @Nullable
    public final Integer component1() {
        return this.count;
    }

    @Nullable
    public final Integer component10() {
        return this.ttl;
    }

    @Nullable
    public final List<NotificationsNotificationItem> component2() {
        return this.items;
    }

    @Nullable
    public final List<UsersUser> component3() {
        return this.profiles;
    }

    @Nullable
    public final List<GroupsGroup> component4() {
        return this.groups;
    }

    @Nullable
    public final Integer component5() {
        return this.lastViewed;
    }

    @Nullable
    public final List<PhotosPhoto> component6() {
        return this.photos;
    }

    @Nullable
    public final List<VideoVideo> component7() {
        return this.videos;
    }

    @Nullable
    public final List<AppsApp> component8() {
        return this.apps;
    }

    @Nullable
    public final String component9() {
        return this.nextFrom;
    }

    @NotNull
    public final NotificationsGetResponse copy(@Nullable Integer num, @Nullable List<NotificationsNotificationItem> list, @Nullable List<UsersUser> list2, @Nullable List<GroupsGroup> list3, @Nullable Integer num2, @Nullable List<PhotosPhoto> list4, @Nullable List<VideoVideo> list5, @Nullable List<AppsApp> list6, @Nullable String str, @Nullable Integer num3) {
        return new NotificationsGetResponse(num, list, list2, list3, num2, list4, list5, list6, str, num3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NotificationsGetResponse) {
            NotificationsGetResponse notificationsGetResponse = (NotificationsGetResponse) obj;
            return Intrinsics.areEqual(this.count, notificationsGetResponse.count) && Intrinsics.areEqual(this.items, notificationsGetResponse.items) && Intrinsics.areEqual(this.profiles, notificationsGetResponse.profiles) && Intrinsics.areEqual(this.groups, notificationsGetResponse.groups) && Intrinsics.areEqual(this.lastViewed, notificationsGetResponse.lastViewed) && Intrinsics.areEqual(this.photos, notificationsGetResponse.photos) && Intrinsics.areEqual(this.videos, notificationsGetResponse.videos) && Intrinsics.areEqual(this.apps, notificationsGetResponse.apps) && Intrinsics.areEqual(this.nextFrom, notificationsGetResponse.nextFrom) && Intrinsics.areEqual(this.ttl, notificationsGetResponse.ttl);
        }
        return false;
    }

    @Nullable
    public final List<AppsApp> getApps() {
        return this.apps;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @Nullable
    public final List<GroupsGroup> getGroups() {
        return this.groups;
    }

    @Nullable
    public final List<NotificationsNotificationItem> getItems() {
        return this.items;
    }

    @Nullable
    public final Integer getLastViewed() {
        return this.lastViewed;
    }

    @Nullable
    public final String getNextFrom() {
        return this.nextFrom;
    }

    @Nullable
    public final List<PhotosPhoto> getPhotos() {
        return this.photos;
    }

    @Nullable
    public final List<UsersUser> getProfiles() {
        return this.profiles;
    }

    @Nullable
    public final Integer getTtl() {
        return this.ttl;
    }

    @Nullable
    public final List<VideoVideo> getVideos() {
        return this.videos;
    }

    public int hashCode() {
        Integer num = this.count;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        List<NotificationsNotificationItem> list = this.items;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<UsersUser> list2 = this.profiles;
        int hashCode3 = (hashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<GroupsGroup> list3 = this.groups;
        int hashCode4 = (hashCode3 + (list3 == null ? 0 : list3.hashCode())) * 31;
        Integer num2 = this.lastViewed;
        int hashCode5 = (hashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        List<PhotosPhoto> list4 = this.photos;
        int hashCode6 = (hashCode5 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<VideoVideo> list5 = this.videos;
        int hashCode7 = (hashCode6 + (list5 == null ? 0 : list5.hashCode())) * 31;
        List<AppsApp> list6 = this.apps;
        int hashCode8 = (hashCode7 + (list6 == null ? 0 : list6.hashCode())) * 31;
        String str = this.nextFrom;
        int hashCode9 = (hashCode8 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num3 = this.ttl;
        return hashCode9 + (num3 != null ? num3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.count;
        List<NotificationsNotificationItem> list = this.items;
        List<UsersUser> list2 = this.profiles;
        List<GroupsGroup> list3 = this.groups;
        Integer num2 = this.lastViewed;
        List<PhotosPhoto> list4 = this.photos;
        List<VideoVideo> list5 = this.videos;
        List<AppsApp> list6 = this.apps;
        String str = this.nextFrom;
        Integer num3 = this.ttl;
        return "NotificationsGetResponse(count=" + num + ", items=" + list + ", profiles=" + list2 + ", groups=" + list3 + ", lastViewed=" + num2 + ", photos=" + list4 + ", videos=" + list5 + ", apps=" + list6 + ", nextFrom=" + str + ", ttl=" + num3 + ")";
    }

    public /* synthetic */ NotificationsGetResponse(Integer num, List list, List list2, List list3, Integer num2, List list4, List list5, List list6, String str, Integer num3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : list, (i9 & 4) != 0 ? null : list2, (i9 & 8) != 0 ? null : list3, (i9 & 16) != 0 ? null : num2, (i9 & 32) != 0 ? null : list4, (i9 & 64) != 0 ? null : list5, (i9 & 128) != 0 ? null : list6, (i9 & 256) != 0 ? null : str, (i9 & 512) == 0 ? num3 : null);
    }
}
