package com.squareup.okhttp.internal;

import com.squareup.okhttp.internal.io.FileSystem;
import io.jsonwebtoken.JwtParser;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;
/* loaded from: classes4.dex */
public final class b implements Closeable {

    /* renamed from: s  reason: collision with root package name */
    static final Pattern f29620s = Pattern.compile("[a-z0-9_-]{1,120}");

    /* renamed from: t  reason: collision with root package name */
    private static final Sink f29621t = new d();

    /* renamed from: a  reason: collision with root package name */
    private final FileSystem f29622a;

    /* renamed from: b  reason: collision with root package name */
    private final File f29623b;

    /* renamed from: c  reason: collision with root package name */
    private final File f29624c;

    /* renamed from: d  reason: collision with root package name */
    private final File f29625d;

    /* renamed from: e  reason: collision with root package name */
    private final File f29626e;

    /* renamed from: f  reason: collision with root package name */
    private final int f29627f;

    /* renamed from: g  reason: collision with root package name */
    private long f29628g;

    /* renamed from: h  reason: collision with root package name */
    private final int f29629h;

    /* renamed from: j  reason: collision with root package name */
    private BufferedSink f29631j;

    /* renamed from: l  reason: collision with root package name */
    private int f29633l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f29634m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f29635n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f29636o;

    /* renamed from: q  reason: collision with root package name */
    private final Executor f29638q;

    /* renamed from: i  reason: collision with root package name */
    private long f29630i = 0;

    /* renamed from: k  reason: collision with root package name */
    private final LinkedHashMap<String, f> f29632k = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: p  reason: collision with root package name */
    private long f29637p = 0;

