package com.tencent.liteav.videoproducer.encoder;

import android.media.MediaFormat;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.videobase.common.CodecType;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.videobase.h;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public interface VideoEncoderDef {

    /* loaded from: classes4.dex */
    public enum BitrateMode {
        CBR(0),
        VBR(1),
        CQ(2);
        

        /* renamed from: d  reason: collision with root package name */
        private static final BitrateMode[] f32759d = values();
        int mValue;

        BitrateMode(int i9) {
            this.mValue = i9;
        }

        public static BitrateMode a(int i9) {
            BitrateMode[] bitrateModeArr;
            for (BitrateMode bitrateMode : f32759d) {
                if (i9 == bitrateMode.mValue) {
                    return bitrateMode;
                }
            }
            return VBR;
        }
    }

    /* loaded from: classes4.dex */
    public static class EncodeAbility {

        /* renamed from: a  reason: collision with root package name */
        public boolean f32761a = true;

        /* renamed from: b  reason: collision with root package name */
        public boolean f32762b = false;

        /* renamed from: c  reason: collision with root package name */
        public boolean f32763c = false;

        @CalledByNative("EncodeAbility")
        public boolean isSupportHEVC() {
            return this.f32763c;
        }

        @CalledByNative("EncodeAbility")
        public boolean isSupportRPS() {
            return this.f32761a;
        }

        @CalledByNative("EncodeAbility")
        public boolean isSupportSVC() {
            return this.f32762b;
        }
    }

    /* loaded from: classes4.dex */
    public enum EncodeStrategy {
        PREFER_HARDWARE(0),
        PREFER_SOFTWARE(1),
        USE_HARDWARE_ONLY(2),
        USE_SOFTWARE_ONLY(3);
        

        /* renamed from: e  reason: collision with root package name */
        private static final EncodeStrategy[] f32768e = values();
        int mValue;

        EncodeStrategy(int i9) {
            this.mValue = i9;
        }

        public static EncodeStrategy a(int i9) {
            EncodeStrategy[] encodeStrategyArr;
            for (EncodeStrategy encodeStrategy : f32768e) {
                if (encodeStrategy.mValue == i9) {
                    return encodeStrategy;
                }
            }
            return PREFER_HARDWARE;
        }
    }

    /* loaded from: classes4.dex */
    public enum EncoderProfile {
        PROFILE_BASELINE(1),
        PROFILE_MAIN(2),
        PROFILE_HIGH(3),
        PROFILE_BASELINERPS(4),
        PROFILE_MAINRPS(5),
        PROFILE_HIGHRPS(6);
        

        /* renamed from: g  reason: collision with root package name */
        private static final EncoderProfile[] f32776g = values();
        int mValue;

        EncoderProfile(int i9) {
            this.mValue = i9;
        }

        public static EncoderProfile a(int i9) {
            EncoderProfile[] encoderProfileArr;
            for (EncoderProfile encoderProfile : f32776g) {
                if (i9 == encoderProfile.mValue) {
                    return encoderProfile;
                }
            }
            return PROFILE_BASELINE;
        }
    }

    /* loaded from: classes4.dex */
    public static class EncoderProperty {

        /* renamed from: a  reason: collision with root package name */
        public a f32778a;

        /* renamed from: b  reason: collision with root package name */
        public ReferenceStrategy f32779b;

        /* renamed from: c  reason: collision with root package name */
        public CodecType f32780c;

        public EncoderProperty(a aVar, ReferenceStrategy referenceStrategy, CodecType codecType) {
            this.f32778a = aVar;
            this.f32779b = referenceStrategy;
            this.f32780c = codecType;
        }

        @CalledByNative("EncoderProperty")
        public int getCodecType() {
            return this.f32780c.mValue;
        }

        @CalledByNative("EncoderProperty")
        public int getEncoderType() {
            return this.f32778a.value;
        }

        @CalledByNative("EncoderProperty")
        public int getReferenceStrategy() {
            return this.f32779b.mValue;
        }
    }

    /* loaded from: classes4.dex */
    public enum ReferenceStrategy {
        FIX_GOP(0),
        RPS(1),
        SVC(2),
        UNLIMITED_GOP(3);
        

        /* renamed from: e  reason: collision with root package name */
        private static final ReferenceStrategy[] f32785e = values();
        int mValue;

        ReferenceStrategy(int i9) {
            this.mValue = i9;
        }

        public static ReferenceStrategy a(int i9) {
            ReferenceStrategy[] referenceStrategyArr;
            for (ReferenceStrategy referenceStrategy : f32785e) {
                if (i9 == referenceStrategy.mValue) {
                    return referenceStrategy;
                }
            }
            return FIX_GOP;
        }
    }

    /* loaded from: classes4.dex */
    public interface VideoEncoderDataListener {
        void onEncodedFail(h.a aVar);

        void onEncodedNAL(EncodedVideoFrame encodedVideoFrame, boolean z10);

        void onOutputFormatChanged(MediaFormat mediaFormat);
    }

    /* loaded from: classes4.dex */
    public enum a {
        HARDWARE(1),
        SOFTWARE(2);
        
        int value;

        a(int i9) {
            this.value = i9;
        }
    }
}
