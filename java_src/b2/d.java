package b2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderException;
/* loaded from: classes.dex */
public interface d<I, O, E extends DecoderException> {
    void b(I i9) throws DecoderException;

    @Nullable
    I c() throws DecoderException;

    @Nullable
    O dequeueOutputBuffer() throws DecoderException;

    void flush();

    void release();
}
