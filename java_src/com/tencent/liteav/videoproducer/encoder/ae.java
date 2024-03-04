package com.tencent.liteav.videoproducer.encoder;

import android.media.MediaCodec;
import android.os.Looper;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.v;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ae implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final w f32800a;

    private ae(w wVar) {
        this.f32800a = wVar;
    }

    public static Runnable a(w wVar) {
        return new ae(wVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        final w wVar = this.f32800a;
        LiteavLog.i(wVar.f32977a, "signalEndOfStream");
        MediaCodec mediaCodec = wVar.f32980d;
        if (mediaCodec != null) {
            try {
                mediaCodec.signalEndOfInputStream();
            } catch (Throwable th2) {
                LiteavLog.e(wVar.f32977a, "signalEndOfStream failed.", th2);
            }
        }
        if (wVar.f32984h == null) {
            com.tencent.liteav.base.util.v vVar = new com.tencent.liteav.base.util.v(Looper.myLooper(), new v.a(wVar) { // from class: com.tencent.liteav.videoproducer.encoder.y

                /* renamed from: a  reason: collision with root package name */
                private final w f33004a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f33004a = wVar;
                }

                @Override // com.tencent.liteav.base.util.v.a
                public final void onTimeout() {
                    this.f33004a.g();
                }
            });
            wVar.f32984h = vVar;
            vVar.a(0, 30);
        }
    }
}
