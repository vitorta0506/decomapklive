package com.tencent.liteav.videoproducer.encoder;

import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.v;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class bd implements v.a {

    /* renamed from: a  reason: collision with root package name */
    final String f32917a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    IVideoReporter f32918b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    Map<Long, Long> f32919c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    long f32920d = 0;

    /* renamed from: e  reason: collision with root package name */
    long f32921e = 0;

    /* renamed from: f  reason: collision with root package name */
    com.tencent.liteav.base.util.v f32922f;

    public bd(@NonNull IVideoReporter iVideoReporter, VideoProducerDef.StreamType streamType) {
        this.f32918b = iVideoReporter;
        this.f32917a = "VECStatistics_" + streamType + "_" + hashCode();
    }

    @Override // com.tencent.liteav.base.util.v.a
    public final void onTimeout() {
        long j10 = this.f32921e;
        if (j10 > 0) {
            this.f32918b.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_ENCODE_AVERAGE_ENCODE_COST, Long.valueOf(this.f32920d / j10));
        }
    }
}
