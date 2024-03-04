package com.tencent.thumbplayer.g.b;

import android.media.MediaCodec;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.g.f.a;
/* loaded from: classes4.dex */
public final class g extends f {
    public g(@NonNull MediaCodec mediaCodec, @NonNull e eVar) {
        super(mediaCodec, eVar);
    }

    @Override // com.tencent.thumbplayer.g.b.f
    @NonNull
    public final a.b a(@NonNull e eVar) {
        if (com.tencent.thumbplayer.g.f.a.a(this, eVar)) {
            int i9 = eVar.f33995b;
            b bVar = this.f34013g;
            if (i9 <= bVar.f33984a && eVar.f33996c <= bVar.f33985b && com.tencent.thumbplayer.g.h.c.a(this, eVar) <= this.f34013g.f33986c) {
                return eVar.a(this.f34011e) ? a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION : a.b.KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION;
            }
        }
        return a.b.KEEP_CODEC_RESULT_NO;
    }

    @Override // com.tencent.thumbplayer.g.b.f
    public final boolean j() {
        return super.j() && this.f34012f != null && this.f34011e.f33997d == 0;
    }

    @Override // com.tencent.thumbplayer.g.b.f
    @NonNull
    public final String toString() {
        return "VideoCodecWrapper[" + hashCode() + ']';
    }
}
