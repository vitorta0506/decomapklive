package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes.dex */
public class Table {

    /* renamed from: bb  reason: collision with root package name */
    protected ByteBuffer f920bb;
    protected int bb_pos;
    Utf8 utf8 = Utf8.getDefault();
    private int vtable_size;
    private int vtable_start;

    protected static boolean __has_identifier(ByteBuffer byteBuffer, String str) {
        if (str.length() == 4) {
            for (int i9 = 0; i9 < 4; i9++) {
                if (str.charAt(i9) != ((char) byteBuffer.get(byteBuffer.position() + 4 + i9))) {
                    return false;
                }
            }
            return true;
        }
        throw new AssertionError("FlatBuffers: file identifier must be length 4");
    }

    protected static int compareStrings(int i9, int i10, ByteBuffer byteBuffer) {
        int i11 = i9 + byteBuffer.getInt(i9);
        int i12 = i10 + byteBuffer.getInt(i10);
        int i13 = byteBuffer.getInt(i11);
        int i14 = byteBuffer.getInt(i12);
        int i15 = i11 + 4;
        int i16 = i12 + 4;
        int min = Math.min(i13, i14);
        for (int i17 = 0; i17 < min; i17++) {
            int i18 = i17 + i15;
            int i19 = i17 + i16;
            if (byteBuffer.get(i18) != byteBuffer.get(i19)) {
                return byteBuffer.get(i18) - byteBuffer.get(i19);
            }
        }
        return i13 - i14;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int __indirect(int i9) {
        return i9 + this.f920bb.getInt(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int __offset(int i9) {
        if (i9 < this.vtable_size) {
            return this.f920bb.getShort(this.vtable_start + i9);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void __reset(int i9, ByteBuffer byteBuffer) {
        this.f920bb = byteBuffer;
        if (byteBuffer != null) {
            this.bb_pos = i9;
            int i10 = i9 - byteBuffer.getInt(i9);
            this.vtable_start = i10;
            this.vtable_size = this.f920bb.getShort(i10);
            return;
        }
        this.bb_pos = 0;
        this.vtable_start = 0;
        this.vtable_size = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String __string(int i9) {
        return __string(i9, this.f920bb, this.utf8);
    }

    protected Table __union(Table table, int i9) {
        return __union(table, i9, this.f920bb);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int __vector(int i9) {
        int i10 = i9 + this.bb_pos;
        return i10 + this.f920bb.getInt(i10) + 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteBuffer __vector_as_bytebuffer(int i9, int i10) {
        int __offset = __offset(i9);
        if (__offset == 0) {
            return null;
        }
        ByteBuffer order = this.f920bb.duplicate().order(ByteOrder.LITTLE_ENDIAN);
        int __vector = __vector(__offset);
        order.position(__vector);
        order.limit(__vector + (__vector_len(__offset) * i10));
        return order;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteBuffer __vector_in_bytebuffer(ByteBuffer byteBuffer, int i9, int i10) {
        int __offset = __offset(i9);
        if (__offset == 0) {
            return null;
        }
        int __vector = __vector(__offset);
        byteBuffer.rewind();
        byteBuffer.limit((__vector_len(__offset) * i10) + __vector);
        byteBuffer.position(__vector);
        return byteBuffer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int __vector_len(int i9) {
        int i10 = i9 + this.bb_pos;
        return this.f920bb.getInt(i10 + this.f920bb.getInt(i10));
    }

    public ByteBuffer getByteBuffer() {
        return this.f920bb;
    }

    protected int keysCompare(Integer num, Integer num2, ByteBuffer byteBuffer) {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void sortTables(int[] iArr, final ByteBuffer byteBuffer) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i9 = 0; i9 < iArr.length; i9++) {
            numArr[i9] = Integer.valueOf(iArr[i9]);
        }
        Arrays.sort(numArr, new Comparator<Integer>() { // from class: androidx.emoji2.text.flatbuffer.Table.1
            @Override // java.util.Comparator
            public int compare(Integer num, Integer num2) {
                return Table.this.keysCompare(num, num2, byteBuffer);
            }
        });
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr[i10] = numArr[i10].intValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int __indirect(int i9, ByteBuffer byteBuffer) {
        return i9 + byteBuffer.getInt(i9);
    }

    protected static int __offset(int i9, int i10, ByteBuffer byteBuffer) {
        int capacity = byteBuffer.capacity() - i10;
        return byteBuffer.getShort((i9 + capacity) - byteBuffer.getInt(capacity)) + capacity;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String __string(int i9, ByteBuffer byteBuffer, Utf8 utf8) {
        int i10 = i9 + byteBuffer.getInt(i9);
        return utf8.decodeUtf8(byteBuffer, i10 + 4, byteBuffer.getInt(i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Table __union(Table table, int i9, ByteBuffer byteBuffer) {
        table.__reset(__indirect(i9, byteBuffer), byteBuffer);
        return table;
    }

    protected static int compareStrings(int i9, byte[] bArr, ByteBuffer byteBuffer) {
        int i10 = i9 + byteBuffer.getInt(i9);
        int i11 = byteBuffer.getInt(i10);
        int length = bArr.length;
        int i12 = i10 + 4;
        int min = Math.min(i11, length);
        for (int i13 = 0; i13 < min; i13++) {
            int i14 = i13 + i12;
            if (byteBuffer.get(i14) != bArr[i13]) {
                return byteBuffer.get(i14) - bArr[i13];
            }
        }
        return i11 - length;
    }

    public void __reset() {
        __reset(0, null);
    }
}
