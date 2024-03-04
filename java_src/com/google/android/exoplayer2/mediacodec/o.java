package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import java.util.List;
/* loaded from: classes.dex */
public interface o {

    /* renamed from: a  reason: collision with root package name */
    public static final o f6307a = new o() { // from class: com.google.android.exoplayer2.mediacodec.n
        @Override // com.google.android.exoplayer2.mediacodec.o
        public final List a(String str, boolean z10, boolean z11) {
            return MediaCodecUtil.s(str, z10, z11);
        }
    };

    List<m> a(String str, boolean z10, boolean z11) throws MediaCodecUtil.DecoderQueryException;
}
