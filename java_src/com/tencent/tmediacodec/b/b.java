package com.tencent.tmediacodec.b;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.tmediacodec.d.a;
/* loaded from: classes4.dex */
public interface b {
    int a(@NonNull MediaCodec.BufferInfo bufferInfo, long j10);

    @NonNull
    MediaCodec a();

    @NonNull
    a.b a(@NonNull d dVar);

    void a(int i9);

    void a(int i9, int i10, long j10, int i11);

    void a(@NonNull MediaFormat mediaFormat, @Nullable Surface surface);

    void a(@Nullable com.tencent.tmediacodec.a.a aVar);

    void b();

    void c();

    void d();

    void e();

    void f();

    void g();

    int h();
}