    /* renamed from: r  reason: collision with root package name */
    private final Runnable f29639r = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (b.this) {
                if ((!b.this.f29635n) || b.this.f29636o) {
                    return;
                }
                try {
                    b.this.d0();
                    if (b.this.P()) {
                        b.this.W();
                        b.this.f29633l = 0;
                    }
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.okhttp.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0292b extends com.squareup.okhttp.internal.c {
        C0292b(Sink sink) {
            super(sink);
        }

        @Override // com.squareup.okhttp.internal.c
        protected void a(IOException iOException) {
            b.this.f29634m = true;
        }
    }

    /* loaded from: classes4.dex */
    class c implements Iterator<g> {

        /* renamed from: a  reason: collision with root package name */
        final Iterator<f> f29642a;

        /* renamed from: b  reason: collision with root package name */
        g f29643b;

        /* renamed from: c  reason: collision with root package name */
        g f29644c;

        c() {
            this.f29642a = new ArrayList(b.this.f29632k.values()).iterator();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public g next() {
            if (hasNext()) {
                g gVar = this.f29643b;
                this.f29644c = gVar;
                this.f29643b = null;
                return gVar;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f29643b != null) {
                return true;
            }
            synchronized (b.this) {
                if (b.this.f29636o) {
                    return false;
                }
                while (this.f29642a.hasNext()) {
                    g n9 = this.f29642a.next().n();
                    if (n9 != null) {
                        this.f29643b = n9;
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            g gVar = this.f29644c;
            if (gVar != null) {
                try {
                    b.this.X(gVar.f29660a);
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f29644c = null;
                    throw th2;
                }
                this.f29644c = null;
                return;
            }
            throw new IllegalStateException("remove() before next()");
        }
    }

    /* loaded from: classes4.dex */
    static class d implements Sink {
        d() {
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return Timeout.NONE;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j10) throws IOException {
            buffer.skip(j10);
        }
    }

    /* loaded from: classes4.dex */
    public final class e {

        /* renamed from: a  reason: collision with root package name */
        private final f f29646a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean[] f29647b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f29648c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f29649d;

        /* loaded from: classes4.dex */
        class a extends com.squareup.okhttp.internal.c {
            a(Sink sink) {
                super(sink);
            }

            @Override // com.squareup.okhttp.internal.c
            protected void a(IOException iOException) {
                synchronized (b.this) {
                    e.this.f29648c = true;
                }
            }
        }

        /* synthetic */ e(b bVar, f fVar, a aVar) {
            this(fVar);
        }

        public void a() throws IOException {
            synchronized (b.this) {
                b.this.w(this, false);
            }
        }

        public void e() throws IOException {
            synchronized (b.this) {
                if (this.f29648c) {
                    b.this.w(this, false);
                    b.this.Y(this.f29646a);
                } else {
                    b.this.w(this, true);
                }
                this.f29649d = true;
            }
        }

        public Sink f(int i9) throws IOException {
            a aVar;
            synchronized (b.this) {
                if (this.f29646a.f29657f == this) {
                    if (!this.f29646a.f29656e) {
                        this.f29647b[i9] = true;
                    }
                    try {
                        aVar = new a(b.this.f29622a.sink(this.f29646a.f29655d[i9]));
                    } catch (FileNotFoundException unused) {
                        return b.f29621t;
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
            return aVar;
        }

        private e(f fVar) {
            this.f29646a = fVar;
            this.f29647b = fVar.f29656e ? null : new boolean[b.this.f29629h];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class f {

        /* renamed from: a  reason: collision with root package name */
        private final String f29652a;

        /* renamed from: b  reason: collision with root package name */
        private final long[] f29653b;

        /* renamed from: c  reason: collision with root package name */
        private final File[] f29654c;

        /* renamed from: d  reason: collision with root package name */
        private final File[] f29655d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f29656e;

        /* renamed from: f  reason: collision with root package name */
        private e f29657f;

        /* renamed from: g  reason: collision with root package name */
        private long f29658g;

        /* synthetic */ f(b bVar, String str, a aVar) {
            this(str);
        }

        private IOException l(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m(String[] strArr) throws IOException {
            if (strArr.length == b.this.f29629h) {
                for (int i9 = 0; i9 < strArr.length; i9++) {
                    try {
                        this.f29653b[i9] = Long.parseLong(strArr[i9]);
                    } catch (NumberFormatException unused) {
                        throw l(strArr);
                    }
                }
                return;
            }
            throw l(strArr);
        }

        g n() {
            if (Thread.holdsLock(b.this)) {
                Source[] sourceArr = new Source[b.this.f29629h];
                long[] jArr = (long[]) this.f29653b.clone();
                for (int i9 = 0; i9 < b.this.f29629h; i9++) {
                    try {
                        sourceArr[i9] = b.this.f29622a.source(this.f29654c[i9]);
                    } catch (FileNotFoundException unused) {
                        for (int i10 = 0; i10 < b.this.f29629h && sourceArr[i10] != null; i10++) {
                            i.c(sourceArr[i10]);
                        }
                        return null;
                    }
                }
                return new g(b.this, this.f29652a, this.f29658g, sourceArr, jArr, null);
            }
            throw new AssertionError();
        }

        void o(BufferedSink bufferedSink) throws IOException {
            for (long j10 : this.f29653b) {
                bufferedSink.writeByte(32).writeDecimalLong(j10);
            }
        }

        private f(String str) {
            this.f29652a = str;
            this.f29653b = new long[b.this.f29629h];
            this.f29654c = new File[b.this.f29629h];
            this.f29655d = new File[b.this.f29629h];
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append(JwtParser.SEPARATOR_CHAR);
            int length = sb2.length();
            for (int i9 = 0; i9 < b.this.f29629h; i9++) {
                sb2.append(i9);
                this.f29654c[i9] = new File(b.this.f29623b, sb2.toString());
                sb2.append(".tmp");
                this.f29655d[i9] = new File(b.this.f29623b, sb2.toString());
                sb2.setLength(length);
            }
        }
    }

    /* loaded from: classes4.dex */
    public final class g implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        private final String f29660a;

        /* renamed from: b  reason: collision with root package name */
        private final long f29661b;

        /* renamed from: c  reason: collision with root package name */
        private final Source[] f29662c;

        /* renamed from: d  reason: collision with root package name */
        private final long[] f29663d;

        /* synthetic */ g(b bVar, String str, long j10, Source[] sourceArr, long[] jArr, a aVar) {
            this(str, j10, sourceArr, jArr);
        }

        public e c() throws IOException {
            return b.this.F(this.f29660a, this.f29661b);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (Source source : this.f29662c) {
                i.c(source);
            }
        }

        public Source d(int i9) {
            return this.f29662c[i9];
        }

        private g(String str, long j10, Source[] sourceArr, long[] jArr) {
            this.f29660a = str;
            this.f29661b = j10;
            this.f29662c = sourceArr;
            this.f29663d = jArr;
        }
    }

    b(FileSystem fileSystem, File file, int i9, int i10, long j10, Executor executor) {
        this.f29622a = fileSystem;
        this.f29623b = file;
        this.f29627f = i9;
        this.f29624c = new File(file, "journal");
        this.f29625d = new File(file, "journal.tmp");
        this.f29626e = new File(file, "journal.bkp");
        this.f29629h = i10;
        this.f29628g = j10;
        this.f29638q = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized e F(String str, long j10) throws IOException {
        N();
        v();
        f0(str);
        f fVar = this.f29632k.get(str);
        if (j10 == -1 || (fVar != null && fVar.f29658g == j10)) {
            if (fVar == null || fVar.f29657f == null) {
                this.f29631j.writeUtf8("DIRTY").writeByte(32).writeUtf8(str).writeByte(10);
                this.f29631j.flush();
                if (this.f29634m) {
                    return null;
                }
                if (fVar == null) {
                    fVar = new f(this, str, null);
                    this.f29632k.put(str, fVar);
                }
                e eVar = new e(this, fVar, null);
                fVar.f29657f = eVar;
                return eVar;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean P() {
        int i9 = this.f29633l;
        return i9 >= 2000 && i9 >= this.f29632k.size();
    }

    private BufferedSink R() throws FileNotFoundException {
        return Okio.buffer(new C0292b(this.f29622a.appendingSink(this.f29624c)));
    }

    private void T() throws IOException {
        this.f29622a.delete(this.f29625d);
        Iterator<f> it = this.f29632k.values().iterator();
        while (it.hasNext()) {
            f next = it.next();
            int i9 = 0;
            if (next.f29657f == null) {
                while (i9 < this.f29629h) {
                    this.f29630i += next.f29653b[i9];
                    i9++;
                }
            } else {
                next.f29657f = null;
                while (i9 < this.f29629h) {
                    this.f29622a.delete(next.f29654c[i9]);
                    this.f29622a.delete(next.f29655d[i9]);
                    i9++;
                }
                it.remove();
            }
        }
    }

    private void U() throws IOException {
        BufferedSource buffer = Okio.buffer(this.f29622a.source(this.f29624c));
        try {
            String readUtf8LineStrict = buffer.readUtf8LineStrict();
            String readUtf8LineStrict2 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict3 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict4 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict5 = buffer.readUtf8LineStrict();
            if (!"libcore.io.DiskLruCache".equals(readUtf8LineStrict) || !"1".equals(readUtf8LineStrict2) || !Integer.toString(this.f29627f).equals(readUtf8LineStrict3) || !Integer.toString(this.f29629h).equals(readUtf8LineStrict4) || !"".equals(readUtf8LineStrict5)) {
                throw new IOException("unexpected journal header: [" + readUtf8LineStrict + ", " + readUtf8LineStrict2 + ", " + readUtf8LineStrict4 + ", " + readUtf8LineStrict5 + "]");
            }
            int i9 = 0;
            while (true) {
                try {
                    V(buffer.readUtf8LineStrict());
                    i9++;
                } catch (EOFException unused) {
                    this.f29633l = i9 - this.f29632k.size();
                    if (!buffer.exhausted()) {
                        W();
                    } else {
                        this.f29631j = R();
                    }
                    i.c(buffer);
                    return;
                }
            }
        } catch (Throwable th2) {
            i.c(buffer);
            throw th2;
        }
    }

    private void V(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i9 = indexOf + 1;
            int indexOf2 = str.indexOf(32, i9);
            if (indexOf2 == -1) {
                substring = str.substring(i9);
                if (indexOf == 6 && str.startsWith("REMOVE")) {
                    this.f29632k.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i9, indexOf2);
            }
            f fVar = this.f29632k.get(substring);
            if (fVar == null) {
                fVar = new f(this, substring, null);
                this.f29632k.put(substring, fVar);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                fVar.f29656e = true;
                fVar.f29657f = null;
                fVar.m(split);
                return;
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                fVar.f29657f = new e(this, fVar, null);
                return;
            } else if (indexOf2 == -1 && indexOf == 4 && str.startsWith("READ")) {
                return;
            } else {
                throw new IOException("unexpected journal line: " + str);
            }
        }
        throw new IOException("unexpected journal line: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void W() throws IOException {
        BufferedSink bufferedSink = this.f29631j;
        if (bufferedSink != null) {
            bufferedSink.close();
        }
        BufferedSink buffer = Okio.buffer(this.f29622a.sink(this.f29625d));
        buffer.writeUtf8("libcore.io.DiskLruCache").writeByte(10);
        buffer.writeUtf8("1").writeByte(10);
        buffer.writeDecimalLong(this.f29627f).writeByte(10);
        buffer.writeDecimalLong(this.f29629h).writeByte(10);
        buffer.writeByte(10);
        for (f fVar : this.f29632k.values()) {
            if (fVar.f29657f != null) {
                buffer.writeUtf8("DIRTY").writeByte(32);
                buffer.writeUtf8(fVar.f29652a);
                buffer.writeByte(10);
            } else {
                buffer.writeUtf8("CLEAN").writeByte(32);
                buffer.writeUtf8(fVar.f29652a);
                fVar.o(buffer);
                buffer.writeByte(10);
            }
        }
        buffer.close();
        if (this.f29622a.exists(this.f29624c)) {
            this.f29622a.rename(this.f29624c, this.f29626e);
        }
        this.f29622a.rename(this.f29625d, this.f29624c);
        this.f29622a.delete(this.f29626e);
        this.f29631j = R();
        this.f29634m = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Y(f fVar) throws IOException {
        if (fVar.f29657f != null) {
            fVar.f29657f.f29648c = true;
        }
        for (int i9 = 0; i9 < this.f29629h; i9++) {
            this.f29622a.delete(fVar.f29654c[i9]);
            this.f29630i -= fVar.f29653b[i9];
            fVar.f29653b[i9] = 0;
        }
        this.f29633l++;
        this.f29631j.writeUtf8("REMOVE").writeByte(32).writeUtf8(fVar.f29652a).writeByte(10);
        this.f29632k.remove(fVar.f29652a);
        if (P()) {
            this.f29638q.execute(this.f29639r);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0() throws IOException {
        while (this.f29630i > this.f29628g) {
            Y(this.f29632k.values().iterator().next());
        }
    }

    private void f0(String str) {
        if (f29620s.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    private synchronized void v() {
        if (isClosed()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void w(e eVar, boolean z10) throws IOException {
        f fVar = eVar.f29646a;
        if (fVar.f29657f == eVar) {
            if (z10 && !fVar.f29656e) {
                for (int i9 = 0; i9 < this.f29629h; i9++) {
                    if (eVar.f29647b[i9]) {
                        if (!this.f29622a.exists(fVar.f29655d[i9])) {
                            eVar.a();
                            return;
                        }
                    } else {
                        eVar.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i9);
                    }
                }
            }
            for (int i10 = 0; i10 < this.f29629h; i10++) {
                File file = fVar.f29655d[i10];
                if (z10) {
                    if (this.f29622a.exists(file)) {
                        File file2 = fVar.f29654c[i10];
                        this.f29622a.rename(file, file2);
                        long j10 = fVar.f29653b[i10];
                        long size = this.f29622a.size(file2);
                        fVar.f29653b[i10] = size;
                        this.f29630i = (this.f29630i - j10) + size;
                    }
                } else {
                    this.f29622a.delete(file);
                }
            }
            this.f29633l++;
            fVar.f29657f = null;
            if (fVar.f29656e | z10) {
                fVar.f29656e = true;
                this.f29631j.writeUtf8("CLEAN").writeByte(32);
                this.f29631j.writeUtf8(fVar.f29652a);
                fVar.o(this.f29631j);
                this.f29631j.writeByte(10);
                if (z10) {
                    long j11 = this.f29637p;
                    this.f29637p = 1 + j11;
                    fVar.f29658g = j11;
                }
            } else {
                this.f29632k.remove(fVar.f29652a);
                this.f29631j.writeUtf8("REMOVE").writeByte(32);
                this.f29631j.writeUtf8(fVar.f29652a);
                this.f29631j.writeByte(10);
            }
            this.f29631j.flush();
            if (this.f29630i > this.f29628g || P()) {
                this.f29638q.execute(this.f29639r);
            }
            return;
        }
        throw new IllegalStateException();
    }

    public static b y(FileSystem fileSystem, File file, int i9, int i10, long j10) {
        if (j10 > 0) {
            if (i10 > 0) {
                return new b(fileSystem, file, i9, i10, j10, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), i.s("OkHttp DiskLruCache", true)));
            }
            throw new IllegalArgumentException("valueCount <= 0");
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public void A() throws IOException {
        close();
        this.f29622a.deleteContents(this.f29623b);
    }

    public e C(String str) throws IOException {
        return F(str, -1L);
    }

    public synchronized void I() throws IOException {
        N();
        for (f fVar : (f[]) this.f29632k.values().toArray(new f[this.f29632k.size()])) {
            Y(fVar);
        }
    }

    public synchronized g K(String str) throws IOException {
        N();
        v();
        f0(str);
        f fVar = this.f29632k.get(str);
        if (fVar != null && fVar.f29656e) {
            g n9 = fVar.n();
            if (n9 == null) {
                return null;
            }
            this.f29633l++;
            this.f29631j.writeUtf8("READ").writeByte(32).writeUtf8(str).writeByte(10);
            if (P()) {
                this.f29638q.execute(this.f29639r);
            }
            return n9;
        }
        return null;
    }

    public File L() {
        return this.f29623b;
    }

    public synchronized long M() {
        return this.f29628g;
    }

    public synchronized void N() throws IOException {
        if (this.f29635n) {
            return;
        }
        if (this.f29622a.exists(this.f29626e)) {
            if (this.f29622a.exists(this.f29624c)) {
                this.f29622a.delete(this.f29626e);
            } else {
                this.f29622a.rename(this.f29626e, this.f29624c);
            }
        }
        if (this.f29622a.exists(this.f29624c)) {
            try {
                U();
                T();
                this.f29635n = true;
                return;
            } catch (IOException e10) {
                com.squareup.okhttp.internal.g f10 = com.squareup.okhttp.internal.g.f();
                f10.i("DiskLruCache " + this.f29623b + " is corrupt: " + e10.getMessage() + ", removing");
                A();
                this.f29636o = false;
            }
        }
        W();
        this.f29635n = true;
    }

    public synchronized boolean X(String str) throws IOException {
        N();
        v();
        f0(str);
        f fVar = this.f29632k.get(str);
        if (fVar == null) {
            return false;
        }
        return Y(fVar);
    }

    public synchronized long Z() throws IOException {
        N();
        return this.f29630i;
    }

    public synchronized Iterator<g> c0() throws IOException {
        N();
        return new c();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        f[] fVarArr;
        if (this.f29635n && !this.f29636o) {
            for (f fVar : (f[]) this.f29632k.values().toArray(new f[this.f29632k.size()])) {
                if (fVar.f29657f != null) {
                    fVar.f29657f.a();
                }
            }
            d0();
            this.f29631j.close();
            this.f29631j = null;
            this.f29636o = true;
            return;
        }
        this.f29636o = true;
    }

    public synchronized void flush() throws IOException {
        if (this.f29635n) {
            v();
            d0();
            this.f29631j.flush();
        }
    }

    public synchronized boolean isClosed() {
        return this.f29636o;
    }
}
