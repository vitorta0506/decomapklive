package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class BooleanVector extends BaseVector {
    public BooleanVector __assign(int i9, ByteBuffer byteBuffer) {
        __reset(i9, 1, byteBuffer);
        return this;
    }

    public boolean get(int i9) {
        return this.f914bb.get(__element(i9)) != 0;
    }
}
