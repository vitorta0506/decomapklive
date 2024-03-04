package com.tencent.thumbplayer.api.capability;
/* loaded from: classes4.dex */
public class TPVCodecCapabilityForSet {
    private int level;
    private int lowerboundHeight;
    private int lowerboundWidth;
    private int profile;
    private int upperboundHeight;
    private int upperboundWidth;

    public TPVCodecCapabilityForSet(int i9, int i10) {
        this.upperboundWidth = i9;
        this.upperboundHeight = i10;
        this.lowerboundWidth = 0;
        this.lowerboundHeight = 0;
        this.profile = -1;
        this.level = -1;
    }

    public TPVCodecCapabilityForSet(int i9, int i10, int i11) {
        this.upperboundWidth = i9;
        this.upperboundHeight = i10;
        this.profile = i11;
        this.lowerboundWidth = 0;
        this.lowerboundHeight = 0;
        this.level = -1;
    }

    public TPVCodecCapabilityForSet(int i9, int i10, int i11, int i12, int i13, int i14) {
        this.upperboundWidth = i9;
        this.upperboundHeight = i10;
        this.lowerboundWidth = i11;
        this.lowerboundHeight = i12;
        this.profile = i13;
        this.level = i14;
    }

    public int getLevel() {
        return this.level;
    }

    public int getLowerboundHeight() {
        return this.lowerboundHeight;
    }

    public int getLowerboundWidth() {
        return this.lowerboundWidth;
    }

    public int getProfile() {
        return this.profile;
    }

    public int getUpperboundHeight() {
        return this.upperboundHeight;
    }

    public int getUpperboundWidth() {
        return this.upperboundWidth;
    }
}
