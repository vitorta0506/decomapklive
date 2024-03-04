package com.guochao.faceshow.gift.controller;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;", "", "location", "", "imageUrl", "", "([ILjava/lang/String;)V", "getImageUrl", "()Ljava/lang/String;", "getLocation", "()[I", "setLocation", "([I)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GiftImageViewLocationEvent {
    @NotNull
    private final String imageUrl;
    @NotNull
    private int[] location;

    public GiftImageViewLocationEvent(@NotNull int[] location, @NotNull String imageUrl) {
        Intrinsics.checkNotNullParameter(location, "location");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        this.location = location;
        this.imageUrl = imageUrl;
    }

    public static /* synthetic */ GiftImageViewLocationEvent copy$default(GiftImageViewLocationEvent giftImageViewLocationEvent, int[] iArr, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            iArr = giftImageViewLocationEvent.location;
        }
        if ((i9 & 2) != 0) {
            str = giftImageViewLocationEvent.imageUrl;
        }
        return giftImageViewLocationEvent.copy(iArr, str);
    }

    @NotNull
    public final int[] component1() {
        return this.location;
    }

    @NotNull
    public final String component2() {
        return this.imageUrl;
    }

    @NotNull
    public final GiftImageViewLocationEvent copy(@NotNull int[] location, @NotNull String imageUrl) {
        Intrinsics.checkNotNullParameter(location, "location");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        return new GiftImageViewLocationEvent(location, imageUrl);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (Intrinsics.areEqual(GiftImageViewLocationEvent.class, obj != null ? obj.getClass() : null)) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.guochao.faceshow.gift.controller.GiftImageViewLocationEvent");
            return Arrays.equals(this.location, ((GiftImageViewLocationEvent) obj).location);
        }
        return false;
    }

    @NotNull
    public final String getImageUrl() {
        return this.imageUrl;
    }

    @NotNull
    public final int[] getLocation() {
        return this.location;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.location) * 31) + this.imageUrl.hashCode();
    }

    public final void setLocation(@NotNull int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<set-?>");
        this.location = iArr;
    }

    @NotNull
    public String toString() {
        return "GiftImageViewLocationEvent(location=" + Arrays.toString(this.location) + ", imageUrl=" + this.imageUrl + ')';
    }
}
