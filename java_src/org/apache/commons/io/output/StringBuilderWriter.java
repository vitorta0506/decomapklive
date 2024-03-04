package org.apache.commons.io.output;

import java.io.Serializable;
import java.io.Writer;
/* loaded from: classes7.dex */
public class StringBuilderWriter extends Writer implements Serializable {
    private static final long serialVersionUID = -146927496096066153L;
    private final StringBuilder builder;

    public StringBuilderWriter() {
        this.builder = new StringBuilder();
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
    }

    public StringBuilder getBuilder() {
        return this.builder;
    }

    public String toString() {
        return this.builder.toString();
    }

    @Override // java.io.Writer
    public void write(String str) {
        if (str != null) {
            this.builder.append(str);
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i9, int i10) {
        if (cArr != null) {
            this.builder.append(cArr, i9, i10);
        }
    }

    public StringBuilderWriter(int i9) {
        this.builder = new StringBuilder(i9);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c10) {
        this.builder.append(c10);
        return this;
    }

    public StringBuilderWriter(StringBuilder sb2) {
        this.builder = sb2 == null ? new StringBuilder() : sb2;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) {
        this.builder.append(charSequence);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i9, int i10) {
        this.builder.append(charSequence, i9, i10);
        return this;
    }
}
