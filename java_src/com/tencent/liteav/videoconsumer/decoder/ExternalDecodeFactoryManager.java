package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.util.LiteavLog;
/* loaded from: classes4.dex */
public class ExternalDecodeFactoryManager {

    /* renamed from: a  reason: collision with root package name */
    private static p f32141a;

    public static synchronized boolean a() {
        synchronized (ExternalDecodeFactoryManager.class) {
            p pVar = f32141a;
            if (pVar == null) {
                return false;
            }
            long a10 = pVar.a();
            if (a10 != 0) {
                f32141a.a(a10);
                return true;
            }
            return false;
        }
    }

    @CalledByNative
    public static synchronized long createH265Decoder() {
        synchronized (ExternalDecodeFactoryManager.class) {
            p pVar = f32141a;
            if (pVar == null) {
                return 0L;
            }
            return pVar.a();
        }
    }

    @CalledByNative
    public static synchronized void destroyH265Decoder(long j10) {
        synchronized (ExternalDecodeFactoryManager.class) {
            p pVar = f32141a;
            if (pVar == null) {
                LiteavLog.w("ExternalDecodeFactoryManager", "DestroyHevcDecoder sDecoderFactory is null: ".concat(String.valueOf(j10)));
            } else {
                pVar.a(j10);
            }
        }
    }

    public static synchronized void a(p pVar) {
        synchronized (ExternalDecodeFactoryManager.class) {
            f32141a = pVar;
        }
    }
}
