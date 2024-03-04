package com.tencent.thumbplayer.g.b;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.thumbplayer.g.f.a;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public final class d implements c {

    /* renamed from: a  reason: collision with root package name */
    private static AtomicInteger f33992a = new AtomicInteger(0);
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final MediaCodec f33993b;

    public d(@NonNull MediaCodec mediaCodec) {
        this.f33993b = mediaCodec;
        com.tencent.thumbplayer.g.h.b.c("DirectCodecWrapper", "DirectCodecWrapper sCodecNum:" + f33992a.incrementAndGet());
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public final int a(long j10) {
        return this.f33993b.dequeueInputBuffer(j10);
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public final int a(@NonNull MediaCodec.BufferInfo bufferInfo, long j10) {
        return this.f33993b.dequeueOutputBuffer(bufferInfo, j10);
    }

    @Override // com.tencent.thumbplayer.g.b.c
    @NonNull
    public final MediaCodec a() {
        return this.f33993b;
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public final void a(int i9, int i10, int i11, long j10, int i12) {
        this.f33993b.queueInputBuffer(i9, i10, i11, j10, i12);
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public final void a(int i9, boolean z10) {
        this.f33993b.releaseOutputBuffer(i9, z10);
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public final void a(@NonNull MediaFormat mediaFormat, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i9) {
        this.f33993b.configure(mediaFormat, surface, mediaCrypto, i9);
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public final void a(@NonNull Surface surface) {
        com.tencent.thumbplayer.g.h.b.c("DirectCodecWrapper", "DirectCodecWrapper setOutputSurface start, surface:".concat(String.valueOf(surface)));
        this.f33993b.setOutputSurface(surface);
        com.tencent.thumbplayer.g.h.b.c("DirectCodecWrapper", "DirectCodecWrapper setOutputSurface end ...");
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public final void a(@Nullable com.tencent.thumbplayer.g.a.a aVar) {
        com.tencent.thumbplayer.g.h.b.d("DirectCodecWrapper", "DirectCodecWrapper setCodecCallback ignore...");
    }

    @Override // com.tencent.thumbplayer.g.b.c
    @NonNull
    public final a.b b(@NonNull e eVar) {
        com.tencent.thumbplayer.g.h.b.d("DirectCodecWrapper", "setCanReuseType setCodecCallback ignore...");
        return a.b.KEEP_CODEC_RESULT_NO;
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public final void b() {
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public final void c() {
        com.tencent.thumbplayer.g.h.b.d("DirectCodecWrapper", "DirectCodecWrapper prepareToReUse ignore...");
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public final void d() {
        com.tencent.thumbplayer.g.h.b.c("DirectCodecWrapper", "DirectCodecWrapper start ...");
        this.f33993b.start();
        com.tencent.thumbplayer.g.h.b.c("DirectCodecWrapper", "DirectCodecWrapper start end...");
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public final void e() {
        com.tencent.thumbplayer.g.h.b.c("DirectCodecWrapper", "DirectCodecWrapper flush start ...");
        this.f33993b.flush();
        com.tencent.thumbplayer.g.h.b.c("DirectCodecWrapper", "DirectCodecWrapper flush end ...");
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public final void f() {
        com.tencent.thumbplayer.g.h.b.c("DirectCodecWrapper", "DirectCodecWrapper stop before ...");
        this.f33993b.stop();
        com.tencent.thumbplayer.g.h.b.c("DirectCodecWrapper", "DirectCodecWrapper stop end ...");
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public final void g() {
        com.tencent.thumbplayer.g.h.b.c("DirectCodecWrapper", "DirectCodecWrapper release start ...");
        this.f33993b.release();
        com.tencent.thumbplayer.g.h.b.c("DirectCodecWrapper", "DirectCodecWrapper release end ... sCodecNum:" + f33992a.decrementAndGet());
    }
}
