package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.videobase.common.CodecType;
import com.tencent.liteav.videoconsumer.decoder.az;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public interface VideoDecoderDef {

    /* loaded from: classes4.dex */
    public enum ConsumerScene {
        UNKNOWN(-1),
        LIVE(0),
        RTC(1);
        

        /* renamed from: d  reason: collision with root package name */
        private static final ConsumerScene[] f32173d = values();
        private int mValue;

        ConsumerScene(int i9) {
            this.mValue = i9;
        }

        public static ConsumerScene a(int i9) {
            ConsumerScene[] consumerSceneArr;
            for (ConsumerScene consumerScene : f32173d) {
                if (consumerScene.mValue == i9) {
                    return consumerScene;
                }
            }
            return UNKNOWN;
        }
    }

    /* loaded from: classes4.dex */
    public static class DecodeAbility {

        /* renamed from: a  reason: collision with root package name */
        public boolean f32175a = true;

        /* renamed from: b  reason: collision with root package name */
        public boolean f32176b = false;

        /* renamed from: c  reason: collision with root package name */
        public boolean f32177c = true;

        @CalledByNative("DecodeAbility")
        public boolean isSupportHEVC() {
            return this.f32177c;
        }

        @CalledByNative("DecodeAbility")
        public boolean isSupportRPS() {
            return this.f32175a;
        }

        @CalledByNative("DecodeAbility")
        public boolean isSupportSVC() {
            return this.f32176b;
        }
    }

    /* loaded from: classes4.dex */
    public static class DecoderProperty {

        /* renamed from: a  reason: collision with root package name */
        public az.a f32178a;

        /* renamed from: b  reason: collision with root package name */
        public CodecType f32179b;

        public DecoderProperty(az.a aVar, CodecType codecType) {
            this.f32178a = aVar;
            this.f32179b = codecType;
        }

        @CalledByNative("DecoderProperty")
        public int getCodecType() {
            return this.f32179b.mValue;
        }

        @CalledByNative("DecoderProperty")
        public int getDecoderType() {
            return this.f32178a.mValue;
        }
    }
}
