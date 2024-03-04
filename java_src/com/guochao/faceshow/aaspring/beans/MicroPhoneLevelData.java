package com.guochao.faceshow.aaspring.beans;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;", "", "minLevel", "", "levelLimit", "", "(IZ)V", "getLevelLimit", "()Z", "setLevelLimit", "(Z)V", "getMinLevel", "()I", "setMinLevel", "(I)V", "component1", "component2", "copy", "equals", "other", "hashCode", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MicroPhoneLevelData {
    private boolean levelLimit;
    private int minLevel;

    public MicroPhoneLevelData() {
        this(0, false, 3, null);
    }

    public MicroPhoneLevelData(int i9, boolean z10) {
        this.minLevel = i9;
        this.levelLimit = z10;
    }

    public static /* synthetic */ MicroPhoneLevelData copy$default(MicroPhoneLevelData microPhoneLevelData, int i9, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = microPhoneLevelData.minLevel;
        }
        if ((i10 & 2) != 0) {
            z10 = microPhoneLevelData.levelLimit;
        }
        return microPhoneLevelData.copy(i9, z10);
    }

    public final int component1() {
        return this.minLevel;
    }

    public final boolean component2() {
        return this.levelLimit;
    }

    @NotNull
    public final MicroPhoneLevelData copy(int i9, boolean z10) {
        return new MicroPhoneLevelData(i9, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MicroPhoneLevelData) {
            MicroPhoneLevelData microPhoneLevelData = (MicroPhoneLevelData) obj;
            return this.minLevel == microPhoneLevelData.minLevel && this.levelLimit == microPhoneLevelData.levelLimit;
        }
        return false;
    }

    public final boolean getLevelLimit() {
        return this.levelLimit;
    }

    public final int getMinLevel() {
        return this.minLevel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int i9 = this.minLevel * 31;
        boolean z10 = this.levelLimit;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        return i9 + i10;
    }

    public final void setLevelLimit(boolean z10) {
        this.levelLimit = z10;
    }

    public final void setMinLevel(int i9) {
        this.minLevel = i9;
    }

    @NotNull
    public String toString() {
        return "MicroPhoneLevelData(minLevel=" + this.minLevel + ", levelLimit=" + this.levelLimit + ')';
    }

    public /* synthetic */ MicroPhoneLevelData(int i9, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : i9, (i10 & 2) != 0 ? false : z10);
    }
}
