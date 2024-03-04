package com.google.android.exoplayer2.video;

import android.view.Surface;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.m;
/* loaded from: classes2.dex */
public class MediaCodecVideoDecoderException extends MediaCodecDecoderException {
    public final boolean isSurfaceValid;
    public final int surfaceIdentityHashCode;

    public MediaCodecVideoDecoderException(Throwable th2, @Nullable m mVar, @Nullable Surface surface) {
        super(th2, mVar);
        this.surfaceIdentityHashCode = System.identityHashCode(surface);
        this.isSurfaceValid = surface == null || surface.isValid();
    }
}
