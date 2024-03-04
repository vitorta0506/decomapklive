package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
final class w extends v {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private int[] f5637i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private int[] f5638j;

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void b(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) com.google.android.exoplayer2.util.a.e(this.f5638j);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer k10 = k(((limit - position) / this.f5630b.f5373d) * this.f5631c.f5373d);
        while (position < limit) {
            for (int i9 : iArr) {
                k10.putShort(byteBuffer.getShort((i9 * 2) + position));
            }
            position += this.f5630b.f5373d;
        }
        byteBuffer.position(limit);
        k10.flip();
    }

    @Override // com.google.android.exoplayer2.audio.v
    public AudioProcessor.a g(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.f5637i;
        if (iArr == null) {
            return AudioProcessor.a.f5369e;
        }
        if (aVar.f5372c == 2) {
            boolean z10 = aVar.f5371b != iArr.length;
            int i9 = 0;
            while (i9 < iArr.length) {
                int i10 = iArr[i9];
                if (i10 >= aVar.f5371b) {
                    throw new AudioProcessor.UnhandledAudioFormatException(aVar);
                }
                z10 |= i10 != i9;
                i9++;
            }
            if (z10) {
                return new AudioProcessor.a(aVar.f5370a, iArr.length, 2);
            }
            return AudioProcessor.a.f5369e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void h() {
        this.f5638j = this.f5637i;
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void j() {
        this.f5638j = null;
        this.f5637i = null;
    }

    public void l(@Nullable int[] iArr) {
        this.f5637i = iArr;
    }
}
