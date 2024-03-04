package com.tencent.thumbplayer.api.capability;
/* loaded from: classes4.dex */
public class TPACodecCapabilityForGet {
    private int maxBitrate;
    private int maxChannels;
    private int maxLevel;
    private int maxProfile;
    private int maxSamplerate;

    public TPACodecCapabilityForGet(int i9, int i10, int i11, int i12, int i13) {
        this.maxSamplerate = i9;
        this.maxChannels = i10;
        this.maxBitrate = i11;
        this.maxProfile = i12;
        this.maxLevel = i13;
    }

    public int getMaxBitrate() {
        return this.maxBitrate;
    }

    public int getMaxChannels() {
        return this.maxChannels;
    }

    public int getMaxLevel() {
        return this.maxLevel;
    }

    public int getMaxProfile() {
        return this.maxProfile;
    }

    public int getMaxSamplerate() {
        return this.maxSamplerate;
    }
}
