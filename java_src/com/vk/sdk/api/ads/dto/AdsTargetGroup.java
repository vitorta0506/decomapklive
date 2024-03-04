package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\nJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003JV\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\t\u0010 \u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u0010\u0010\fR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u0011\u0010\fR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000f¨\u0006!"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsTargetGroup;", "", "audienceCount", "", "domain", "", "id", "lifetime", "name", "pixel", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getAudienceCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDomain", "()Ljava/lang/String;", "getId", "getLifetime", "getName", "getPixel", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/api/ads/dto/AdsTargetGroup;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsTargetGroup {
    @SerializedName("audience_count")
    @Nullable
    private final Integer audienceCount;
    @SerializedName("domain")
    @Nullable
    private final String domain;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35679id;
    @SerializedName("lifetime")
    @Nullable
    private final Integer lifetime;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("pixel")
    @Nullable
    private final String pixel;

    public AdsTargetGroup() {
        this(null, null, null, null, null, null, 63, null);
    }

    public AdsTargetGroup(@Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2, @Nullable String str3) {
        this.audienceCount = num;
        this.domain = str;
        this.f35679id = num2;
        this.lifetime = num3;
        this.name = str2;
        this.pixel = str3;
    }

    public static /* synthetic */ AdsTargetGroup copy$default(AdsTargetGroup adsTargetGroup, Integer num, String str, Integer num2, Integer num3, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = adsTargetGroup.audienceCount;
        }
        if ((i9 & 2) != 0) {
            str = adsTargetGroup.domain;
        }
        String str4 = str;
        if ((i9 & 4) != 0) {
            num2 = adsTargetGroup.f35679id;
        }
        Integer num4 = num2;
        if ((i9 & 8) != 0) {
            num3 = adsTargetGroup.lifetime;
        }
        Integer num5 = num3;
        if ((i9 & 16) != 0) {
            str2 = adsTargetGroup.name;
        }
        String str5 = str2;
        if ((i9 & 32) != 0) {
            str3 = adsTargetGroup.pixel;
        }
        return adsTargetGroup.copy(num, str4, num4, num5, str5, str3);
    }

    @Nullable
    public final Integer component1() {
        return this.audienceCount;
    }

    @Nullable
    public final String component2() {
        return this.domain;
    }

    @Nullable
    public final Integer component3() {
        return this.f35679id;
    }

    @Nullable
    public final Integer component4() {
        return this.lifetime;
    }

    @Nullable
    public final String component5() {
        return this.name;
    }

    @Nullable
    public final String component6() {
        return this.pixel;
    }

    @NotNull
    public final AdsTargetGroup copy(@Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2, @Nullable String str3) {
        return new AdsTargetGroup(num, str, num2, num3, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsTargetGroup) {
            AdsTargetGroup adsTargetGroup = (AdsTargetGroup) obj;
            return Intrinsics.areEqual(this.audienceCount, adsTargetGroup.audienceCount) && Intrinsics.areEqual(this.domain, adsTargetGroup.domain) && Intrinsics.areEqual(this.f35679id, adsTargetGroup.f35679id) && Intrinsics.areEqual(this.lifetime, adsTargetGroup.lifetime) && Intrinsics.areEqual(this.name, adsTargetGroup.name) && Intrinsics.areEqual(this.pixel, adsTargetGroup.pixel);
        }
        return false;
    }

    @Nullable
    public final Integer getAudienceCount() {
        return this.audienceCount;
    }

    @Nullable
    public final String getDomain() {
        return this.domain;
    }

    @Nullable
    public final Integer getId() {
        return this.f35679id;
    }

    @Nullable
    public final Integer getLifetime() {
        return this.lifetime;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getPixel() {
        return this.pixel;
    }

    public int hashCode() {
        Integer num = this.audienceCount;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.domain;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.f35679id;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.lifetime;
        int hashCode4 = (hashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str2 = this.name;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.pixel;
        return hashCode5 + (str3 != null ? str3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.audienceCount;
        String str = this.domain;
        Integer num2 = this.f35679id;
        Integer num3 = this.lifetime;
        String str2 = this.name;
        String str3 = this.pixel;
        return "AdsTargetGroup(audienceCount=" + num + ", domain=" + str + ", id=" + num2 + ", lifetime=" + num3 + ", name=" + str2 + ", pixel=" + str3 + ")";
    }

    public /* synthetic */ AdsTargetGroup(Integer num, String str, Integer num2, Integer num3, String str2, String str3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : num2, (i9 & 8) != 0 ? null : num3, (i9 & 16) != 0 ? null : str2, (i9 & 32) != 0 ? null : str3);
    }
}
