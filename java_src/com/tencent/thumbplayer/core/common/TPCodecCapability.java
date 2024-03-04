package com.tencent.thumbplayer.core.common;

import java.io.Serializable;
/* loaded from: classes4.dex */
public interface TPCodecCapability {
    public static final int DEFAULT_FRAMERATE = 30;
    public static final int DEFAULT_INVALID_PARAMETER = -1;

    /* loaded from: classes4.dex */
    public static class TPACodecPropertyRange implements Serializable {
        public int level;
        public int lowerboundBitRate;
        public int lowerboundChannels;
        public int lowerboundSampleRate;
        public int profile;
        public int upperboundBitRate;
        public int upperboundChannels;
        public int upperboundSampleRate;

        public void set(int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            this.upperboundSampleRate = i9;
            this.upperboundChannels = i10;
            this.upperboundBitRate = i11;
            this.lowerboundSampleRate = i12;
            this.lowerboundChannels = i13;
            this.lowerboundBitRate = i14;
            this.profile = i15;
            this.level = i16;
        }
    }

    /* loaded from: classes4.dex */
    public static class TPCodecMaxCapability implements Serializable {
        public int maxBitRate;
        public int maxChannels;
        public int maxFramerateFormaxLumaSamples;
        public int maxLevel;
        public int maxLumaSamples;
        public int maxProfile;
        public int maxSampleRate;

        @Deprecated
        TPCodecMaxCapability(int i9, int i10, int i11) {
            this.maxLumaSamples = i9;
            this.maxProfile = i10;
            this.maxLevel = i11;
            this.maxFramerateFormaxLumaSamples = 30;
            this.maxBitRate = -1;
            this.maxSampleRate = -1;
            this.maxChannels = -1;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public TPCodecMaxCapability(int i9, int i10, int i11, int i12) {
            this.maxLumaSamples = i9;
            this.maxProfile = i10;
            this.maxLevel = i11;
            this.maxFramerateFormaxLumaSamples = i12;
            this.maxBitRate = -1;
            this.maxSampleRate = -1;
            this.maxChannels = -1;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public TPCodecMaxCapability(int i9, int i10, int i11, int i12, int i13) {
            this.maxProfile = i9;
            this.maxLevel = i10;
            this.maxBitRate = i12;
            this.maxSampleRate = i11;
            this.maxChannels = i13;
            this.maxLumaSamples = -1;
            this.maxFramerateFormaxLumaSamples = -1;
        }
    }

    /* loaded from: classes4.dex */
    public static class TPHdrSupportVersionRange implements Serializable {
        public int lowerboundAndroidAPILevel;
        public int lowerboundPatchVersion;
        public int lowerboundSystemVersion;
        public int upperboundAndroidAPILevel;
        public int upperboundPatchVersion;
        public int upperboundSystemVersion;

        public TPHdrSupportVersionRange(int i9, int i10) {
            this.upperboundAndroidAPILevel = i9;
            this.lowerboundAndroidAPILevel = i10;
        }

        public TPHdrSupportVersionRange(int i9, int i10, int i11, int i12) {
            this.upperboundSystemVersion = i9;
            this.lowerboundSystemVersion = i10;
            this.upperboundPatchVersion = i11;
            this.lowerboundPatchVersion = i12;
        }
    }

    /* loaded from: classes4.dex */
    public static class TPVCodecPropertyRange implements Serializable {
        public int level;
        public int lowerboundHeight;
        public int lowerboundWidth;
        public int profile;
        public int upperboundHeight;
        public int upperboundWidth;

        public void set(int i9, int i10, int i11, int i12, int i13, int i14) {
            this.upperboundWidth = i9;
            this.upperboundHeight = i10;
            this.lowerboundWidth = i11;
            this.lowerboundHeight = i12;
            this.profile = i13;
            this.level = i14;
        }
    }
}
