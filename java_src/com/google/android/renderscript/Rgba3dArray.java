package com.google.android.renderscript;

import com.guochao.faceshow.aaspring.modulars.live.common.x;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bJ!\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0086\u0002J \u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J)\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0003H\u0086\u0002R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0017"}, d2 = {"Lcom/google/android/renderscript/Rgba3dArray;", "", "values", "", "sizeX", "", "sizeY", "sizeZ", "([BIII)V", "getSizeX", "()I", "getSizeY", "getSizeZ", "getValues", "()[B", "get", x.f19108w, "y", "z", "indexOfVector", "set", "", "value", "renderscript-toolkit_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2.dex */
public final class Rgba3dArray {
    private final int sizeX;
    private final int sizeY;
    private final int sizeZ;
    @NotNull
    private final byte[] values;

    public Rgba3dArray(@NotNull byte[] values, int i9, int i10, int i11) {
        Intrinsics.checkNotNullParameter(values, "values");
        this.values = values;
        this.sizeX = i9;
        this.sizeY = i10;
        this.sizeZ = i11;
        if (!(values.length >= ((i9 * i10) * i11) * 4)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    private final int indexOfVector(int i9, int i10, int i11) {
        int i12 = this.sizeX;
        boolean z10 = true;
        if (i9 >= 0 && i12 > i9) {
            int i13 = this.sizeY;
            if (i10 >= 0 && i13 > i10) {
                if ((i11 < 0 || this.sizeZ <= i11) ? false : false) {
                    return ((((i11 * i13) + i10) * i12) + i9) * 4;
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @NotNull
    public final byte[] get(int i9, int i10, int i11) {
        int indexOfVector = indexOfVector(i9, i10, i11);
        byte[] bArr = new byte[4];
        for (int i12 = 0; i12 < 4; i12++) {
            bArr[i12] = this.values[indexOfVector + i12];
        }
        return bArr;
    }

    public final int getSizeX() {
        return this.sizeX;
    }

    public final int getSizeY() {
        return this.sizeY;
    }

    public final int getSizeZ() {
        return this.sizeZ;
    }

    @NotNull
    public final byte[] getValues() {
        return this.values;
    }

    public final void set(int i9, int i10, int i11, @NotNull byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.length == 4) {
            int indexOfVector = indexOfVector(i9, i10, i11);
            for (int i12 = 0; i12 <= 3; i12++) {
                this.values[indexOfVector + i12] = value[i12];
            }
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
