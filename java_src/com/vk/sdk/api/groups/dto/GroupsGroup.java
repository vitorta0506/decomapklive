package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.video.dto.VideoLiveInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b;\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u00ad\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#¢\u0006\u0002\u0010$J\t\u0010C\u001a\u00020\u0003HÆ\u0003J\u0010\u0010D\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0002\u0010+J\u0010\u0010E\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0002\u0010+J\u000b\u0010F\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010 HÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010#HÆ\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\fHÆ\u0003J¸\u0002\u0010\\\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#HÆ\u0001¢\u0006\u0002\u0010]J\u0013\u0010^\u001a\u00020_2\b\u0010`\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010a\u001a\u00020\u0012HÖ\u0001J\t\u0010b\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010(R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010,\u001a\u0004\b*\u0010+R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010/R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010/R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u00100R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010/R\u0018\u0010!\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010/R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010(R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010(R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010(R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010(R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u0010(R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010(R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u0010(R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u0010(R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010(R\u0018\u0010\u001f\u001a\u0004\u0018\u00010 8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010;R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010(R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u0010(R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010,\u001a\u0004\b>\u0010+R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u0010@R\u0018\u0010\"\u001a\u0004\u0018\u00010#8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bA\u0010B¨\u0006c"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsGroup;", "", "id", "Lcom/vk/dto/common/id/UserId;", "name", "", "screenName", "isClosed", "Lcom/vk/sdk/api/groups/dto/GroupsGroupIsClosed;", "type", "Lcom/vk/sdk/api/groups/dto/GroupsGroupType;", "isAdmin", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "adminLevel", "Lcom/vk/sdk/api/groups/dto/GroupsGroupAdminLevel;", "isMember", "isAdvertiser", "startDate", "", "finishDate", "deactivated", "photo50", "photo100", "photo200", "photo200Orig", "photo400", "photo400Orig", "photoMax", "photoMaxOrig", "estDate", "publicDateLabel", "photoMaxSize", "Lcom/vk/sdk/api/groups/dto/GroupsPhotoSize;", "isVideoLiveNotificationsBlocked", "videoLive", "Lcom/vk/sdk/api/video/dto/VideoLiveInfo;", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGroupIsClosed;Lcom/vk/sdk/api/groups/dto/GroupsGroupType;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/groups/dto/GroupsGroupAdminLevel;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsPhotoSize;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/video/dto/VideoLiveInfo;)V", "getAdminLevel", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupAdminLevel;", "getDeactivated", "()Ljava/lang/String;", "getEstDate", "getFinishDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getId", "()Lcom/vk/dto/common/id/UserId;", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupIsClosed;", "getName", "getPhoto100", "getPhoto200", "getPhoto200Orig", "getPhoto400", "getPhoto400Orig", "getPhoto50", "getPhotoMax", "getPhotoMaxOrig", "getPhotoMaxSize", "()Lcom/vk/sdk/api/groups/dto/GroupsPhotoSize;", "getPublicDateLabel", "getScreenName", "getStartDate", "getType", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupType;", "getVideoLive", "()Lcom/vk/sdk/api/video/dto/VideoLiveInfo;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGroupIsClosed;Lcom/vk/sdk/api/groups/dto/GroupsGroupType;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/groups/dto/GroupsGroupAdminLevel;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsPhotoSize;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/video/dto/VideoLiveInfo;)Lcom/vk/sdk/api/groups/dto/GroupsGroup;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsGroup {
    @SerializedName("admin_level")
    @Nullable
    private final GroupsGroupAdminLevel adminLevel;
    @SerializedName("deactivated")
    @Nullable
    private final String deactivated;
    @SerializedName("est_date")
    @Nullable
    private final String estDate;
    @SerializedName("finish_date")
    @Nullable
    private final Integer finishDate;
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final UserId f35828id;
    @SerializedName("is_admin")
    @Nullable
    private final BaseBoolInt isAdmin;
    @SerializedName("is_advertiser")
    @Nullable
    private final BaseBoolInt isAdvertiser;
    @SerializedName("is_closed")
    @Nullable
    private final GroupsGroupIsClosed isClosed;
    @SerializedName("is_member")
    @Nullable
    private final BaseBoolInt isMember;
    @SerializedName("is_video_live_notifications_blocked")
    @Nullable
    private final BaseBoolInt isVideoLiveNotificationsBlocked;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("photo_100")
    @Nullable
    private final String photo100;
    @SerializedName("photo_200")
    @Nullable
    private final String photo200;
    @SerializedName("photo_200_orig")
    @Nullable
    private final String photo200Orig;
    @SerializedName("photo_400")
    @Nullable
    private final String photo400;
    @SerializedName("photo_400_orig")
    @Nullable
    private final String photo400Orig;
    @SerializedName("photo_50")
    @Nullable
    private final String photo50;
    @SerializedName("photo_max")
    @Nullable
    private final String photoMax;
    @SerializedName("photo_max_orig")
    @Nullable
    private final String photoMaxOrig;
    @SerializedName("photo_max_size")
    @Nullable
    private final GroupsPhotoSize photoMaxSize;
    @SerializedName("public_date_label")
    @Nullable
    private final String publicDateLabel;
    @SerializedName("screen_name")
    @Nullable
    private final String screenName;
    @SerializedName("start_date")
    @Nullable
    private final Integer startDate;
    @SerializedName("type")
    @Nullable
    private final GroupsGroupType type;
    @SerializedName("video_live")
    @Nullable
    private final VideoLiveInfo videoLive;

    public GroupsGroup(@NotNull UserId id2, @Nullable String str, @Nullable String str2, @Nullable GroupsGroupIsClosed groupsGroupIsClosed, @Nullable GroupsGroupType groupsGroupType, @Nullable BaseBoolInt baseBoolInt, @Nullable GroupsGroupAdminLevel groupsGroupAdminLevel, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable Integer num, @Nullable Integer num2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable String str13, @Nullable GroupsPhotoSize groupsPhotoSize, @Nullable BaseBoolInt baseBoolInt4, @Nullable VideoLiveInfo videoLiveInfo) {
        Intrinsics.checkNotNullParameter(id2, "id");
        this.f35828id = id2;
        this.name = str;
        this.screenName = str2;
        this.isClosed = groupsGroupIsClosed;
        this.type = groupsGroupType;
        this.isAdmin = baseBoolInt;
        this.adminLevel = groupsGroupAdminLevel;
        this.isMember = baseBoolInt2;
        this.isAdvertiser = baseBoolInt3;
        this.startDate = num;
        this.finishDate = num2;
        this.deactivated = str3;
        this.photo50 = str4;
        this.photo100 = str5;
        this.photo200 = str6;
        this.photo200Orig = str7;
        this.photo400 = str8;
        this.photo400Orig = str9;
        this.photoMax = str10;
        this.photoMaxOrig = str11;
        this.estDate = str12;
        this.publicDateLabel = str13;
        this.photoMaxSize = groupsPhotoSize;
        this.isVideoLiveNotificationsBlocked = baseBoolInt4;
        this.videoLive = videoLiveInfo;
    }

    @NotNull
    public final UserId component1() {
        return this.f35828id;
    }

    @Nullable
    public final Integer component10() {
        return this.startDate;
    }

    @Nullable
    public final Integer component11() {
        return this.finishDate;
    }

    @Nullable
    public final String component12() {
        return this.deactivated;
    }

    @Nullable
    public final String component13() {
        return this.photo50;
    }

    @Nullable
    public final String component14() {
        return this.photo100;
    }

    @Nullable
    public final String component15() {
        return this.photo200;
    }

    @Nullable
    public final String component16() {
        return this.photo200Orig;
    }

    @Nullable
    public final String component17() {
        return this.photo400;
    }

    @Nullable
    public final String component18() {
        return this.photo400Orig;
    }

    @Nullable
    public final String component19() {
        return this.photoMax;
    }

    @Nullable
    public final String component2() {
        return this.name;
    }

    @Nullable
    public final String component20() {
        return this.photoMaxOrig;
    }

    @Nullable
    public final String component21() {
        return this.estDate;
    }

    @Nullable
    public final String component22() {
        return this.publicDateLabel;
    }

    @Nullable
    public final GroupsPhotoSize component23() {
        return this.photoMaxSize;
    }

    @Nullable
    public final BaseBoolInt component24() {
        return this.isVideoLiveNotificationsBlocked;
    }

    @Nullable
    public final VideoLiveInfo component25() {
        return this.videoLive;
    }

    @Nullable
    public final String component3() {
        return this.screenName;
    }

    @Nullable
    public final GroupsGroupIsClosed component4() {
        return this.isClosed;
    }

    @Nullable
    public final GroupsGroupType component5() {
        return this.type;
    }

    @Nullable
    public final BaseBoolInt component6() {
        return this.isAdmin;
    }

    @Nullable
    public final GroupsGroupAdminLevel component7() {
        return this.adminLevel;
    }

    @Nullable
    public final BaseBoolInt component8() {
        return this.isMember;
    }

    @Nullable
    public final BaseBoolInt component9() {
        return this.isAdvertiser;
    }

    @NotNull
    public final GroupsGroup copy(@NotNull UserId id2, @Nullable String str, @Nullable String str2, @Nullable GroupsGroupIsClosed groupsGroupIsClosed, @Nullable GroupsGroupType groupsGroupType, @Nullable BaseBoolInt baseBoolInt, @Nullable GroupsGroupAdminLevel groupsGroupAdminLevel, @Nullable BaseBoolInt baseBoolInt2, @Nullable BaseBoolInt baseBoolInt3, @Nullable Integer num, @Nullable Integer num2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable String str13, @Nullable GroupsPhotoSize groupsPhotoSize, @Nullable BaseBoolInt baseBoolInt4, @Nullable VideoLiveInfo videoLiveInfo) {
        Intrinsics.checkNotNullParameter(id2, "id");
        return new GroupsGroup(id2, str, str2, groupsGroupIsClosed, groupsGroupType, baseBoolInt, groupsGroupAdminLevel, baseBoolInt2, baseBoolInt3, num, num2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, groupsPhotoSize, baseBoolInt4, videoLiveInfo);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsGroup) {
            GroupsGroup groupsGroup = (GroupsGroup) obj;
            return Intrinsics.areEqual(this.f35828id, groupsGroup.f35828id) && Intrinsics.areEqual(this.name, groupsGroup.name) && Intrinsics.areEqual(this.screenName, groupsGroup.screenName) && this.isClosed == groupsGroup.isClosed && this.type == groupsGroup.type && this.isAdmin == groupsGroup.isAdmin && this.adminLevel == groupsGroup.adminLevel && this.isMember == groupsGroup.isMember && this.isAdvertiser == groupsGroup.isAdvertiser && Intrinsics.areEqual(this.startDate, groupsGroup.startDate) && Intrinsics.areEqual(this.finishDate, groupsGroup.finishDate) && Intrinsics.areEqual(this.deactivated, groupsGroup.deactivated) && Intrinsics.areEqual(this.photo50, groupsGroup.photo50) && Intrinsics.areEqual(this.photo100, groupsGroup.photo100) && Intrinsics.areEqual(this.photo200, groupsGroup.photo200) && Intrinsics.areEqual(this.photo200Orig, groupsGroup.photo200Orig) && Intrinsics.areEqual(this.photo400, groupsGroup.photo400) && Intrinsics.areEqual(this.photo400Orig, groupsGroup.photo400Orig) && Intrinsics.areEqual(this.photoMax, groupsGroup.photoMax) && Intrinsics.areEqual(this.photoMaxOrig, groupsGroup.photoMaxOrig) && Intrinsics.areEqual(this.estDate, groupsGroup.estDate) && Intrinsics.areEqual(this.publicDateLabel, groupsGroup.publicDateLabel) && Intrinsics.areEqual(this.photoMaxSize, groupsGroup.photoMaxSize) && this.isVideoLiveNotificationsBlocked == groupsGroup.isVideoLiveNotificationsBlocked && Intrinsics.areEqual(this.videoLive, groupsGroup.videoLive);
        }
        return false;
    }

    @Nullable
    public final GroupsGroupAdminLevel getAdminLevel() {
        return this.adminLevel;
    }

    @Nullable
    public final String getDeactivated() {
        return this.deactivated;
    }

    @Nullable
    public final String getEstDate() {
        return this.estDate;
    }

    @Nullable
    public final Integer getFinishDate() {
        return this.finishDate;
    }

    @NotNull
    public final UserId getId() {
        return this.f35828id;
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
    public final String getPhoto200() {
        return this.photo200;
    }

    @Nullable
    public final String getPhoto200Orig() {
        return this.photo200Orig;
    }

    @Nullable
    public final String getPhoto400() {
        return this.photo400;
    }

    @Nullable
    public final String getPhoto400Orig() {
        return this.photo400Orig;
    }

    @Nullable
    public final String getPhoto50() {
        return this.photo50;
    }

    @Nullable
    public final String getPhotoMax() {
        return this.photoMax;
    }

    @Nullable
    public final String getPhotoMaxOrig() {
        return this.photoMaxOrig;
    }

    @Nullable
    public final GroupsPhotoSize getPhotoMaxSize() {
        return this.photoMaxSize;
    }

    @Nullable
    public final String getPublicDateLabel() {
        return this.publicDateLabel;
    }

    @Nullable
    public final String getScreenName() {
        return this.screenName;
    }

    @Nullable
    public final Integer getStartDate() {
        return this.startDate;
    }

    @Nullable
    public final GroupsGroupType getType() {
        return this.type;
    }

    @Nullable
    public final VideoLiveInfo getVideoLive() {
        return this.videoLive;
    }

    public int hashCode() {
        int hashCode = this.f35828id.hashCode() * 31;
        String str = this.name;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.screenName;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        GroupsGroupIsClosed groupsGroupIsClosed = this.isClosed;
        int hashCode4 = (hashCode3 + (groupsGroupIsClosed == null ? 0 : groupsGroupIsClosed.hashCode())) * 31;
        GroupsGroupType groupsGroupType = this.type;
        int hashCode5 = (hashCode4 + (groupsGroupType == null ? 0 : groupsGroupType.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.isAdmin;
        int hashCode6 = (hashCode5 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        GroupsGroupAdminLevel groupsGroupAdminLevel = this.adminLevel;
        int hashCode7 = (hashCode6 + (groupsGroupAdminLevel == null ? 0 : groupsGroupAdminLevel.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.isMember;
        int hashCode8 = (hashCode7 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        BaseBoolInt baseBoolInt3 = this.isAdvertiser;
        int hashCode9 = (hashCode8 + (baseBoolInt3 == null ? 0 : baseBoolInt3.hashCode())) * 31;
        Integer num = this.startDate;
        int hashCode10 = (hashCode9 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.finishDate;
        int hashCode11 = (hashCode10 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str3 = this.deactivated;
        int hashCode12 = (hashCode11 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.photo50;
        int hashCode13 = (hashCode12 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.photo100;
        int hashCode14 = (hashCode13 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.photo200;
        int hashCode15 = (hashCode14 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.photo200Orig;
        int hashCode16 = (hashCode15 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.photo400;
        int hashCode17 = (hashCode16 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.photo400Orig;
        int hashCode18 = (hashCode17 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.photoMax;
        int hashCode19 = (hashCode18 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.photoMaxOrig;
        int hashCode20 = (hashCode19 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.estDate;
        int hashCode21 = (hashCode20 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.publicDateLabel;
        int hashCode22 = (hashCode21 + (str13 == null ? 0 : str13.hashCode())) * 31;
        GroupsPhotoSize groupsPhotoSize = this.photoMaxSize;
        int hashCode23 = (hashCode22 + (groupsPhotoSize == null ? 0 : groupsPhotoSize.hashCode())) * 31;
        BaseBoolInt baseBoolInt4 = this.isVideoLiveNotificationsBlocked;
        int hashCode24 = (hashCode23 + (baseBoolInt4 == null ? 0 : baseBoolInt4.hashCode())) * 31;
        VideoLiveInfo videoLiveInfo = this.videoLive;
        return hashCode24 + (videoLiveInfo != null ? videoLiveInfo.hashCode() : 0);
    }

    @Nullable
    public final BaseBoolInt isAdmin() {
        return this.isAdmin;
    }

    @Nullable
    public final BaseBoolInt isAdvertiser() {
        return this.isAdvertiser;
    }

    @Nullable
    public final GroupsGroupIsClosed isClosed() {
        return this.isClosed;
    }

    @Nullable
    public final BaseBoolInt isMember() {
        return this.isMember;
    }

    @Nullable
    public final BaseBoolInt isVideoLiveNotificationsBlocked() {
        return this.isVideoLiveNotificationsBlocked;
    }

    @NotNull
    public String toString() {
        UserId userId = this.f35828id;
        String str = this.name;
        String str2 = this.screenName;
        GroupsGroupIsClosed groupsGroupIsClosed = this.isClosed;
        GroupsGroupType groupsGroupType = this.type;
        BaseBoolInt baseBoolInt = this.isAdmin;
        GroupsGroupAdminLevel groupsGroupAdminLevel = this.adminLevel;
        BaseBoolInt baseBoolInt2 = this.isMember;
        BaseBoolInt baseBoolInt3 = this.isAdvertiser;
        Integer num = this.startDate;
        Integer num2 = this.finishDate;
        String str3 = this.deactivated;
        String str4 = this.photo50;
        String str5 = this.photo100;
        String str6 = this.photo200;
        String str7 = this.photo200Orig;
        String str8 = this.photo400;
        String str9 = this.photo400Orig;
        String str10 = this.photoMax;
        String str11 = this.photoMaxOrig;
        String str12 = this.estDate;
        String str13 = this.publicDateLabel;
        GroupsPhotoSize groupsPhotoSize = this.photoMaxSize;
        BaseBoolInt baseBoolInt4 = this.isVideoLiveNotificationsBlocked;
        VideoLiveInfo videoLiveInfo = this.videoLive;
        return "GroupsGroup(id=" + userId + ", name=" + str + ", screenName=" + str2 + ", isClosed=" + groupsGroupIsClosed + ", type=" + groupsGroupType + ", isAdmin=" + baseBoolInt + ", adminLevel=" + groupsGroupAdminLevel + ", isMember=" + baseBoolInt2 + ", isAdvertiser=" + baseBoolInt3 + ", startDate=" + num + ", finishDate=" + num2 + ", deactivated=" + str3 + ", photo50=" + str4 + ", photo100=" + str5 + ", photo200=" + str6 + ", photo200Orig=" + str7 + ", photo400=" + str8 + ", photo400Orig=" + str9 + ", photoMax=" + str10 + ", photoMaxOrig=" + str11 + ", estDate=" + str12 + ", publicDateLabel=" + str13 + ", photoMaxSize=" + groupsPhotoSize + ", isVideoLiveNotificationsBlocked=" + baseBoolInt4 + ", videoLive=" + videoLiveInfo + ")";
    }

    public /* synthetic */ GroupsGroup(UserId userId, String str, String str2, GroupsGroupIsClosed groupsGroupIsClosed, GroupsGroupType groupsGroupType, BaseBoolInt baseBoolInt, GroupsGroupAdminLevel groupsGroupAdminLevel, BaseBoolInt baseBoolInt2, BaseBoolInt baseBoolInt3, Integer num, Integer num2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, GroupsPhotoSize groupsPhotoSize, BaseBoolInt baseBoolInt4, VideoLiveInfo videoLiveInfo, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : groupsGroupIsClosed, (i9 & 16) != 0 ? null : groupsGroupType, (i9 & 32) != 0 ? null : baseBoolInt, (i9 & 64) != 0 ? null : groupsGroupAdminLevel, (i9 & 128) != 0 ? null : baseBoolInt2, (i9 & 256) != 0 ? null : baseBoolInt3, (i9 & 512) != 0 ? null : num, (i9 & 1024) != 0 ? null : num2, (i9 & 2048) != 0 ? null : str3, (i9 & 4096) != 0 ? null : str4, (i9 & 8192) != 0 ? null : str5, (i9 & 16384) != 0 ? null : str6, (i9 & 32768) != 0 ? null : str7, (i9 & 65536) != 0 ? null : str8, (i9 & 131072) != 0 ? null : str9, (i9 & 262144) != 0 ? null : str10, (i9 & 524288) != 0 ? null : str11, (i9 & 1048576) != 0 ? null : str12, (i9 & 2097152) != 0 ? null : str13, (i9 & 4194304) != 0 ? null : groupsPhotoSize, (i9 & 8388608) != 0 ? null : baseBoolInt4, (i9 & 16777216) == 0 ? videoLiveInfo : null);
    }
}
