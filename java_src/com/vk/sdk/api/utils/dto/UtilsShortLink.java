package com.vk.sdk.api.utils.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/utils/dto/UtilsShortLink;", "", "accessKey", "", "key", "shortUrl", "url", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAccessKey", "()Ljava/lang/String;", "getKey", "getShortUrl", "getUrl", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UtilsShortLink {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("key")
    @Nullable
    private final String key;
    @SerializedName("short_url")
    @Nullable
    private final String shortUrl;
    @SerializedName("url")
    @Nullable
    private final String url;

    public UtilsShortLink() {
        this(null, null, null, null, 15, null);
    }

    public UtilsShortLink(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        this.accessKey = str;
        this.key = str2;
        this.shortUrl = str3;
        this.url = str4;
    }

    public static /* synthetic */ UtilsShortLink copy$default(UtilsShortLink utilsShortLink, String str, String str2, String str3, String str4, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = utilsShortLink.accessKey;
        }
        if ((i9 & 2) != 0) {
            str2 = utilsShortLink.key;
        }
        if ((i9 & 4) != 0) {
            str3 = utilsShortLink.shortUrl;
        }
        if ((i9 & 8) != 0) {
            str4 = utilsShortLink.url;
        }
        return utilsShortLink.copy(str, str2, str3, str4);
    }

    @Nullable
    public final String component1() {
        return this.accessKey;
    }

    @Nullable
    public final String component2() {
        return this.key;
    }

    @Nullable
    public final String component3() {
        return this.shortUrl;
    }

    @Nullable
    public final String component4() {
        return this.url;
    }

    @NotNull
    public final UtilsShortLink copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        return new UtilsShortLink(str, str2, str3, str4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UtilsShortLink) {
            UtilsShortLink utilsShortLink = (UtilsShortLink) obj;
            return Intrinsics.areEqual(this.accessKey, utilsShortLink.accessKey) && Intrinsics.areEqual(this.key, utilsShortLink.key) && Intrinsics.areEqual(this.shortUrl, utilsShortLink.shortUrl) && Intrinsics.areEqual(this.url, utilsShortLink.url);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    @Nullable
    public final String getKey() {
        return this.key;
    }

    @Nullable
    public final String getShortUrl() {
        return this.shortUrl;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.accessKey;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.key;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.shortUrl;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.url;
        return hashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.accessKey;
        String str2 = this.key;
        String str3 = this.shortUrl;
        String str4 = this.url;
        return "UtilsShortLink(accessKey=" + str + ", key=" + str2 + ", shortUrl=" + str3 + ", url=" + str4 + ")";
    }

    public /* synthetic */ UtilsShortLink(String str, String str2, String str3, String str4, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : str2, (i9 & 4) != 0 ? null : str3, (i9 & 8) != 0 ? null : str4);
    }
}
