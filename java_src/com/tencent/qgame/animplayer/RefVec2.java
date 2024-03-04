package com.tencent.qgame.animplayer;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/tencent/qgame/animplayer/RefVec2;", "", "w", "", "h", "(II)V", "getH", "()I", "getW", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class RefVec2 {

    /* renamed from: h  reason: collision with root package name */
    private final int f33371h;

    /* renamed from: w  reason: collision with root package name */
    private final int f33372w;

    public RefVec2(int i9, int i10) {
        this.f33372w = i9;
        this.f33371h = i10;
    }

    public static /* synthetic */ RefVec2 copy$default(RefVec2 refVec2, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = refVec2.f33372w;
        }
        if ((i11 & 2) != 0) {
            i10 = refVec2.f33371h;
        }
        return refVec2.copy(i9, i10);
    }

    public final int component1() {
        return this.f33372w;
    }

    public final int component2() {
        return this.f33371h;
    }

    @NotNull
    public final RefVec2 copy(int i9, int i10) {
        return new RefVec2(i9, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof RefVec2) {
                RefVec2 refVec2 = (RefVec2) obj;
                if (this.f33372w == refVec2.f33372w) {
                    if (this.f33371h == refVec2.f33371h) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int getH() {
        return this.f33371h;
    }

    public final int getW() {
        return this.f33372w;
    }

    public int hashCode() {
        return (this.f33372w * 31) + this.f33371h;
    }

    @NotNull
    public String toString() {
        return "RefVec2(w=" + this.f33372w + ", h=" + this.f33371h + ")";
    }
}
