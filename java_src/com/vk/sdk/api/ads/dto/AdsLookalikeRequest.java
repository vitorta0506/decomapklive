package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001:\u000256Bo\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010¢\u0006\u0002\u0010\u0012J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\u0011\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0007HÆ\u0003J\t\u0010)\u001a\u00020\tHÆ\u0003J\u0010\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010,\u001a\u0004\u0018\u00010\rHÆ\u0003J\u0010\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0082\u0001\u0010.\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010HÆ\u0001¢\u0006\u0002\u0010/J\u0013\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00103\u001a\u00020\u0003HÖ\u0001J\t\u00104\u001a\u00020\rHÖ\u0001R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u001e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u001b\u0010\u0014R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u001e\u0010\u0014R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0017¨\u00067"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsLookalikeRequest;", "", "id", "", "createTime", "updateTime", "status", "Lcom/vk/sdk/api/ads/dto/AdsLookalikeRequest$Status;", "sourceType", "Lcom/vk/sdk/api/ads/dto/AdsLookalikeRequest$SourceType;", "scheduledDeleteTime", "sourceRetargetingGroupId", "sourceName", "", "audienceCount", "saveAudienceLevels", "", "Lcom/vk/sdk/api/ads/dto/AdsLookalikeRequestSaveAudienceLevel;", "(IIILcom/vk/sdk/api/ads/dto/AdsLookalikeRequest$Status;Lcom/vk/sdk/api/ads/dto/AdsLookalikeRequest$SourceType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V", "getAudienceCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCreateTime", "()I", "getId", "getSaveAudienceLevels", "()Ljava/util/List;", "getScheduledDeleteTime", "getSourceName", "()Ljava/lang/String;", "getSourceRetargetingGroupId", "getSourceType", "()Lcom/vk/sdk/api/ads/dto/AdsLookalikeRequest$SourceType;", "getStatus", "()Lcom/vk/sdk/api/ads/dto/AdsLookalikeRequest$Status;", "getUpdateTime", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IIILcom/vk/sdk/api/ads/dto/AdsLookalikeRequest$Status;Lcom/vk/sdk/api/ads/dto/AdsLookalikeRequest$SourceType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/sdk/api/ads/dto/AdsLookalikeRequest;", "equals", "", "other", "hashCode", "toString", "SourceType", "Status", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsLookalikeRequest {
    @SerializedName("audience_count")
    @Nullable
    private final Integer audienceCount;
    @SerializedName("create_time")
    private final int createTime;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35673id;
    @SerializedName("save_audience_levels")
    @Nullable
    private final List<AdsLookalikeRequestSaveAudienceLevel> saveAudienceLevels;
    @SerializedName("scheduled_delete_time")
    @Nullable
    private final Integer scheduledDeleteTime;
    @SerializedName("source_name")
    @Nullable
    private final String sourceName;
    @SerializedName("source_retargeting_group_id")
    @Nullable
    private final Integer sourceRetargetingGroupId;
    @SerializedName("source_type")
    @NotNull
    private final SourceType sourceType;
    @SerializedName("status")
    @NotNull
    private final Status status;
    @SerializedName("update_time")
    private final int updateTime;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsLookalikeRequest$SourceType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", GrsBaseInfo.CountryCodeSource.UNKNOWN, "RETARGETING_GROUP", "PROMOTED_POST", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum SourceType {
        UNKNOWN("unknown"),
        RETARGETING_GROUP("retargeting_group"),
        PROMOTED_POST("promoted_post");
        
        @NotNull
        private final String value;

        SourceType(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsLookalikeRequest$Status;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", GrsBaseInfo.CountryCodeSource.UNKNOWN, "NEW", "SEARCH_QUEUED", "SEARCH_IN_PROGRESS", "SEARCH_FAILED", "SEARCH_DONE", "SAVE_IN_PROGRESS", "SAVE_FAILED", "SAVE_DONE", "CANCELED", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Status {
        UNKNOWN("unknown"),
        NEW("new"),
        SEARCH_QUEUED("search_queued"),
        SEARCH_IN_PROGRESS("search_in_progress"),
        SEARCH_FAILED("search_failed"),
        SEARCH_DONE("search_done"),
        SAVE_IN_PROGRESS("save_in_progress"),
        SAVE_FAILED("save_failed"),
        SAVE_DONE("save_done"),
        CANCELED("canceled");
        
        @NotNull
        private final String value;

        Status(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public AdsLookalikeRequest(int i9, int i10, int i11, @NotNull Status status, @NotNull SourceType sourceType, @Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable Integer num3, @Nullable List<AdsLookalikeRequestSaveAudienceLevel> list) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(sourceType, "sourceType");
        this.f35673id = i9;
        this.createTime = i10;
        this.updateTime = i11;
        this.status = status;
        this.sourceType = sourceType;
        this.scheduledDeleteTime = num;
        this.sourceRetargetingGroupId = num2;
        this.sourceName = str;
        this.audienceCount = num3;
        this.saveAudienceLevels = list;
    }

    public final int component1() {
        return this.f35673id;
    }

    @Nullable
    public final List<AdsLookalikeRequestSaveAudienceLevel> component10() {
        return this.saveAudienceLevels;
    }

    public final int component2() {
        return this.createTime;
    }

    public final int component3() {
        return this.updateTime;
    }

    @NotNull
    public final Status component4() {
        return this.status;
    }

    @NotNull
    public final SourceType component5() {
        return this.sourceType;
    }

    @Nullable
    public final Integer component6() {
        return this.scheduledDeleteTime;
    }

    @Nullable
    public final Integer component7() {
        return this.sourceRetargetingGroupId;
    }

    @Nullable
    public final String component8() {
        return this.sourceName;
    }

    @Nullable
    public final Integer component9() {
        return this.audienceCount;
    }

    @NotNull
    public final AdsLookalikeRequest copy(int i9, int i10, int i11, @NotNull Status status, @NotNull SourceType sourceType, @Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable Integer num3, @Nullable List<AdsLookalikeRequestSaveAudienceLevel> list) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(sourceType, "sourceType");
        return new AdsLookalikeRequest(i9, i10, i11, status, sourceType, num, num2, str, num3, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsLookalikeRequest) {
            AdsLookalikeRequest adsLookalikeRequest = (AdsLookalikeRequest) obj;
            return this.f35673id == adsLookalikeRequest.f35673id && this.createTime == adsLookalikeRequest.createTime && this.updateTime == adsLookalikeRequest.updateTime && this.status == adsLookalikeRequest.status && this.sourceType == adsLookalikeRequest.sourceType && Intrinsics.areEqual(this.scheduledDeleteTime, adsLookalikeRequest.scheduledDeleteTime) && Intrinsics.areEqual(this.sourceRetargetingGroupId, adsLookalikeRequest.sourceRetargetingGroupId) && Intrinsics.areEqual(this.sourceName, adsLookalikeRequest.sourceName) && Intrinsics.areEqual(this.audienceCount, adsLookalikeRequest.audienceCount) && Intrinsics.areEqual(this.saveAudienceLevels, adsLookalikeRequest.saveAudienceLevels);
        }
        return false;
    }

    @Nullable
    public final Integer getAudienceCount() {
        return this.audienceCount;
    }

    public final int getCreateTime() {
        return this.createTime;
    }

    public final int getId() {
        return this.f35673id;
    }

    @Nullable
    public final List<AdsLookalikeRequestSaveAudienceLevel> getSaveAudienceLevels() {
        return this.saveAudienceLevels;
    }

    @Nullable
    public final Integer getScheduledDeleteTime() {
        return this.scheduledDeleteTime;
    }

    @Nullable
    public final String getSourceName() {
        return this.sourceName;
    }

    @Nullable
    public final Integer getSourceRetargetingGroupId() {
        return this.sourceRetargetingGroupId;
    }

    @NotNull
    public final SourceType getSourceType() {
        return this.sourceType;
    }

    @NotNull
    public final Status getStatus() {
        return this.status;
    }

    public final int getUpdateTime() {
        return this.updateTime;
    }

    public int hashCode() {
        int hashCode = ((((((((this.f35673id * 31) + this.createTime) * 31) + this.updateTime) * 31) + this.status.hashCode()) * 31) + this.sourceType.hashCode()) * 31;
        Integer num = this.scheduledDeleteTime;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.sourceRetargetingGroupId;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.sourceName;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num3 = this.audienceCount;
        int hashCode5 = (hashCode4 + (num3 == null ? 0 : num3.hashCode())) * 31;
        List<AdsLookalikeRequestSaveAudienceLevel> list = this.saveAudienceLevels;
        return hashCode5 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.f35673id;
        int i10 = this.createTime;
        int i11 = this.updateTime;
        Status status = this.status;
        SourceType sourceType = this.sourceType;
        Integer num = this.scheduledDeleteTime;
        Integer num2 = this.sourceRetargetingGroupId;
        String str = this.sourceName;
        Integer num3 = this.audienceCount;
        List<AdsLookalikeRequestSaveAudienceLevel> list = this.saveAudienceLevels;
        return "AdsLookalikeRequest(id=" + i9 + ", createTime=" + i10 + ", updateTime=" + i11 + ", status=" + status + ", sourceType=" + sourceType + ", scheduledDeleteTime=" + num + ", sourceRetargetingGroupId=" + num2 + ", sourceName=" + str + ", audienceCount=" + num3 + ", saveAudienceLevels=" + list + ")";
    }

    public /* synthetic */ AdsLookalikeRequest(int i9, int i10, int i11, Status status, SourceType sourceType, Integer num, Integer num2, String str, Integer num3, List list, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, status, sourceType, (i12 & 32) != 0 ? null : num, (i12 & 64) != 0 ? null : num2, (i12 & 128) != 0 ? null : str, (i12 & 256) != 0 ? null : num3, (i12 & 512) != 0 ? null : list);
    }
}
