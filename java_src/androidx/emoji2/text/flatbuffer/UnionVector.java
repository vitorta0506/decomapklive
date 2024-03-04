package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class UnionVector extends BaseVector {
    public UnionVector __assign(int i9, int i10, ByteBuffer byteBuffer) {
        __reset(i9, i10, byteBuffer);
        return this;
    }

    public Table get(Table table, int i9) {
        return Table.__union(table, __element(i9), this.f914bb);
    }
}
