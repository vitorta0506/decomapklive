package com.tencent.liteav.videoconsumer.decoder;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import com.tencent.liteav.base.storage.PersistStorage;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoconsumer.consumer.ServerVideoConsumerConfig;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final b f32244a;

    private c(b bVar) {
        this.f32244a = bVar;
    }

    public static Runnable a(b bVar) {
        return new c(bVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaCodecInfo[] codecInfos;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        b bVar = this.f32244a;
        int i9 = 0;
        if (ServerVideoConsumerConfig.isHWHevcDecodeAllowed() && LiteavSystemInfo.getSystemOSVersionInt() >= 21) {
            MediaCodecList mediaCodecList = new MediaCodecList(0);
            boolean z10 = false;
            for (MediaCodecInfo mediaCodecInfo : mediaCodecList.getCodecInfos()) {
                String[] supportedTypes = mediaCodecInfo.getSupportedTypes();
                if (!mediaCodecInfo.isEncoder()) {
                    int length = supportedTypes.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 < length) {
                            String str = supportedTypes[i10];
                            if (str.contains("video/hevc")) {
                                MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
                                if (capabilitiesForType != null && (videoCapabilities = capabilitiesForType.getVideoCapabilities()) != null) {
                                    boolean areSizeAndRateSupported = videoCapabilities.areSizeAndRateSupported(1080, 1920, 30.0d);
                                    boolean areSizeAndRateSupported2 = videoCapabilities.areSizeAndRateSupported(1920, 1080, 30.0d);
                                    LiteavLog.i("DecodeAbilityProvider", "got hevc decoder:%s, type:%s, supportPort= %b,supportLand=%b", mediaCodecInfo.getName(), str, Boolean.valueOf(areSizeAndRateSupported), Boolean.valueOf(areSizeAndRateSupported2));
                                    if (!areSizeAndRateSupported2 || !areSizeAndRateSupported) {
                                        MediaFormat mediaFormat = null;
                                        if (areSizeAndRateSupported2 || areSizeAndRateSupported) {
                                            if (!areSizeAndRateSupported2) {
                                                mediaFormat = MediaFormat.createVideoFormat("video/hevc", 1920, 1080);
                                            } else if (!areSizeAndRateSupported) {
                                                mediaFormat = MediaFormat.createVideoFormat("video/hevc", 1080, 1920);
                                            }
                                        }
                                        if (mediaFormat != null) {
                                            String findDecoderForFormat = mediaCodecList.findDecoderForFormat(mediaFormat);
                                            LiteavLog.i("DecodeAbilityProvider", "findDecoderForFormat hevc decodername:%s", findDecoderForFormat);
                                            if (findDecoderForFormat == null) {
                                            }
                                        }
                                    }
                                    z10 = true;
                                }
                            } else {
                                i10++;
                            }
                        }
                    }
                }
            }
            LiteavLog.i("DecodeAbilityProvider", "support hevc decoder:".concat(String.valueOf(z10)));
            i9 = z10 ? 1 : 0;
        }
        PersistStorage persistStorage = new PersistStorage(PersistStorage.GLOBAL_DOMAIN);
        persistStorage.put("Liteav.Video.android.local.decoder.enable.hw.hevc", i9);
        persistStorage.commit();
        synchronized (bVar) {
            bVar.f32241a.f32177c = b.a();
        }
    }
}
