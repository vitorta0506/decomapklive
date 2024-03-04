package com.tencent.thumbplayer.g.b;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.thumbplayer.g.f.a;
/* loaded from: classes4.dex */
public interface c {
    int a(long j10);

    int a(@NonNull MediaCodec.BufferInfo bufferInfo, long j10);

    @NonNull
    MediaCodec a();

    void a(int i9, int i10, int i11, long j10, int i12);

    void a(int i9, boolean z10);

    void a(@NonNull MediaFormat mediaFormat, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i9);

    void a(@NonNull Surface surface);

    void a(@Nullable com.tencent.thumbplayer.g.a.a aVar);

    @NonNull
    a.b b(@NonNull e eVar);

    void b();

    void c();

    void d();

    void e();

    void f();

    void g();
}
