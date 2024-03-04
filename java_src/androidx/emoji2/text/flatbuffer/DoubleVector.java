package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class DoubleVector extends BaseVector {
    public DoubleVector __assign(int i9, ByteBuffer byteBuffer) {
        __reset(i9, 8, byteBuffer);
        return this;
    }

    public double get(int i9) {
        return this.f914bb.getDouble(__element(i9));
    }
}
