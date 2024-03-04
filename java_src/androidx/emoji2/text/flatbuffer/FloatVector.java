package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class FloatVector extends BaseVector {
    public FloatVector __assign(int i9, ByteBuffer byteBuffer) {
        __reset(i9, 4, byteBuffer);
        return this;
    }

    public float get(int i9) {
        return this.f914bb.getFloat(__element(i9));
    }
}
