package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.storage.PersistStorage;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class EncodeAbilityProvider {
    private static final int DEVICE_SUPPORT_CHECK_FPS = 30;
    private static final int DEVICE_SUPPORT_CHECK_HEIGHT = 1920;
    private static final int DEVICE_SUPPORT_CHECK_WIDTH = 1080;
    private static final String KEY_HEVC_ENCODE_ABILITY = "Liteav.Video.android.local.encoder.enable.hw.hevc";
    private static final String TAG = "EncodeAbilityProvider";
    private final com.tencent.liteav.base.util.j mAsyncRunner;
    private final VideoEncoderDef.EncodeAbility mEncodeAbility;

    /* loaded from: classes4.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final EncodeAbilityProvider f32755a = new EncodeAbilityProvider();
    }

    @CalledByNative
    public static EncodeAbilityProvider getInstance() {
        return a.f32755a;
    }

    private static boolean isDeviceHWHevcEncodeSupport(int i9, int i10, int i11) {
        if (ServerVideoProducerConfig.isHWHevcEncodeAllowed() && LiteavSystemInfo.getSystemOSVersionInt() >= 21) {
            return isMediaCodecSupportHevc(i9, i10, i11);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x005b, code lost:
        continue;
     */
    @androidx.annotation.RequiresApi(api = 21)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isMediaCodecSupportHevc(int r12, int r13, int r14) {
        /*
            android.media.MediaCodecList r0 = new android.media.MediaCodecList
            r1 = 1
            r0.<init>(r1)
            android.media.MediaCodecInfo[] r0 = r0.getCodecInfos()
            int r2 = r0.length
            r3 = 0
            r4 = 0
        Ld:
            java.lang.String r5 = "EncodeAbilityProvider"
            if (r4 >= r2) goto L5e
            r6 = r0[r4]
            boolean r7 = r6.isEncoder()
            if (r7 == 0) goto L5b
            java.lang.String[] r7 = r6.getSupportedTypes()
            int r8 = r7.length
            r9 = 0
        L1f:
            if (r9 >= r8) goto L5b
            r10 = r7[r9]
            java.lang.String r11 = "video/hevc"
            boolean r11 = r10.contains(r11)
            if (r11 == 0) goto L58
            android.media.MediaCodecInfo$CodecCapabilities r7 = r6.getCapabilitiesForType(r10)
            if (r7 != 0) goto L33
            return r3
        L33:
            android.media.MediaCodecInfo$VideoCapabilities r7 = r7.getVideoCapabilities()
            if (r7 != 0) goto L3a
            return r3
        L3a:
            double r8 = (double) r14
            boolean r11 = r7.areSizeAndRateSupported(r12, r13, r8)
            if (r11 == 0) goto L5b
            boolean r7 = r7.areSizeAndRateSupported(r13, r12, r8)
            if (r7 == 0) goto L5b
            r12 = 2
            java.lang.Object[] r12 = new java.lang.Object[r12]
            java.lang.String r13 = r6.getName()
            r12[r3] = r13
            r12[r1] = r10
            java.lang.String r13 = "got hevc encoder:%s, type:%s"
            com.tencent.liteav.base.util.LiteavLog.i(r5, r13, r12)
            return r1
        L58:
            int r9 = r9 + 1
            goto L1f
        L5b:
            int r4 = r4 + 1
            goto Ld
        L5e:
            java.lang.String r12 = "not got hevc encoder"
            com.tencent.liteav.base.util.LiteavLog.w(r5, r12)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoproducer.encoder.EncodeAbilityProvider.isMediaCodecSupportHevc(int, int, int):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$new$0(EncodeAbilityProvider encodeAbilityProvider) {
        boolean z10;
        boolean isDeviceHWHevcEncodeSupport = isDeviceHWHevcEncodeSupport(DEVICE_SUPPORT_CHECK_WIDTH, DEVICE_SUPPORT_CHECK_HEIGHT, 30);
        PersistStorage persistStorage = new PersistStorage(PersistStorage.GLOBAL_DOMAIN);
        persistStorage.put(KEY_HEVC_ENCODE_ABILITY, isDeviceHWHevcEncodeSupport ? 1 : 0);
        persistStorage.commit();
        synchronized (encodeAbilityProvider) {
            VideoEncoderDef.EncodeAbility encodeAbility = encodeAbilityProvider.mEncodeAbility;
            if (!encodeAbilityProvider.isHWHevcEncodeSupport() && !encodeAbilityProvider.isSWHevcEncodeSupport()) {
                z10 = false;
                encodeAbility.f32763c = z10;
            }
            z10 = true;
            encodeAbility.f32763c = z10;
        }
    }

    public VideoEncoderDef.EncodeAbility getEncodeAbility() {
        return this.mEncodeAbility;
    }

    @CalledByNative
    public boolean isHWHevcEncodeSupport() {
        Integer num;
        return ServerVideoProducerConfig.isHWHevcEncodeAllowed() && (num = new PersistStorage(PersistStorage.GLOBAL_DOMAIN).getInt(KEY_HEVC_ENCODE_ABILITY)) != null && num.intValue() > 0;
    }

    public boolean isHevcEncodeSupport() {
        return this.mEncodeAbility.f32763c;
    }

    public boolean isSWHevcEncodeSupport() {
        return false;
    }

    public void setHevcEncodeSupported(boolean z10) {
        this.mEncodeAbility.f32763c = z10;
    }

    public void setRPSEncodeSupported(boolean z10) {
        this.mEncodeAbility.f32761a = z10;
    }

    private EncodeAbilityProvider() {
        boolean z10;
        VideoEncoderDef.EncodeAbility encodeAbility = new VideoEncoderDef.EncodeAbility();
        this.mEncodeAbility = encodeAbility;
        com.tencent.liteav.base.util.j jVar = new com.tencent.liteav.base.util.j();
        this.mAsyncRunner = jVar;
        jVar.a(com.tencent.liteav.videoproducer.encoder.a.a(this));
        synchronized (this) {
            if (!isHWHevcEncodeSupport() && !isSWHevcEncodeSupport()) {
                z10 = false;
                encodeAbility.f32763c = z10;
            }
            z10 = true;
            encodeAbility.f32763c = z10;
        }
    }
}
