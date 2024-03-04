package com.vk.sdk.api.newsfeed.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u000eJ>\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\bHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\u0012\u0010\u000b¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemAnimatedBlockAnimation;", "", "url", "", "width", "", "height", "playCount", "", "(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;)V", "getHeight", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getPlayCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getUrl", "()Ljava/lang/String;", "getWidth", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemAnimatedBlockAnimation;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedItemAnimatedBlockAnimation {
    @SerializedName("height")
    @Nullable
    private final Float height;
    @SerializedName("play_count")
    @Nullable
    private final Integer playCount;
    @SerializedName("url")
    @Nullable
    private final String url;
    @SerializedName("width")
    @Nullable
    private final Float width;

    public NewsfeedItemAnimatedBlockAnimation() {
        this(null, null, null, null, 15, null);
    }

    public NewsfeedItemAnimatedBlockAnimation(@Nullable String str, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num) {
        this.url = str;
        this.width = f10;
        this.height = f11;
        this.playCount = num;
    }

    public static /* synthetic */ NewsfeedItemAnimatedBlockAnimation copy$default(NewsfeedItemAnimatedBlockAnimation newsfeedItemAnimatedBlockAnimation, String str, Float f10, Float f11, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = newsfeedItemAnimatedBlockAnimation.url;
        }
        if ((i9 & 2) != 0) {
            f10 = newsfeedItemAnimatedBlockAnimation.width;
        }
        if ((i9 & 4) != 0) {
            f11 = newsfeedItemAnimatedBlockAnimation.height;
        }
        if ((i9 & 8) != 0) {
            num = newsfeedItemAnimatedBlockAnimation.playCount;
        }
        return newsfeedItemAnimatedBlockAnimation.copy(str, f10, f11, num);
    }

    @Nullable
    public final String component1() {
        return this.url;
    }

    @Nullable
    public final Float component2() {
        return this.width;
    }

    @Nullable
    public final Float component3() {
        return this.height;
    }

    @Nullable
    public final Integer component4() {
        return this.playCount;
    }

    @NotNull
    public final NewsfeedItemAnimatedBlockAnimation copy(@Nullable String str, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num) {
        return new NewsfeedItemAnimatedBlockAnimation(str, f10, f11, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedItemAnimatedBlockAnimation) {
            NewsfeedItemAnimatedBlockAnimation newsfeedItemAnimatedBlockAnimation = (NewsfeedItemAnimatedBlockAnimation) obj;
            return Intrinsics.areEqual(this.url, newsfeedItemAnimatedBlockAnimation.url) && Intrinsics.areEqual((Object) this.width, (Object) newsfeedItemAnimatedBlockAnimation.width) && Intrinsics.areEqual((Object) this.height, (Object) newsfeedItemAnimatedBlockAnimation.height) && Intrinsics.areEqual(this.playCount, newsfeedItemAnimatedBlockAnimation.playCount);
        }
        return false;
    }

    @Nullable
    public final Float getHeight() {
        return this.height;
    }

    @Nullable
    public final Integer getPlayCount() {
        return this.playCount;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    @Nullable
    public final Float getWidth() {
        return this.width;
    }

    public int hashCode() {
        String str = this.url;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Float f10 = this.width;
        int hashCode2 = (hashCode + (f10 == null ? 0 : f10.hashCode())) * 31;
        Float f11 = this.height;
        int hashCode3 = (hashCode2 + (f11 == null ? 0 : f11.hashCode())) * 31;
        Integer num = this.playCount;
        return hashCode3 + (num != null ? num.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.url;
        Float f10 = this.width;
        Float f11 = this.height;
        Integer num = this.playCount;
        return "NewsfeedItemAnimatedBlockAnimation(url=" + str + ", width=" + f10 + ", height=" + f11 + ", playCount=" + num + ")";
    }

    public /* synthetic */ NewsfeedItemAnimatedBlockAnimation(String str, Float f10, Float f11, Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : f10, (i9 & 4) != 0 ? null : f11, (i9 & 8) != 0 ? null : num);
    }
}
