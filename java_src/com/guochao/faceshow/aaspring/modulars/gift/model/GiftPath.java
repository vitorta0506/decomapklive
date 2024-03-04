package com.guochao.faceshow.aaspring.modulars.gift.model;

import com.guochao.faceshow.utils.TCConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;", "", TCConstants.VIDEO_RECORD_VIDEPATH, "", "giftCount", "", "removeLast", "", "(Ljava/lang/String;IZ)V", "getGiftCount", "()I", "getPath", "()Ljava/lang/String;", "getRemoveLast", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GiftPath {
    private final int giftCount;
    @NotNull
    private final String path;
    private final boolean removeLast;

    public GiftPath(@NotNull String path, int i9, boolean z10) {
        Intrinsics.checkNotNullParameter(path, "path");
        this.path = path;
        this.giftCount = i9;
        this.removeLast = z10;
    }

    public static /* synthetic */ GiftPath copy$default(GiftPath giftPath, String str, int i9, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = giftPath.path;
        }
        if ((i10 & 2) != 0) {
            i9 = giftPath.giftCount;
        }
        if ((i10 & 4) != 0) {
            z10 = giftPath.removeLast;
        }
        return giftPath.copy(str, i9, z10);
    }

    @NotNull
    public final String component1() {
        return this.path;
    }

    public final int component2() {
        return this.giftCount;
    }

    public final boolean component3() {
        return this.removeLast;
    }

    @NotNull
    public final GiftPath copy(@NotNull String path, int i9, boolean z10) {
        Intrinsics.checkNotNullParameter(path, "path");
        return new GiftPath(path, i9, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GiftPath) {
            GiftPath giftPath = (GiftPath) obj;
            return Intrinsics.areEqual(this.path, giftPath.path) && this.giftCount == giftPath.giftCount && this.removeLast == giftPath.removeLast;
        }
        return false;
    }

    public final int getGiftCount() {
        return this.giftCount;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    public final boolean getRemoveLast() {
        return this.removeLast;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.path.hashCode() * 31) + this.giftCount) * 31;
        boolean z10 = this.removeLast;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        return hashCode + i9;
    }

    @NotNull
    public String toString() {
        return "GiftPath(path=" + this.path + ", giftCount=" + this.giftCount + ", removeLast=" + this.removeLast + ')';
    }

    public /* synthetic */ GiftPath(String str, int i9, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i9, (i10 & 4) != 0 ? false : z10);
    }
}
