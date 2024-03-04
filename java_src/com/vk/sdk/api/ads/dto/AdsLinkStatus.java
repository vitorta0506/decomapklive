package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsLinkStatus;", "", "description", "", "redirectUrl", "status", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDescription", "()Ljava/lang/String;", "getRedirectUrl", "getStatus", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsLinkStatus {
    @SerializedName("description")
    @NotNull
    private final String description;
    @SerializedName("redirect_url")
    @NotNull
    private final String redirectUrl;
    @SerializedName("status")
    @NotNull
    private final String status;

    public AdsLinkStatus(@NotNull String description, @NotNull String redirectUrl, @NotNull String status) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(redirectUrl, "redirectUrl");
        Intrinsics.checkNotNullParameter(status, "status");
        this.description = description;
        this.redirectUrl = redirectUrl;
        this.status = status;
    }

    public static /* synthetic */ AdsLinkStatus copy$default(AdsLinkStatus adsLinkStatus, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = adsLinkStatus.description;
        }
        if ((i9 & 2) != 0) {
            str2 = adsLinkStatus.redirectUrl;
        }
        if ((i9 & 4) != 0) {
            str3 = adsLinkStatus.status;
        }
        return adsLinkStatus.copy(str, str2, str3);
    }

    @NotNull
    public final String component1() {
        return this.description;
    }

    @NotNull
    public final String component2() {
        return this.redirectUrl;
    }

    @NotNull
    public final String component3() {
        return this.status;
    }

    @NotNull
    public final AdsLinkStatus copy(@NotNull String description, @NotNull String redirectUrl, @NotNull String status) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(redirectUrl, "redirectUrl");
        Intrinsics.checkNotNullParameter(status, "status");
        return new AdsLinkStatus(description, redirectUrl, status);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsLinkStatus) {
            AdsLinkStatus adsLinkStatus = (AdsLinkStatus) obj;
            return Intrinsics.areEqual(this.description, adsLinkStatus.description) && Intrinsics.areEqual(this.redirectUrl, adsLinkStatus.redirectUrl) && Intrinsics.areEqual(this.status, adsLinkStatus.status);
        }
        return false;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @NotNull
    public final String getRedirectUrl() {
        return this.redirectUrl;
    }

    @NotNull
    public final String getStatus() {
        return this.status;
    }

    public int hashCode() {
        return (((this.description.hashCode() * 31) + this.redirectUrl.hashCode()) * 31) + this.status.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.description;
        String str2 = this.redirectUrl;
        String str3 = this.status;
        return "AdsLinkStatus(description=" + str + ", redirectUrl=" + str2 + ", status=" + str3 + ")";
    }
}
