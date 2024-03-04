package com.vk.sdk.api.discover.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J)\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonContext;", "", "objectId", "", "viewUrl", "", "originalUrl", "(ILjava/lang/String;Ljava/lang/String;)V", "getObjectId", "()I", "getOriginalUrl", "()Ljava/lang/String;", "getViewUrl", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DiscoverCarouselButtonContext {
    @SerializedName("object_id")
    private final int objectId;
    @SerializedName("original_url")
    @Nullable
    private final String originalUrl;
    @SerializedName("view_url")
    @NotNull
    private final String viewUrl;

    public DiscoverCarouselButtonContext(int i9, @NotNull String viewUrl, @Nullable String str) {
        Intrinsics.checkNotNullParameter(viewUrl, "viewUrl");
        this.objectId = i9;
        this.viewUrl = viewUrl;
        this.originalUrl = str;
    }

    public static /* synthetic */ DiscoverCarouselButtonContext copy$default(DiscoverCarouselButtonContext discoverCarouselButtonContext, int i9, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = discoverCarouselButtonContext.objectId;
        }
        if ((i10 & 2) != 0) {
            str = discoverCarouselButtonContext.viewUrl;
        }
        if ((i10 & 4) != 0) {
            str2 = discoverCarouselButtonContext.originalUrl;
        }
        return discoverCarouselButtonContext.copy(i9, str, str2);
    }

    public final int component1() {
        return this.objectId;
    }

    @NotNull
    public final String component2() {
        return this.viewUrl;
    }

    @Nullable
    public final String component3() {
        return this.originalUrl;
    }

    @NotNull
    public final DiscoverCarouselButtonContext copy(int i9, @NotNull String viewUrl, @Nullable String str) {
        Intrinsics.checkNotNullParameter(viewUrl, "viewUrl");
        return new DiscoverCarouselButtonContext(i9, viewUrl, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DiscoverCarouselButtonContext) {
            DiscoverCarouselButtonContext discoverCarouselButtonContext = (DiscoverCarouselButtonContext) obj;
            return this.objectId == discoverCarouselButtonContext.objectId && Intrinsics.areEqual(this.viewUrl, discoverCarouselButtonContext.viewUrl) && Intrinsics.areEqual(this.originalUrl, discoverCarouselButtonContext.originalUrl);
        }
        return false;
    }

    public final int getObjectId() {
        return this.objectId;
    }

    @Nullable
    public final String getOriginalUrl() {
        return this.originalUrl;
    }

    @NotNull
    public final String getViewUrl() {
        return this.viewUrl;
    }

    public int hashCode() {
        int hashCode = ((this.objectId * 31) + this.viewUrl.hashCode()) * 31;
        String str = this.originalUrl;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.objectId;
        String str = this.viewUrl;
        String str2 = this.originalUrl;
        return "DiscoverCarouselButtonContext(objectId=" + i9 + ", viewUrl=" + str + ", originalUrl=" + str2 + ")";
    }

    public /* synthetic */ DiscoverCarouselButtonContext(int i9, String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, (i10 & 4) != 0 ? null : str2);
    }
}
