package com.tencent.thumbplayer.api.capability;
/* loaded from: classes4.dex */
public class TPHDRVersionRange {
    public int lowerboundAndroidAPILevel;
    public int lowerboundPatchVersion;
    public int lowerboundSystemVersion;
    public int upperboundAndroidAPILevel;
    public int upperboundPatchVersion;
    public int upperboundSystemVersion;

    public TPHDRVersionRange(int i9, int i10) {
        this.upperboundAndroidAPILevel = i9;
        this.lowerboundAndroidAPILevel = i10;
    }

    public TPHDRVersionRange(int i9, int i10, int i11, int i12) {
        this.upperboundSystemVersion = i9;
        this.lowerboundSystemVersion = i10;
        this.upperboundPatchVersion = i11;
        this.lowerboundPatchVersion = i12;
    }
}
