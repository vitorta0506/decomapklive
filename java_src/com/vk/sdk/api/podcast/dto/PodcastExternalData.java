package com.vk.sdk.api.podcast.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\bHÆ\u0003JE\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/podcast/dto/PodcastExternalData;", "", "url", "", "ownerUrl", "title", "ownerName", "cover", "Lcom/vk/sdk/api/podcast/dto/PodcastCover;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/podcast/dto/PodcastCover;)V", "getCover", "()Lcom/vk/sdk/api/podcast/dto/PodcastCover;", "getOwnerName", "()Ljava/lang/String;", "getOwnerUrl", "getTitle", "getUrl", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PodcastExternalData {
    @SerializedName("cover")
    @Nullable
    private final PodcastCover cover;
    @SerializedName("owner_name")
    @Nullable
    private final String ownerName;
    @SerializedName("owner_url")
    @Nullable
    private final String ownerUrl;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("url")
    @Nullable
    private final String url;

    public PodcastExternalData() {
        this(null, null, null, null, null, 31, null);
    }

    public PodcastExternalData(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable PodcastCover podcastCover) {
        this.url = str;
        this.ownerUrl = str2;
        this.title = str3;
        this.ownerName = str4;
        this.cover = podcastCover;
    }

    public static /* synthetic */ PodcastExternalData copy$default(PodcastExternalData podcastExternalData, String str, String str2, String str3, String str4, PodcastCover podcastCover, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = podcastExternalData.url;
        }
        if ((i9 & 2) != 0) {
            str2 = podcastExternalData.ownerUrl;
        }
        String str5 = str2;
        if ((i9 & 4) != 0) {
            str3 = podcastExternalData.title;
        }
        String str6 = str3;
        if ((i9 & 8) != 0) {
            str4 = podcastExternalData.ownerName;
        }
        String str7 = str4;
        if ((i9 & 16) != 0) {
            podcastCover = podcastExternalData.cover;
        }
        return podcastExternalData.copy(str, str5, str6, str7, podcastCover);
    }

    @Nullable
    public final String component1() {
        return this.url;
    }

    @Nullable
    public final String component2() {
        return this.ownerUrl;
    }

    @Nullable
    public final String component3() {
        return this.title;
    }

    @Nullable
    public final String component4() {
        return this.ownerName;
    }

    @Nullable
    public final PodcastCover component5() {
        return this.cover;
    }

    @NotNull
    public final PodcastExternalData copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable PodcastCover podcastCover) {
        return new PodcastExternalData(str, str2, str3, str4, podcastCover);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PodcastExternalData) {
            PodcastExternalData podcastExternalData = (PodcastExternalData) obj;
            return Intrinsics.areEqual(this.url, podcastExternalData.url) && Intrinsics.areEqual(this.ownerUrl, podcastExternalData.ownerUrl) && Intrinsics.areEqual(this.title, podcastExternalData.title) && Intrinsics.areEqual(this.ownerName, podcastExternalData.ownerName) && Intrinsics.areEqual(this.cover, podcastExternalData.cover);
        }
        return false;
    }

    @Nullable
    public final PodcastCover getCover() {
        return this.cover;
    }

    @Nullable
    public final String getOwnerName() {
        return this.ownerName;
    }

    @Nullable
    public final String getOwnerUrl() {
        return this.ownerUrl;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.url;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.ownerUrl;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.title;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.ownerName;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        PodcastCover podcastCover = this.cover;
        return hashCode4 + (podcastCover != null ? podcastCover.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.url;
        String str2 = this.ownerUrl;
        String str3 = this.title;
        String str4 = this.ownerName;
        PodcastCover podcastCover = this.cover;
        return "PodcastExternalData(url=" + str + ", ownerUrl=" + str2 + ", title=" + str3 + ", ownerName=" + str4 + ", cover=" + podcastCover + ")";
    }

    public /* synthetic */ PodcastExternalData(String str, String str2, String str3, String str4, PodcastCover podcastCover, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : str2, (i9 & 4) != 0 ? null : str3, (i9 & 8) != 0 ? null : str4, (i9 & 16) != 0 ? null : podcastCover);
    }
}
