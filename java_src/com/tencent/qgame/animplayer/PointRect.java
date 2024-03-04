package com.tencent.qgame.animplayer;

import com.guochao.faceshow.aaspring.modulars.live.common.x;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/tencent/qgame/animplayer/PointRect;", "", x.f19108w, "", "y", "w", "h", "(IIII)V", "getH", "()I", "getW", "getX", "getY", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class PointRect {

    /* renamed from: h  reason: collision with root package name */
    private final int f33367h;

    /* renamed from: w  reason: collision with root package name */
    private final int f33368w;

    /* renamed from: x  reason: collision with root package name */
    private final int f33369x;

    /* renamed from: y  reason: collision with root package name */
    private final int f33370y;

    public PointRect(int i9, int i10, int i11, int i12) {
        this.f33369x = i9;
        this.f33370y = i10;
        this.f33368w = i11;
        this.f33367h = i12;
    }

    public static /* synthetic */ PointRect copy$default(PointRect pointRect, int i9, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i9 = pointRect.f33369x;
        }
        if ((i13 & 2) != 0) {
            i10 = pointRect.f33370y;
        }
        if ((i13 & 4) != 0) {
            i11 = pointRect.f33368w;
        }
        if ((i13 & 8) != 0) {
            i12 = pointRect.f33367h;
        }
        return pointRect.copy(i9, i10, i11, i12);
    }

    public final int component1() {
        return this.f33369x;
    }

    public final int component2() {
        return this.f33370y;
    }

    public final int component3() {
        return this.f33368w;
    }

    public final int component4() {
        return this.f33367h;
    }

    @NotNull
    public final PointRect copy(int i9, int i10, int i11, int i12) {
        return new PointRect(i9, i10, i11, i12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof PointRect) {
                PointRect pointRect = (PointRect) obj;
                if (this.f33369x == pointRect.f33369x) {
                    if (this.f33370y == pointRect.f33370y) {
                        if (this.f33368w == pointRect.f33368w) {
                            if (this.f33367h == pointRect.f33367h) {
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int getH() {
        return this.f33367h;
    }

    public final int getW() {
        return this.f33368w;
    }

    public final int getX() {
        return this.f33369x;
    }

    public final int getY() {
        return this.f33370y;
    }

    public int hashCode() {
        return (((((this.f33369x * 31) + this.f33370y) * 31) + this.f33368w) * 31) + this.f33367h;
    }

    @NotNull
    public String toString() {
        return "PointRect(x=" + this.f33369x + ", y=" + this.f33370y + ", w=" + this.f33368w + ", h=" + this.f33367h + ")";
    }
}
