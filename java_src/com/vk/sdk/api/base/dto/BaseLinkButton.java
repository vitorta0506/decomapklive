package com.vk.sdk.api.base.dto;

import androidx.core.app.FrameMetricsAggregator;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.google.gson.annotations.SerializedName;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bq\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010$\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010%\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010&\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u000fHÆ\u0003Jz\u0010)\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÆ\u0001¢\u0006\u0002\u0010*J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\tHÖ\u0001J\t\u0010/\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0018\u0010\u0014R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0017¨\u00060"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "", NativeProtocol.WEB_DIALOG_ACTION, "Lcom/vk/sdk/api/base/dto/BaseLinkButtonAction;", "title", "", "blockId", "sectionId", "curatorId", "", "albumId", "ownerId", "Lcom/vk/dto/common/id/UserId;", RemoteMessageConst.Notification.ICON, AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, "Lcom/vk/sdk/api/base/dto/BaseLinkButtonStyle;", "(Lcom/vk/sdk/api/base/dto/BaseLinkButtonAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButtonStyle;)V", "getAction", "()Lcom/vk/sdk/api/base/dto/BaseLinkButtonAction;", "getAlbumId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getBlockId", "()Ljava/lang/String;", "getCuratorId", "getIcon", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getSectionId", "getStyle", "()Lcom/vk/sdk/api/base/dto/BaseLinkButtonStyle;", "getTitle", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/sdk/api/base/dto/BaseLinkButtonAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButtonStyle;)Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseLinkButton {
    @SerializedName(NativeProtocol.WEB_DIALOG_ACTION)
    @Nullable
    private final BaseLinkButtonAction action;
    @SerializedName("album_id")
    @Nullable
    private final Integer albumId;
    @SerializedName("block_id")
    @Nullable
    private final String blockId;
    @SerializedName("curator_id")
    @Nullable
    private final Integer curatorId;
    @SerializedName(RemoteMessageConst.Notification.ICON)
    @Nullable
    private final String icon;
    @SerializedName("owner_id")
    @Nullable
    private final UserId ownerId;
    @SerializedName("section_id")
    @Nullable
    private final String sectionId;
    @SerializedName(AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE)
    @Nullable
    private final BaseLinkButtonStyle style;
    @SerializedName("title")
    @Nullable
    private final String title;

    public BaseLinkButton() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public BaseLinkButton(@Nullable BaseLinkButtonAction baseLinkButtonAction, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable Integer num2, @Nullable UserId userId, @Nullable String str4, @Nullable BaseLinkButtonStyle baseLinkButtonStyle) {
        this.action = baseLinkButtonAction;
        this.title = str;
        this.blockId = str2;
        this.sectionId = str3;
        this.curatorId = num;
        this.albumId = num2;
        this.ownerId = userId;
        this.icon = str4;
        this.style = baseLinkButtonStyle;
    }

    @Nullable
    public final BaseLinkButtonAction component1() {
        return this.action;
    }

    @Nullable
    public final String component2() {
        return this.title;
    }

    @Nullable
    public final String component3() {
        return this.blockId;
    }

    @Nullable
    public final String component4() {
        return this.sectionId;
    }

    @Nullable
    public final Integer component5() {
        return this.curatorId;
    }

    @Nullable
    public final Integer component6() {
        return this.albumId;
    }

    @Nullable
    public final UserId component7() {
        return this.ownerId;
    }

    @Nullable
    public final String component8() {
        return this.icon;
    }

    @Nullable
    public final BaseLinkButtonStyle component9() {
        return this.style;
    }

    @NotNull
    public final BaseLinkButton copy(@Nullable BaseLinkButtonAction baseLinkButtonAction, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable Integer num2, @Nullable UserId userId, @Nullable String str4, @Nullable BaseLinkButtonStyle baseLinkButtonStyle) {
        return new BaseLinkButton(baseLinkButtonAction, str, str2, str3, num, num2, userId, str4, baseLinkButtonStyle);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseLinkButton) {
            BaseLinkButton baseLinkButton = (BaseLinkButton) obj;
            return Intrinsics.areEqual(this.action, baseLinkButton.action) && Intrinsics.areEqual(this.title, baseLinkButton.title) && Intrinsics.areEqual(this.blockId, baseLinkButton.blockId) && Intrinsics.areEqual(this.sectionId, baseLinkButton.sectionId) && Intrinsics.areEqual(this.curatorId, baseLinkButton.curatorId) && Intrinsics.areEqual(this.albumId, baseLinkButton.albumId) && Intrinsics.areEqual(this.ownerId, baseLinkButton.ownerId) && Intrinsics.areEqual(this.icon, baseLinkButton.icon) && this.style == baseLinkButton.style;
        }
        return false;
    }

    @Nullable
    public final BaseLinkButtonAction getAction() {
        return this.action;
    }

    @Nullable
    public final Integer getAlbumId() {
        return this.albumId;
    }

    @Nullable
    public final String getBlockId() {
        return this.blockId;
    }

    @Nullable
    public final Integer getCuratorId() {
        return this.curatorId;
    }

    @Nullable
    public final String getIcon() {
        return this.icon;
    }

    @Nullable
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final String getSectionId() {
        return this.sectionId;
    }

    @Nullable
    public final BaseLinkButtonStyle getStyle() {
        return this.style;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        BaseLinkButtonAction baseLinkButtonAction = this.action;
        int hashCode = (baseLinkButtonAction == null ? 0 : baseLinkButtonAction.hashCode()) * 31;
        String str = this.title;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.blockId;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.sectionId;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.curatorId;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.albumId;
        int hashCode6 = (hashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
        UserId userId = this.ownerId;
        int hashCode7 = (hashCode6 + (userId == null ? 0 : userId.hashCode())) * 31;
        String str4 = this.icon;
        int hashCode8 = (hashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        BaseLinkButtonStyle baseLinkButtonStyle = this.style;
        return hashCode8 + (baseLinkButtonStyle != null ? baseLinkButtonStyle.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        BaseLinkButtonAction baseLinkButtonAction = this.action;
        String str = this.title;
        String str2 = this.blockId;
        String str3 = this.sectionId;
        Integer num = this.curatorId;
        Integer num2 = this.albumId;
        UserId userId = this.ownerId;
        String str4 = this.icon;
        BaseLinkButtonStyle baseLinkButtonStyle = this.style;
        return "BaseLinkButton(action=" + baseLinkButtonAction + ", title=" + str + ", blockId=" + str2 + ", sectionId=" + str3 + ", curatorId=" + num + ", albumId=" + num2 + ", ownerId=" + userId + ", icon=" + str4 + ", style=" + baseLinkButtonStyle + ")";
    }

    public /* synthetic */ BaseLinkButton(BaseLinkButtonAction baseLinkButtonAction, String str, String str2, String str3, Integer num, Integer num2, UserId userId, String str4, BaseLinkButtonStyle baseLinkButtonStyle, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : baseLinkButtonAction, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : str3, (i9 & 16) != 0 ? null : num, (i9 & 32) != 0 ? null : num2, (i9 & 64) != 0 ? null : userId, (i9 & 128) != 0 ? null : str4, (i9 & 256) == 0 ? baseLinkButtonStyle : null);
    }
}
