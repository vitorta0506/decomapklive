package com.vk.sdk.api.notifications.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseGeo;
import com.vk.sdk.api.base.dto.BaseLikesInfo;
import com.vk.sdk.api.wall.dto.WallWallpostAttachment;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B_\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u000fJ\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010!\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\rHÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0013Jh\u0010$\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010%J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0006HÖ\u0001J\t\u0010*\u001a\u00020\rHÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0017\u0010\u0013R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u001c\u0010\u0013¨\u0006+"}, d2 = {"Lcom/vk/sdk/api/notifications/dto/NotificationsFeedback;", "", "attachments", "", "Lcom/vk/sdk/api/wall/dto/WallWallpostAttachment;", "fromId", "", "geo", "Lcom/vk/sdk/api/base/dto/BaseGeo;", "id", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", ViewHierarchyConstants.TEXT_KEY, "", "toId", "(Ljava/util/List;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseGeo;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;Ljava/lang/String;Ljava/lang/Integer;)V", "getAttachments", "()Ljava/util/List;", "getFromId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getGeo", "()Lcom/vk/sdk/api/base/dto/BaseGeo;", "getId", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "getText", "()Ljava/lang/String;", "getToId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/util/List;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseGeo;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/sdk/api/notifications/dto/NotificationsFeedback;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NotificationsFeedback {
    @SerializedName("attachments")
    @Nullable
    private final List<WallWallpostAttachment> attachments;
    @SerializedName("from_id")
    @Nullable
    private final Integer fromId;
    @SerializedName("geo")
    @Nullable
    private final BaseGeo geo;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35962id;
    @SerializedName("likes")
    @Nullable
    private final BaseLikesInfo likes;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @Nullable
    private final String text;
    @SerializedName("to_id")
    @Nullable
    private final Integer toId;

    public NotificationsFeedback() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public NotificationsFeedback(@Nullable List<WallWallpostAttachment> list, @Nullable Integer num, @Nullable BaseGeo baseGeo, @Nullable Integer num2, @Nullable BaseLikesInfo baseLikesInfo, @Nullable String str, @Nullable Integer num3) {
        this.attachments = list;
        this.fromId = num;
        this.geo = baseGeo;
        this.f35962id = num2;
        this.likes = baseLikesInfo;
        this.text = str;
        this.toId = num3;
    }

    public static /* synthetic */ NotificationsFeedback copy$default(NotificationsFeedback notificationsFeedback, List list, Integer num, BaseGeo baseGeo, Integer num2, BaseLikesInfo baseLikesInfo, String str, Integer num3, int i9, Object obj) {
        List<WallWallpostAttachment> list2 = list;
        if ((i9 & 1) != 0) {
            list2 = notificationsFeedback.attachments;
        }
        if ((i9 & 2) != 0) {
            num = notificationsFeedback.fromId;
        }
        Integer num4 = num;
        if ((i9 & 4) != 0) {
            baseGeo = notificationsFeedback.geo;
        }
        BaseGeo baseGeo2 = baseGeo;
        if ((i9 & 8) != 0) {
            num2 = notificationsFeedback.f35962id;
        }
        Integer num5 = num2;
        if ((i9 & 16) != 0) {
            baseLikesInfo = notificationsFeedback.likes;
        }
        BaseLikesInfo baseLikesInfo2 = baseLikesInfo;
        if ((i9 & 32) != 0) {
            str = notificationsFeedback.text;
        }
        String str2 = str;
        if ((i9 & 64) != 0) {
            num3 = notificationsFeedback.toId;
        }
        return notificationsFeedback.copy(list2, num4, baseGeo2, num5, baseLikesInfo2, str2, num3);
    }

    @Nullable
    public final List<WallWallpostAttachment> component1() {
        return this.attachments;
    }

    @Nullable
    public final Integer component2() {
        return this.fromId;
    }

    @Nullable
    public final BaseGeo component3() {
        return this.geo;
    }

    @Nullable
    public final Integer component4() {
        return this.f35962id;
    }

    @Nullable
    public final BaseLikesInfo component5() {
        return this.likes;
    }

    @Nullable
    public final String component6() {
        return this.text;
    }

    @Nullable
    public final Integer component7() {
        return this.toId;
    }

    @NotNull
    public final NotificationsFeedback copy(@Nullable List<WallWallpostAttachment> list, @Nullable Integer num, @Nullable BaseGeo baseGeo, @Nullable Integer num2, @Nullable BaseLikesInfo baseLikesInfo, @Nullable String str, @Nullable Integer num3) {
        return new NotificationsFeedback(list, num, baseGeo, num2, baseLikesInfo, str, num3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NotificationsFeedback) {
            NotificationsFeedback notificationsFeedback = (NotificationsFeedback) obj;
            return Intrinsics.areEqual(this.attachments, notificationsFeedback.attachments) && Intrinsics.areEqual(this.fromId, notificationsFeedback.fromId) && Intrinsics.areEqual(this.geo, notificationsFeedback.geo) && Intrinsics.areEqual(this.f35962id, notificationsFeedback.f35962id) && Intrinsics.areEqual(this.likes, notificationsFeedback.likes) && Intrinsics.areEqual(this.text, notificationsFeedback.text) && Intrinsics.areEqual(this.toId, notificationsFeedback.toId);
        }
        return false;
    }

    @Nullable
    public final List<WallWallpostAttachment> getAttachments() {
        return this.attachments;
    }

    @Nullable
    public final Integer getFromId() {
        return this.fromId;
    }

    @Nullable
    public final BaseGeo getGeo() {
        return this.geo;
    }

    @Nullable
    public final Integer getId() {
        return this.f35962id;
    }

    @Nullable
    public final BaseLikesInfo getLikes() {
        return this.likes;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    @Nullable
    public final Integer getToId() {
        return this.toId;
    }

    public int hashCode() {
        List<WallWallpostAttachment> list = this.attachments;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        Integer num = this.fromId;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        BaseGeo baseGeo = this.geo;
        int hashCode3 = (hashCode2 + (baseGeo == null ? 0 : baseGeo.hashCode())) * 31;
        Integer num2 = this.f35962id;
        int hashCode4 = (hashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        BaseLikesInfo baseLikesInfo = this.likes;
        int hashCode5 = (hashCode4 + (baseLikesInfo == null ? 0 : baseLikesInfo.hashCode())) * 31;
        String str = this.text;
        int hashCode6 = (hashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num3 = this.toId;
        return hashCode6 + (num3 != null ? num3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<WallWallpostAttachment> list = this.attachments;
        Integer num = this.fromId;
        BaseGeo baseGeo = this.geo;
        Integer num2 = this.f35962id;
        BaseLikesInfo baseLikesInfo = this.likes;
        String str = this.text;
        Integer num3 = this.toId;
        return "NotificationsFeedback(attachments=" + list + ", fromId=" + num + ", geo=" + baseGeo + ", id=" + num2 + ", likes=" + baseLikesInfo + ", text=" + str + ", toId=" + num3 + ")";
    }

    public /* synthetic */ NotificationsFeedback(List list, Integer num, BaseGeo baseGeo, Integer num2, BaseLikesInfo baseLikesInfo, String str, Integer num3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : baseGeo, (i9 & 8) != 0 ? null : num2, (i9 & 16) != 0 ? null : baseLikesInfo, (i9 & 32) != 0 ? null : str, (i9 & 64) != 0 ? null : num3);
    }
}
