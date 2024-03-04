package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.base.storage.PersistStorage;
import com.tencent.liteav.videoconsumer.consumer.ServerVideoConsumerConfig;
import com.tencent.liteav.videoconsumer.decoder.VideoDecoderDef;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final VideoDecoderDef.DecodeAbility f32241a;

    /* renamed from: b  reason: collision with root package name */
    private final com.tencent.liteav.base.util.j f32242b;

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final b f32243a = new b((byte) 0);
    }

    /* synthetic */ b(byte b10) {
        this();
    }

    public static boolean a() {
        return b() || ExternalDecodeFactoryManager.a();
    }

    public static boolean b() {
        if (ServerVideoConsumerConfig.isHWHevcDecodeAllowed()) {
            Integer num = new PersistStorage(PersistStorage.GLOBAL_DOMAIN).getInt("Liteav.Video.android.local.decoder.enable.hw.hevc");
            return num == null || num.intValue() > 0;
        }
        return false;
    }

    private b() {
        VideoDecoderDef.DecodeAbility decodeAbility = new VideoDecoderDef.DecodeAbility();
        this.f32241a = decodeAbility;
        com.tencent.liteav.base.util.j jVar = new com.tencent.liteav.base.util.j();
        this.f32242b = jVar;
        jVar.a(c.a(this));
        synchronized (this) {
            decodeAbility.f32177c = a();
        }
    }
}
