package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.l0;
import java.nio.ByteBuffer;
import kotlin.UByte;
/* loaded from: classes.dex */
final class z extends v {

    /* renamed from: i  reason: collision with root package name */
    private static final int f5654i = Float.floatToIntBits(Float.NaN);

    private static void l(int i9, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i9 * 4.656612875245797E-10d));
        if (floatToIntBits == f5654i) {
            floatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(floatToIntBits);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void b(ByteBuffer byteBuffer) {
        ByteBuffer k10;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i9 = limit - position;
        int i10 = this.f5630b.f5372c;
        if (i10 == 536870912) {
            k10 = k((i9 / 3) * 4);
            while (position < limit) {
                l(((byteBuffer.get(position) & UByte.MAX_VALUE) << 8) | ((byteBuffer.get(position + 1) & UByte.MAX_VALUE) << 16) | ((byteBuffer.get(position + 2) & UByte.MAX_VALUE) << 24), k10);
                position += 3;
            }
        } else if (i10 == 805306368) {
            k10 = k(i9);
            while (position < limit) {
                l((byteBuffer.get(position) & UByte.MAX_VALUE) | ((byteBuffer.get(position + 1) & UByte.MAX_VALUE) << 8) | ((byteBuffer.get(position + 2) & UByte.MAX_VALUE) << 16) | ((byteBuffer.get(position + 3) & UByte.MAX_VALUE) << 24), k10);
                position += 4;
            }
        } else {
            throw new IllegalStateException();
        }
        byteBuffer.position(byteBuffer.limit());
        k10.flip();
    }

    @Override // com.google.android.exoplayer2.audio.v
    public AudioProcessor.a g(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i9 = aVar.f5372c;
        if (l0.n0(i9)) {
            if (i9 != 4) {
                return new AudioProcessor.a(aVar.f5370a, aVar.f5371b, 4);
            }
            return AudioProcessor.a.f5369e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }
}
