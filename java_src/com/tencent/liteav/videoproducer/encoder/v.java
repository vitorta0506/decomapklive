package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
/* loaded from: classes4.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    final String f32967a;

    /* renamed from: h  reason: collision with root package name */
    a f32974h;

    /* renamed from: b  reason: collision with root package name */
    double f32968b = 0.0d;

    /* renamed from: c  reason: collision with root package name */
    long f32969c = 0;

    /* renamed from: d  reason: collision with root package name */
    long f32970d = 0;

    /* renamed from: e  reason: collision with root package name */
    long f32971e = 0;

    /* renamed from: f  reason: collision with root package name */
    long f32972f = 0;

    /* renamed from: g  reason: collision with root package name */
    long f32973g = 0;

    /* renamed from: i  reason: collision with root package name */
    int f32975i = Math.max(1000, 1000);

    /* renamed from: j  reason: collision with root package name */
    int f32976j = Math.max(1000, 1000);

    /* loaded from: classes4.dex */
    public interface a {
        void a(double d10);

        void a(long j10);
    }

    public v(a aVar, VideoProducerDef.StreamType streamType) {
        this.f32974h = aVar;
        this.f32967a = "RealFpsAndBitrateCaculate_" + streamType + "_" + hashCode();
    }
}
