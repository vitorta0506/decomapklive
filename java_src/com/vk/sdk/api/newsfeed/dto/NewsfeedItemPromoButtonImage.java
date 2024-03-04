package com.vk.sdk.api.newsfeed.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÆ\u0003J2\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0006HÖ\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\r\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPromoButtonImage;", "", "width", "", "height", "url", "", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getHeight", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getUrl", "()Ljava/lang/String;", "getWidth", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemPromoButtonImage;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedItemPromoButtonImage {
    @SerializedName("height")
    @Nullable
    private final Integer height;
    @SerializedName("url")
    @Nullable
    private final String url;
    @SerializedName("width")
    @Nullable
    private final Integer width;

    public NewsfeedItemPromoButtonImage() {
        this(null, null, null, 7, null);
    }

    public NewsfeedItemPromoButtonImage(@Nullable Integer num, @Nullable Integer num2, @Nullable String str) {
        this.width = num;
        this.height = num2;
        this.url = str;
    }

    public static /* synthetic */ NewsfeedItemPromoButtonImage copy$default(NewsfeedItemPromoButtonImage newsfeedItemPromoButtonImage, Integer num, Integer num2, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = newsfeedItemPromoButtonImage.width;
        }
        if ((i9 & 2) != 0) {
            num2 = newsfeedItemPromoButtonImage.height;
        }
        if ((i9 & 4) != 0) {
            str = newsfeedItemPromoButtonImage.url;
        }
        return newsfeedItemPromoButtonImage.copy(num, num2, str);
    }

    @Nullable
    public final Integer component1() {
        return this.width;
    }

    @Nullable
    public final Integer component2() {
        return this.height;
    }

    @Nullable
    public final String component3() {
        return this.url;
    }

    @NotNull
    public final NewsfeedItemPromoButtonImage copy(@Nullable Integer num, @Nullable Integer num2, @Nullable String str) {
        return new NewsfeedItemPromoButtonImage(num, num2, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedItemPromoButtonImage) {
            NewsfeedItemPromoButtonImage newsfeedItemPromoButtonImage = (NewsfeedItemPromoButtonImage) obj;
            return Intrinsics.areEqual(this.width, newsfeedItemPromoButtonImage.width) && Intrinsics.areEqual(this.height, newsfeedItemPromoButtonImage.height) && Intrinsics.areEqual(this.url, newsfeedItemPromoButtonImage.url);
        }
        return false;
    }

    @Nullable
    public final Integer getHeight() {
        return this.height;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    @Nullable
    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        Integer num = this.width;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.height;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.url;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.width;
        Integer num2 = this.height;
        String str = this.url;
        return "NewsfeedItemPromoButtonImage(width=" + num + ", height=" + num2 + ", url=" + str + ")";
    }

    public /* synthetic */ NewsfeedItemPromoButtonImage(Integer num, Integer num2, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : str);
    }
}
