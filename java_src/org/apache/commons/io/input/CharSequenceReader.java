package org.apache.commons.io.input;

import java.io.Reader;
import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes7.dex */
public class CharSequenceReader extends Reader implements Serializable {
    private static final long serialVersionUID = 3724187752191401220L;
    private final CharSequence charSequence;
    private int idx;
    private int mark;

    public CharSequenceReader(String str) {
        this.charSequence = str == null ? "" : str;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.idx = 0;
        this.mark = 0;
    }

    @Override // java.io.Reader
    public void mark(int i9) {
        this.mark = this.idx;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader
    public int read() {
        if (this.idx >= this.charSequence.length()) {
            return -1;
        }
        CharSequence charSequence = this.charSequence;
        int i9 = this.idx;
        this.idx = i9 + 1;
        return charSequence.charAt(i9);
    }

    @Override // java.io.Reader
    public void reset() {
        this.idx = this.mark;
    }

    @Override // java.io.Reader
    public long skip(long j10) {
        if (j10 >= 0) {
            if (this.idx >= this.charSequence.length()) {
                return -1L;
            }
            int min = (int) Math.min(this.charSequence.length(), this.idx + j10);
            this.idx = min;
            return min - this.idx;
        }
        throw new IllegalArgumentException("Number of characters to skip is less than zero: " + j10);
    }

    public String toString() {
        return this.charSequence.toString();
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i9, int i10) {
        if (this.idx >= this.charSequence.length()) {
            return -1;
        }
        Objects.requireNonNull(cArr, "Character array is missing");
        if (i10 < 0 || i9 < 0 || i9 + i10 > cArr.length) {
            throw new IndexOutOfBoundsException("Array Size=" + cArr.length + ", offset=" + i9 + ", length=" + i10);
        }
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            int read = read();
            if (read == -1) {
                return i11;
            }
            cArr[i9 + i12] = (char) read;
            i11++;
        }
        return i11;
    }
}
