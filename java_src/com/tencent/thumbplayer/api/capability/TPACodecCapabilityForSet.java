package com.tencent.thumbplayer.api.capability;
/* loaded from: classes4.dex */
public class TPACodecCapabilityForSet {
    private int level;
    private int lowerboundBitrate;
    private int lowerboundChannels;
    private int lowerboundSamplerate;
    private int profile;
    private int upperboundBitrate;
    private int upperboundChannels;
    private int upperboundSamplerate;

    public TPACodecCapabilityForSet(int i9, int i10, int i11) {
        this.upperboundSamplerate = i9;
        this.upperboundChannels = i10;
        this.upperboundBitrate = i11;
        this.lowerboundSamplerate = 0;
        this.lowerboundChannels = 0;
        this.lowerboundBitrate = 0;
        this.profile = 0;
        this.level = 0;
    }

    public TPACodecCapabilityForSet(int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.upperboundSamplerate = i9;
        this.upperboundChannels = i10;
        this.upperboundBitrate = i11;
        this.lowerboundSamplerate = i12;
        this.lowerboundChannels = i13;
        this.lowerboundBitrate = i14;
        this.profile = i15;
        this.level = i16;
    }

    public int getLevelForSet() {
        return this.level;
    }

    public int getLowerboundBitrate() {
        return this.lowerboundBitrate;
    }

    public int getLowerboundChannels() {
        return this.lowerboundChannels;
    }

    public int getLowerboundSamplerate() {
        return this.lowerboundSamplerate;
    }

    public int getProfileForSet() {
        return this.profile;
    }

    public int getUpperboundBitrate() {
        return this.upperboundBitrate;
    }

    public int getUpperboundChannels() {
        return this.upperboundChannels;
    }

    public int getUpperboundSamplerate() {
        return this.upperboundSamplerate;
    }
}
