package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003J0\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0006HÖ\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsCreateCampaignStatus;", "", "id", "", "errorCode", "errorDesc", "", "(ILjava/lang/Integer;Ljava/lang/String;)V", "getErrorCode", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getErrorDesc", "()Ljava/lang/String;", "getId", "()I", "component1", "component2", "component3", "copy", "(ILjava/lang/Integer;Ljava/lang/String;)Lcom/vk/sdk/api/ads/dto/AdsCreateCampaignStatus;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsCreateCampaignStatus {
    @SerializedName("error_code")
    @Nullable
    private final Integer errorCode;
    @SerializedName("error_desc")
    @Nullable
    private final String errorDesc;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35668id;

    public AdsCreateCampaignStatus(int i9, @Nullable Integer num, @Nullable String str) {
        this.f35668id = i9;
        this.errorCode = num;
        this.errorDesc = str;
    }

    public static /* synthetic */ AdsCreateCampaignStatus copy$default(AdsCreateCampaignStatus adsCreateCampaignStatus, int i9, Integer num, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = adsCreateCampaignStatus.f35668id;
        }
        if ((i10 & 2) != 0) {
            num = adsCreateCampaignStatus.errorCode;
        }
        if ((i10 & 4) != 0) {
            str = adsCreateCampaignStatus.errorDesc;
        }
        return adsCreateCampaignStatus.copy(i9, num, str);
    }

    public final int component1() {
        return this.f35668id;
    }

    @Nullable
    public final Integer component2() {
        return this.errorCode;
    }

    @Nullable
    public final String component3() {
        return this.errorDesc;
    }

    @NotNull
    public final AdsCreateCampaignStatus copy(int i9, @Nullable Integer num, @Nullable String str) {
        return new AdsCreateCampaignStatus(i9, num, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsCreateCampaignStatus) {
            AdsCreateCampaignStatus adsCreateCampaignStatus = (AdsCreateCampaignStatus) obj;
            return this.f35668id == adsCreateCampaignStatus.f35668id && Intrinsics.areEqual(this.errorCode, adsCreateCampaignStatus.errorCode) && Intrinsics.areEqual(this.errorDesc, adsCreateCampaignStatus.errorDesc);
        }
        return false;
    }

    @Nullable
    public final Integer getErrorCode() {
        return this.errorCode;
    }

    @Nullable
    public final String getErrorDesc() {
        return this.errorDesc;
    }

    public final int getId() {
        return this.f35668id;
    }

    public int hashCode() {
        int i9 = this.f35668id * 31;
        Integer num = this.errorCode;
        int hashCode = (i9 + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.errorDesc;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.f35668id;
        Integer num = this.errorCode;
        String str = this.errorDesc;
        return "AdsCreateCampaignStatus(id=" + i9 + ", errorCode=" + num + ", errorDesc=" + str + ")";
    }

    public /* synthetic */ AdsCreateCampaignStatus(int i9, Integer num, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? null : num, (i10 & 4) != 0 ? null : str);
    }
}
