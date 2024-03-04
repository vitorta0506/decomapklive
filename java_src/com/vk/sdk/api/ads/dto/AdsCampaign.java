package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b/\b\u0086\b\u0018\u00002\u00020\u0001B\u0099\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0016J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010/\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u00100\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u00101\u001a\u0004\u0018\u00010\u0013HÆ\u0003¢\u0006\u0002\u0010!J\u0010\u00102\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u00103\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0018J\t\u00104\u001a\u00020\u0003HÆ\u0003J\t\u00105\u001a\u00020\u0006HÆ\u0003J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0006HÆ\u0003J\t\u00108\u001a\u00020\nHÆ\u0003J\t\u00109\u001a\u00020\u0006HÆ\u0003J\t\u0010:\u001a\u00020\rHÆ\u0003J\u0010\u0010;\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0018J²\u0001\u0010<\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010=J\u0013\u0010>\u001a\u00020\u00132\b\u0010?\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010@\u001a\u00020\u0006HÖ\u0001J\t\u0010A\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001c\u0010\u0018R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001bR\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001e\u0010\u0018R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b\u0012\u0010!R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001bR\u0016\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010 R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0016\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010 R\u0016\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b*\u0010\u0018R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b+\u0010\u0018R\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b,\u0010\u0018¨\u0006B"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsCampaign;", "", "allLimit", "", "dayLimit", "id", "", "name", "startTime", "status", "Lcom/vk/sdk/api/ads/dto/AdsCampaignStatus;", "stopTime", "type", "Lcom/vk/sdk/api/ads/dto/AdsCampaignType;", "adsCount", "createTime", "goalType", "userGoalType", "isCboEnabled", "", "updateTime", "viewsLimit", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/vk/sdk/api/ads/dto/AdsCampaignStatus;ILcom/vk/sdk/api/ads/dto/AdsCampaignType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getAdsCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getAllLimit", "()Ljava/lang/String;", "getCreateTime", "getDayLimit", "getGoalType", "getId", "()I", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getName", "getStartTime", "getStatus", "()Lcom/vk/sdk/api/ads/dto/AdsCampaignStatus;", "getStopTime", "getType", "()Lcom/vk/sdk/api/ads/dto/AdsCampaignType;", "getUpdateTime", "getUserGoalType", "getViewsLimit", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/vk/sdk/api/ads/dto/AdsCampaignStatus;ILcom/vk/sdk/api/ads/dto/AdsCampaignType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/ads/dto/AdsCampaign;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsCampaign {
    @SerializedName("ads_count")
    @Nullable
    private final Integer adsCount;
    @SerializedName("all_limit")
    @NotNull
    private final String allLimit;
    @SerializedName("create_time")
    @Nullable
    private final Integer createTime;
    @SerializedName("day_limit")
    @NotNull
    private final String dayLimit;
    @SerializedName("goal_type")
    @Nullable
    private final Integer goalType;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35664id;
    @SerializedName("is_cbo_enabled")
    @Nullable
    private final Boolean isCboEnabled;
    @SerializedName("name")
    @NotNull
    private final String name;
    @SerializedName("start_time")
    private final int startTime;
    @SerializedName("status")
    @NotNull
    private final AdsCampaignStatus status;
    @SerializedName("stop_time")
    private final int stopTime;
    @SerializedName("type")
    @NotNull
    private final AdsCampaignType type;
    @SerializedName("update_time")
    @Nullable
    private final Integer updateTime;
    @SerializedName("user_goal_type")
    @Nullable
    private final Integer userGoalType;
    @SerializedName("views_limit")
    @Nullable
    private final Integer viewsLimit;

    public AdsCampaign(@NotNull String allLimit, @NotNull String dayLimit, int i9, @NotNull String name, int i10, @NotNull AdsCampaignStatus status, int i11, @NotNull AdsCampaignType type, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Boolean bool, @Nullable Integer num5, @Nullable Integer num6) {
        Intrinsics.checkNotNullParameter(allLimit, "allLimit");
        Intrinsics.checkNotNullParameter(dayLimit, "dayLimit");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(type, "type");
        this.allLimit = allLimit;
        this.dayLimit = dayLimit;
        this.f35664id = i9;
        this.name = name;
        this.startTime = i10;
        this.status = status;
        this.stopTime = i11;
        this.type = type;
        this.adsCount = num;
        this.createTime = num2;
        this.goalType = num3;
        this.userGoalType = num4;
        this.isCboEnabled = bool;
        this.updateTime = num5;
        this.viewsLimit = num6;
    }

    @NotNull
    public final String component1() {
        return this.allLimit;
    }

    @Nullable
    public final Integer component10() {
        return this.createTime;
    }

    @Nullable
    public final Integer component11() {
        return this.goalType;
    }

    @Nullable
    public final Integer component12() {
        return this.userGoalType;
    }

    @Nullable
    public final Boolean component13() {
        return this.isCboEnabled;
    }

    @Nullable
    public final Integer component14() {
        return this.updateTime;
    }

    @Nullable
    public final Integer component15() {
        return this.viewsLimit;
    }

    @NotNull
    public final String component2() {
        return this.dayLimit;
    }

    public final int component3() {
        return this.f35664id;
    }

    @NotNull
    public final String component4() {
        return this.name;
    }

    public final int component5() {
        return this.startTime;
    }

    @NotNull
    public final AdsCampaignStatus component6() {
        return this.status;
    }

    public final int component7() {
        return this.stopTime;
    }

    @NotNull
    public final AdsCampaignType component8() {
        return this.type;
    }

    @Nullable
    public final Integer component9() {
        return this.adsCount;
    }

    @NotNull
    public final AdsCampaign copy(@NotNull String allLimit, @NotNull String dayLimit, int i9, @NotNull String name, int i10, @NotNull AdsCampaignStatus status, int i11, @NotNull AdsCampaignType type, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Boolean bool, @Nullable Integer num5, @Nullable Integer num6) {
        Intrinsics.checkNotNullParameter(allLimit, "allLimit");
        Intrinsics.checkNotNullParameter(dayLimit, "dayLimit");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(type, "type");
        return new AdsCampaign(allLimit, dayLimit, i9, name, i10, status, i11, type, num, num2, num3, num4, bool, num5, num6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsCampaign) {
            AdsCampaign adsCampaign = (AdsCampaign) obj;
            return Intrinsics.areEqual(this.allLimit, adsCampaign.allLimit) && Intrinsics.areEqual(this.dayLimit, adsCampaign.dayLimit) && this.f35664id == adsCampaign.f35664id && Intrinsics.areEqual(this.name, adsCampaign.name) && this.startTime == adsCampaign.startTime && this.status == adsCampaign.status && this.stopTime == adsCampaign.stopTime && this.type == adsCampaign.type && Intrinsics.areEqual(this.adsCount, adsCampaign.adsCount) && Intrinsics.areEqual(this.createTime, adsCampaign.createTime) && Intrinsics.areEqual(this.goalType, adsCampaign.goalType) && Intrinsics.areEqual(this.userGoalType, adsCampaign.userGoalType) && Intrinsics.areEqual(this.isCboEnabled, adsCampaign.isCboEnabled) && Intrinsics.areEqual(this.updateTime, adsCampaign.updateTime) && Intrinsics.areEqual(this.viewsLimit, adsCampaign.viewsLimit);
        }
        return false;
    }

    @Nullable
    public final Integer getAdsCount() {
        return this.adsCount;
    }

    @NotNull
    public final String getAllLimit() {
        return this.allLimit;
    }

    @Nullable
    public final Integer getCreateTime() {
        return this.createTime;
    }

    @NotNull
    public final String getDayLimit() {
        return this.dayLimit;
    }

    @Nullable
    public final Integer getGoalType() {
        return this.goalType;
    }

    public final int getId() {
        return this.f35664id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final int getStartTime() {
        return this.startTime;
    }

    @NotNull
    public final AdsCampaignStatus getStatus() {
        return this.status;
    }

    public final int getStopTime() {
        return this.stopTime;
    }

    @NotNull
    public final AdsCampaignType getType() {
        return this.type;
    }

    @Nullable
    public final Integer getUpdateTime() {
        return this.updateTime;
    }

    @Nullable
    public final Integer getUserGoalType() {
        return this.userGoalType;
    }

    @Nullable
    public final Integer getViewsLimit() {
        return this.viewsLimit;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((this.allLimit.hashCode() * 31) + this.dayLimit.hashCode()) * 31) + this.f35664id) * 31) + this.name.hashCode()) * 31) + this.startTime) * 31) + this.status.hashCode()) * 31) + this.stopTime) * 31) + this.type.hashCode()) * 31;
        Integer num = this.adsCount;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.createTime;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.goalType;
        int hashCode4 = (hashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.userGoalType;
        int hashCode5 = (hashCode4 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Boolean bool = this.isCboEnabled;
        int hashCode6 = (hashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num5 = this.updateTime;
        int hashCode7 = (hashCode6 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.viewsLimit;
        return hashCode7 + (num6 != null ? num6.hashCode() : 0);
    }

    @Nullable
    public final Boolean isCboEnabled() {
        return this.isCboEnabled;
    }

    @NotNull
    public String toString() {
        String str = this.allLimit;
        String str2 = this.dayLimit;
        int i9 = this.f35664id;
        String str3 = this.name;
        int i10 = this.startTime;
        AdsCampaignStatus adsCampaignStatus = this.status;
        int i11 = this.stopTime;
        AdsCampaignType adsCampaignType = this.type;
        Integer num = this.adsCount;
        Integer num2 = this.createTime;
        Integer num3 = this.goalType;
        Integer num4 = this.userGoalType;
        Boolean bool = this.isCboEnabled;
        Integer num5 = this.updateTime;
        Integer num6 = this.viewsLimit;
        return "AdsCampaign(allLimit=" + str + ", dayLimit=" + str2 + ", id=" + i9 + ", name=" + str3 + ", startTime=" + i10 + ", status=" + adsCampaignStatus + ", stopTime=" + i11 + ", type=" + adsCampaignType + ", adsCount=" + num + ", createTime=" + num2 + ", goalType=" + num3 + ", userGoalType=" + num4 + ", isCboEnabled=" + bool + ", updateTime=" + num5 + ", viewsLimit=" + num6 + ")";
    }

    public /* synthetic */ AdsCampaign(String str, String str2, int i9, String str3, int i10, AdsCampaignStatus adsCampaignStatus, int i11, AdsCampaignType adsCampaignType, Integer num, Integer num2, Integer num3, Integer num4, Boolean bool, Integer num5, Integer num6, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i9, str3, i10, adsCampaignStatus, i11, adsCampaignType, (i12 & 256) != 0 ? null : num, (i12 & 512) != 0 ? null : num2, (i12 & 1024) != 0 ? null : num3, (i12 & 2048) != 0 ? null : num4, (i12 & 4096) != 0 ? null : bool, (i12 & 8192) != 0 ? null : num5, (i12 & 16384) != 0 ? null : num6);
    }
}
