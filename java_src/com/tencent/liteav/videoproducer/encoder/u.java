package com.tencent.liteav.videoproducer.encoder;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
/* loaded from: classes4.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    boolean f32959a = true;

    /* renamed from: b  reason: collision with root package name */
    boolean f32960b = true;

    /* renamed from: c  reason: collision with root package name */
    private final MediaCodec f32961c;

    /* renamed from: d  reason: collision with root package name */
    private final String f32962d;

    /* renamed from: e  reason: collision with root package name */
    private final VideoEncodeParams f32963e;

    /* renamed from: f  reason: collision with root package name */
    private final ServerVideoProducerConfig f32964f;

    /* renamed from: com.tencent.liteav.videoproducer.encoder.u$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32965a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f32966b;

        static {
            int[] iArr = new int[VideoEncoderDef.EncoderProfile.values().length];
            f32966b = iArr;
            try {
                iArr[VideoEncoderDef.EncoderProfile.PROFILE_MAIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32966b[VideoEncoderDef.EncoderProfile.PROFILE_HIGH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32966b[VideoEncoderDef.EncoderProfile.PROFILE_BASELINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[VideoEncoderDef.BitrateMode.values().length];
            f32965a = iArr2;
            try {
                iArr2[VideoEncoderDef.BitrateMode.CBR.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32965a[VideoEncoderDef.BitrateMode.VBR.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32965a[VideoEncoderDef.BitrateMode.CQ.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public u(MediaCodec mediaCodec, String str, VideoEncodeParams videoEncodeParams, ServerVideoProducerConfig serverVideoProducerConfig) {
        this.f32961c = mediaCodec;
        this.f32962d = str;
        this.f32963e = videoEncodeParams;
        this.f32964f = serverVideoProducerConfig;
    }

    @RequiresApi(api = 21)
    private boolean a(int i9, MediaCodecInfo.EncoderCapabilities encoderCapabilities) {
        ServerVideoProducerConfig serverVideoProducerConfig;
        Boolean isHardwareEncoderBitrateModeCBRSupported;
        if (i9 == 2 && (serverVideoProducerConfig = this.f32964f) != null && (isHardwareEncoderBitrateModeCBRSupported = serverVideoProducerConfig.isHardwareEncoderBitrateModeCBRSupported()) != null) {
            return isHardwareEncoderBitrateModeCBRSupported.booleanValue();
        }
        return encoderCapabilities.isBitrateModeSupported(i9);
    }

    @RequiresApi(api = 23)
    private static Pair<Integer, Integer> a(MediaFormat mediaFormat) {
        int i9;
        int i10 = 0;
        try {
            i9 = mediaFormat.getInteger("profile");
        } catch (Exception e10) {
            LiteavLog.i("MediaFormatBuilder", "get profile fail.", e10);
            i9 = 0;
        }
        try {
            i10 = mediaFormat.getInteger("level");
        } catch (Exception e11) {
            LiteavLog.i("MediaFormatBuilder", "get level fail.", e11);
        }
        return new Pair<>(Integer.valueOf(i9), Integer.valueOf(i10));
    }

    @RequiresApi(api = 21)
    private MediaCodecInfo.VideoCapabilities a(int i9, int i10) {
        MediaCodecInfo.CodecCapabilities createFromProfileLevel;
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 21 && (createFromProfileLevel = MediaCodecInfo.CodecCapabilities.createFromProfileLevel(this.f32962d, i9, i10)) != null) {
            return createFromProfileLevel.getVideoCapabilities();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:143:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x013d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.media.MediaFormat a() {
        /*
            Method dump skipped, instructions count: 1131
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoproducer.encoder.u.a():android.media.MediaFormat");
    }
}
