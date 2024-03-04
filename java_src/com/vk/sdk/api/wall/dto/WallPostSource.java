package com.vk.sdk.api.wall.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseLink;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003JE\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallPostSource;", "", "data", "", "platform", "type", "Lcom/vk/sdk/api/wall/dto/WallPostSourceType;", "url", "link", "Lcom/vk/sdk/api/base/dto/BaseLink;", "(Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/wall/dto/WallPostSourceType;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLink;)V", "getData", "()Ljava/lang/String;", "getLink", "()Lcom/vk/sdk/api/base/dto/BaseLink;", "getPlatform", "getType", "()Lcom/vk/sdk/api/wall/dto/WallPostSourceType;", "getUrl", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallPostSource {
    @SerializedName("data")
    @Nullable
    private final String data;
    @SerializedName("link")
    @Nullable
    private final BaseLink link;
    @SerializedName("platform")
    @Nullable
    private final String platform;
    @SerializedName("type")
    @Nullable
    private final WallPostSourceType type;
    @SerializedName("url")
    @Nullable
    private final String url;

    public WallPostSource() {
        this(null, null, null, null, null, 31, null);
    }

    public WallPostSource(@Nullable String str, @Nullable String str2, @Nullable WallPostSourceType wallPostSourceType, @Nullable String str3, @Nullable BaseLink baseLink) {
        this.data = str;
        this.platform = str2;
        this.type = wallPostSourceType;
        this.url = str3;
        this.link = baseLink;
    }

    public static /* synthetic */ WallPostSource copy$default(WallPostSource wallPostSource, String str, String str2, WallPostSourceType wallPostSourceType, String str3, BaseLink baseLink, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = wallPostSource.data;
        }
        if ((i9 & 2) != 0) {
            str2 = wallPostSource.platform;
        }
        String str4 = str2;
        if ((i9 & 4) != 0) {
            wallPostSourceType = wallPostSource.type;
        }
        WallPostSourceType wallPostSourceType2 = wallPostSourceType;
        if ((i9 & 8) != 0) {
            str3 = wallPostSource.url;
        }
        String str5 = str3;
        if ((i9 & 16) != 0) {
            baseLink = wallPostSource.link;
        }
        return wallPostSource.copy(str, str4, wallPostSourceType2, str5, baseLink);
    }

    @Nullable
    public final String component1() {
        return this.data;
    }

    @Nullable
    public final String component2() {
        return this.platform;
    }

    @Nullable
    public final WallPostSourceType component3() {
        return this.type;
    }

    @Nullable
    public final String component4() {
        return this.url;
    }

    @Nullable
    public final BaseLink component5() {
        return this.link;
    }

    @NotNull
    public final WallPostSource copy(@Nullable String str, @Nullable String str2, @Nullable WallPostSourceType wallPostSourceType, @Nullable String str3, @Nullable BaseLink baseLink) {
        return new WallPostSource(str, str2, wallPostSourceType, str3, baseLink);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallPostSource) {
            WallPostSource wallPostSource = (WallPostSource) obj;
            return Intrinsics.areEqual(this.data, wallPostSource.data) && Intrinsics.areEqual(this.platform, wallPostSource.platform) && this.type == wallPostSource.type && Intrinsics.areEqual(this.url, wallPostSource.url) && Intrinsics.areEqual(this.link, wallPostSource.link);
        }
        return false;
    }

    @Nullable
    public final String getData() {
        return this.data;
    }

    @Nullable
    public final BaseLink getLink() {
        return this.link;
    }

    @Nullable
    public final String getPlatform() {
        return this.platform;
    }

    @Nullable
    public final WallPostSourceType getType() {
        return this.type;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.data;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.platform;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        WallPostSourceType wallPostSourceType = this.type;
        int hashCode3 = (hashCode2 + (wallPostSourceType == null ? 0 : wallPostSourceType.hashCode())) * 31;
        String str3 = this.url;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        BaseLink baseLink = this.link;
        return hashCode4 + (baseLink != null ? baseLink.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.data;
        String str2 = this.platform;
        WallPostSourceType wallPostSourceType = this.type;
        String str3 = this.url;
        BaseLink baseLink = this.link;
        return "WallPostSource(data=" + str + ", platform=" + str2 + ", type=" + wallPostSourceType + ", url=" + str3 + ", link=" + baseLink + ")";
    }

    public /* synthetic */ WallPostSource(String str, String str2, WallPostSourceType wallPostSourceType, String str3, BaseLink baseLink, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : str2, (i9 & 4) != 0 ? null : wallPostSourceType, (i9 & 8) != 0 ? null : str3, (i9 & 16) != 0 ? null : baseLink);
    }
}
