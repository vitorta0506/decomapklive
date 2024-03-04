package com.google.android.play.core.internal;

import android.util.Pair;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes2.dex */
public final class q1 {
    public static long a(ByteBuffer byteBuffer) {
        g(byteBuffer);
        return e(byteBuffer, byteBuffer.position() + 16);
    }

    public static long b(ByteBuffer byteBuffer) {
        g(byteBuffer);
        return e(byteBuffer, byteBuffer.position() + 12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Pair c(RandomAccessFile randomAccessFile) throws IOException {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        Pair f10 = f(randomAccessFile, 0);
        return f10 != null ? f10 : f(randomAccessFile, 65535);
    }

    public static void d(ByteBuffer byteBuffer, long j10) {
        g(byteBuffer);
        int position = byteBuffer.position() + 16;
        if (j10 >= 0 && j10 <= 4294967295L) {
            byteBuffer.putInt(byteBuffer.position() + position, (int) j10);
            return;
        }
        StringBuilder sb2 = new StringBuilder(47);
        sb2.append("uint32 value of out range: ");
        sb2.append(j10);
        throw new IllegalArgumentException(sb2.toString());
    }

    private static long e(ByteBuffer byteBuffer, int i9) {
        return byteBuffer.getInt(i9) & 4294967295L;
    }

    private static Pair f(RandomAccessFile randomAccessFile, int i9) throws IOException {
        int i10;
        long length = randomAccessFile.length();
        if (length < 22) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(((int) Math.min(i9, (-22) + length)) + 22);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        long capacity = length - allocate.capacity();
        randomAccessFile.seek(capacity);
        randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
        g(allocate);
        int capacity2 = allocate.capacity();
        if (capacity2 >= 22) {
            int i11 = capacity2 - 22;
            int min = Math.min(i11, 65535);
            for (int i12 = 0; i12 < min; i12++) {
                i10 = i11 - i12;
                if (allocate.getInt(i10) == 101010256 && ((char) allocate.getShort(i10 + 20)) == i12) {
                    break;
                }
            }
        }
        i10 = -1;
        if (i10 == -1) {
            return null;
        }
        allocate.position(i10);
        ByteBuffer slice = allocate.slice();
        slice.order(ByteOrder.LITTLE_ENDIAN);
        return Pair.create(slice, Long.valueOf(capacity + i10));
    }

    private static void g(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }
}
