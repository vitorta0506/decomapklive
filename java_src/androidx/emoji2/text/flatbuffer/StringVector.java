package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class StringVector extends BaseVector {
    private Utf8 utf8 = Utf8.getDefault();

    public StringVector __assign(int i9, int i10, ByteBuffer byteBuffer) {
        __reset(i9, i10, byteBuffer);
        return this;
    }

    public String get(int i9) {
        return Table.__string(__element(i9), this.f914bb, this.utf8);
    }
}
