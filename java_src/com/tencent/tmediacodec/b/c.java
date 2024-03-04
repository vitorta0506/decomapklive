package com.tencent.tmediacodec.b;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.tmediacodec.d.a;
/* loaded from: classes4.dex */
public final class c implements b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f34528a;

    public c(@NonNull MediaCodec mediaCodec) {
        this.f34528a = mediaCodec;
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void a(@Nullable com.tencent.tmediacodec.a.a aVar) {
        com.tencent.tmediacodec.f.a.d("DirectCodecWrapper", "DirectCodecWrapper setCodecCallback ignore...");
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void b() {
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void c() {
        com.tencent.tmediacodec.f.a.d("DirectCodecWrapper", "DirectCodecWrapper prepareToReUse ignore...");
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void d() {
        this.f34528a.start();
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void e() {
        this.f34528a.flush();
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void f() {
        this.f34528a.stop();
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void g() {
        this.f34528a.release();
    }

    @Override // com.tencent.tmediacodec.b.b
    public final int h() {
        return this.f34528a.dequeueInputBuffer(10000L);
    }

    @Override // com.tencent.tmediacodec.b.b
    @NonNull
    public final MediaCodec a() {
        return this.f34528a;
    }

    @Override // com.tencent.tmediacodec.b.b
    @NonNull
    public final a.b a(@NonNull d dVar) {
        com.tencent.tmediacodec.f.a.d("DirectCodecWrapper", "setCanReuseType setCodecCallback ignore...");
        return a.b.KEEP_CODEC_RESULT_NO;
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void a(@NonNull MediaFormat mediaFormat, @Nullable Surface surface) {
        this.f34528a.configure(mediaFormat, surface, (MediaCrypto) null, 0);
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void a(int i9) {
        this.f34528a.releaseOutputBuffer(i9, true);
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void a(int i9, int i10, long j10, int i11) {
        this.f34528a.queueInputBuffer(i9, 0, i10, j10, i11);
    }

    @Override // com.tencent.tmediacodec.b.b
    public final int a(@NonNull MediaCodec.BufferInfo bufferInfo, long j10) {
        return this.f34528a.dequeueOutputBuffer(bufferInfo, j10);
    }
}
