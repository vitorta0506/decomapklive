package com.tencent.thumbplayer.g.b;

import android.media.MediaCodec;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.g.f.a;
/* loaded from: classes4.dex */
public final class a extends f {
    public a(@NonNull MediaCodec mediaCodec, @NonNull e eVar) {
        super(mediaCodec, eVar);
    }

    @Override // com.tencent.thumbplayer.g.b.f
    @NonNull
    public final a.b a(@NonNull e eVar) {
        return com.tencent.thumbplayer.g.f.a.a(this, eVar) ? a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION : a.b.KEEP_CODEC_RESULT_NO;
    }

    @Override // com.tencent.thumbplayer.g.b.f
    @NonNull
    public final String toString() {
        return "AudioCodecWrapper[" + hashCode() + ']';
    }
}
