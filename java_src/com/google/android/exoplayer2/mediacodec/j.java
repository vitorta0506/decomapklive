package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.mediacodec.b;
import com.google.android.exoplayer2.mediacodec.l;
import com.google.android.exoplayer2.mediacodec.u;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
/* loaded from: classes.dex */
public final class j implements l.b {

    /* renamed from: a  reason: collision with root package name */
    private int f6282a = 0;

    /* renamed from: b  reason: collision with root package name */
    private boolean f6283b;

    @Override // com.google.android.exoplayer2.mediacodec.l.b
    public l a(l.a aVar) throws IOException {
        int i9;
        int i10 = l0.f6985a;
        if (i10 >= 23 && ((i9 = this.f6282a) == 1 || (i9 == 0 && i10 >= 31))) {
            int i11 = v.i(aVar.f6291c.f6111l);
            com.google.android.exoplayer2.util.r.f("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + l0.g0(i11));
            return new b.C0080b(i11, this.f6283b).a(aVar);
        }
        return new u.b().a(aVar);
    }
}
