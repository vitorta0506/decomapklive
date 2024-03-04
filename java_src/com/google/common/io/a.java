package com.google.common.io;

import com.google.common.base.o;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
/* loaded from: classes2.dex */
class a extends Writer {

    /* renamed from: a  reason: collision with root package name */
    private final Appendable f13570a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f13571b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Appendable appendable) {
        this.f13570a = (Appendable) o.s(appendable);
    }

    private void a() throws IOException {
        if (this.f13571b) {
            throw new IOException("Cannot write to a closed writer.");
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13571b = true;
        Appendable appendable = this.f13570a;
        if (appendable instanceof Closeable) {
            ((Closeable) appendable).close();
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        a();
        Appendable appendable = this.f13570a;
        if (appendable instanceof Flushable) {
            ((Flushable) appendable).flush();
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i9, int i10) throws IOException {
        a();
        this.f13570a.append(new String(cArr, i9, i10));
    }

    @Override // java.io.Writer
    public void write(int i9) throws IOException {
        a();
        this.f13570a.append((char) i9);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c10) throws IOException {
        a();
        this.f13570a.append(c10);
        return this;
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        o.s(str);
        a();
        this.f13570a.append(str);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) throws IOException {
        a();
        this.f13570a.append(charSequence);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i9, int i10) throws IOException {
        a();
        this.f13570a.append(charSequence, i9, i10);
        return this;
    }

    @Override // java.io.Writer
    public void write(String str, int i9, int i10) throws IOException {
        o.s(str);
        a();
        this.f13570a.append(str, i9, i10 + i9);
    }
}
