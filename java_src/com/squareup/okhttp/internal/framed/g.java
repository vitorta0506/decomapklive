package com.squareup.okhttp.internal.framed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSource;
import okio.InflaterSource;
import okio.Okio;
import okio.Source;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final InflaterSource f29806a;

    /* renamed from: b  reason: collision with root package name */
    private int f29807b;

    /* renamed from: c  reason: collision with root package name */
    private final BufferedSource f29808c;

    /* loaded from: classes4.dex */
    class a extends ForwardingSource {
        a(Source source) {
            super(source);
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(Buffer buffer, long j10) throws IOException {
            if (g.this.f29807b == 0) {
                return -1L;
            }
            long read = super.read(buffer, Math.min(j10, g.this.f29807b));
            if (read == -1) {
                return -1L;
            }
            g.b(g.this, read);
            return read;
        }
    }

    /* loaded from: classes4.dex */
    class b extends Inflater {
        b() {
        }

        @Override // java.util.zip.Inflater
        public int inflate(byte[] bArr, int i9, int i10) throws DataFormatException {
            int inflate = super.inflate(bArr, i9, i10);
            if (inflate == 0 && needsDictionary()) {
                setDictionary(j.f29818a);
                return super.inflate(bArr, i9, i10);
            }
            return inflate;
        }
    }

    public g(BufferedSource bufferedSource) {
        InflaterSource inflaterSource = new InflaterSource(new a(bufferedSource), new b());
        this.f29806a = inflaterSource;
        this.f29808c = Okio.buffer(inflaterSource);
    }

    static /* synthetic */ int b(g gVar, long j10) {
        int i9 = (int) (gVar.f29807b - j10);
        gVar.f29807b = i9;
        return i9;
    }

    private void d() throws IOException {
        if (this.f29807b > 0) {
            this.f29806a.refill();
            if (this.f29807b == 0) {
                return;
            }
            throw new IOException("compressedLimit > 0: " + this.f29807b);
        }
    }

    private ByteString e() throws IOException {
        return this.f29808c.readByteString(this.f29808c.readInt());
    }

    public void c() throws IOException {
        this.f29808c.close();
    }

    public List<c> f(int i9) throws IOException {
        this.f29807b += i9;
        int readInt = this.f29808c.readInt();
        if (readInt < 0) {
            throw new IOException("numberOfPairs < 0: " + readInt);
        } else if (readInt <= 1024) {
            ArrayList arrayList = new ArrayList(readInt);
            for (int i10 = 0; i10 < readInt; i10++) {
                ByteString asciiLowercase = e().toAsciiLowercase();
                ByteString e10 = e();
                if (asciiLowercase.size() != 0) {
                    arrayList.add(new c(asciiLowercase, e10));
                } else {
                    throw new IOException("name.size == 0");
                }
            }
            d();
            return arrayList;
        } else {
            throw new IOException("numberOfPairs > 1024: " + readInt);
        }
    }
}
