package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class IntVector extends BaseVector {
    public IntVector __assign(int i9, ByteBuffer byteBuffer) {
        __reset(i9, 4, byteBuffer);
        return this;
    }

    public int get(int i9) {
        return this.f914bb.getInt(__element(i9));
    }

    public long getAsUnsigned(int i9) {
        return get(i9) & 4294967295L;
    }
}
