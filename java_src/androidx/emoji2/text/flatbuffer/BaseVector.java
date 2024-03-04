package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class BaseVector {

    /* renamed from: bb  reason: collision with root package name */
    protected ByteBuffer f914bb;
    private int element_size;
    private int length;
    private int vector;

    /* JADX INFO: Access modifiers changed from: protected */
    public int __element(int i9) {
        return this.vector + (i9 * this.element_size);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void __reset(int i9, int i10, ByteBuffer byteBuffer) {
        this.f914bb = byteBuffer;
        if (byteBuffer != null) {
            this.vector = i9;
            this.length = byteBuffer.getInt(i9 - 4);
            this.element_size = i10;
            return;
        }
        this.vector = 0;
        this.length = 0;
        this.element_size = 0;
    }

    protected int __vector() {
        return this.vector;
    }

    public int length() {
        return this.length;
    }

    public void reset() {
        __reset(0, 0, null);
    }
}
