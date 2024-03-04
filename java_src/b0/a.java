package b0;

import android.os.Build;
import android.os.StrictMode;
import io.jsonwebtoken.JwtParser;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public final class a implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final File f1061a;

    /* renamed from: b  reason: collision with root package name */
    private final File f1062b;

    /* renamed from: c  reason: collision with root package name */
    private final File f1063c;

    /* renamed from: d  reason: collision with root package name */
    private final File f1064d;

    /* renamed from: e  reason: collision with root package name */
    private final int f1065e;

    /* renamed from: f  reason: collision with root package name */
    private long f1066f;

    /* renamed from: g  reason: collision with root package name */
    private final int f1067g;

    /* renamed from: i  reason: collision with root package name */
    private Writer f1069i;

    /* renamed from: k  reason: collision with root package name */
    private int f1071k;

    /* renamed from: h  reason: collision with root package name */
    private long f1068h = 0;

    /* renamed from: j  reason: collision with root package name */
    private final LinkedHashMap<String, d> f1070j = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: l  reason: collision with root package name */
    private long f1072l = 0;

    /* renamed from: m  reason: collision with root package name */
    final ThreadPoolExecutor f1073m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b(null));

    /* renamed from: n  reason: collision with root package name */
    private final Callable<Void> f1074n = new CallableC0012a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class CallableC0012a implements Callable<Void> {
        CallableC0012a() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() throws Exception {
            synchronized (a.this) {
                if (a.this.f1069i == null) {
                    return null;
                }
                a.this.N();
                if (a.this.y()) {
                    a.this.K();
                    a.this.f1071k = 0;
                }
                return null;
            }
        }
    }

    /* loaded from: classes.dex */
    private static final class b implements ThreadFactory {
        private b() {
        }

        /* synthetic */ b(CallableC0012a callableC0012a) {
            this();
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    /* loaded from: classes.dex */
    public final class c {

        /* renamed from: a  reason: collision with root package name */
        private final d f1076a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean[] f1077b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f1078c;

        /* synthetic */ c(a aVar, d dVar, CallableC0012a callableC0012a) {
            this(dVar);
        }

        public void a() throws IOException {
            a.this.p(this, false);
        }

        public void b() {
            if (this.f1078c) {
                return;
            }
            try {
                a();
            } catch (IOException unused) {
            }
        }

        public void e() throws IOException {
            a.this.p(this, true);
            this.f1078c = true;
        }

        public File f(int i9) throws IOException {
            File k10;
            synchronized (a.this) {
                if (this.f1076a.f1085f == this) {
                    if (!this.f1076a.f1084e) {
                        this.f1077b[i9] = true;
                    }
                    k10 = this.f1076a.k(i9);
                    a.this.f1061a.mkdirs();
                } else {
                    throw new IllegalStateException();
                }
            }
            return k10;
        }

        private c(d dVar) {
            this.f1076a = dVar;
            this.f1077b = dVar.f1084e ? null : new boolean[a.this.f1067g];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f1080a;

        /* renamed from: b  reason: collision with root package name */
        private final long[] f1081b;

        /* renamed from: c  reason: collision with root package name */
        File[] f1082c;

        /* renamed from: d  reason: collision with root package name */
        File[] f1083d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f1084e;

        /* renamed from: f  reason: collision with root package name */
        private c f1085f;

        /* renamed from: g  reason: collision with root package name */
        private long f1086g;

        /* synthetic */ d(a aVar, String str, CallableC0012a callableC0012a) {
            this(str);
        }

        private IOException m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void n(String[] strArr) throws IOException {
            if (strArr.length == a.this.f1067g) {
                for (int i9 = 0; i9 < strArr.length; i9++) {
                    try {
                        this.f1081b[i9] = Long.parseLong(strArr[i9]);
                    } catch (NumberFormatException unused) {
                        throw m(strArr);
                    }
                }
                return;
            }
            throw m(strArr);
        }

        public File j(int i9) {
            return this.f1082c[i9];
        }

        public File k(int i9) {
            return this.f1083d[i9];
        }

        public String l() throws IOException {
            long[] jArr;
            StringBuilder sb2 = new StringBuilder();
            for (long j10 : this.f1081b) {
                sb2.append(' ');
                sb2.append(j10);
            }
            return sb2.toString();
        }

        private d(String str) {
            this.f1080a = str;
            this.f1081b = new long[a.this.f1067g];
            this.f1082c = new File[a.this.f1067g];
            this.f1083d = new File[a.this.f1067g];
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append(JwtParser.SEPARATOR_CHAR);
            int length = sb2.length();
            for (int i9 = 0; i9 < a.this.f1067g; i9++) {
                sb2.append(i9);
                this.f1082c[i9] = new File(a.this.f1061a, sb2.toString());
                sb2.append(".tmp");
                this.f1083d[i9] = new File(a.this.f1061a, sb2.toString());
                sb2.setLength(length);
            }
        }
    }

    /* loaded from: classes.dex */
    public final class e {

        /* renamed from: a  reason: collision with root package name */
        private final String f1088a;

        /* renamed from: b  reason: collision with root package name */
        private final long f1089b;

        /* renamed from: c  reason: collision with root package name */
        private final long[] f1090c;

        /* renamed from: d  reason: collision with root package name */
        private final File[] f1091d;

        /* synthetic */ e(a aVar, String str, long j10, File[] fileArr, long[] jArr, CallableC0012a callableC0012a) {
            this(str, j10, fileArr, jArr);
        }

        public File a(int i9) {
            return this.f1091d[i9];
        }

        private e(String str, long j10, File[] fileArr, long[] jArr) {
            this.f1088a = str;
            this.f1089b = j10;
            this.f1091d = fileArr;
            this.f1090c = jArr;
        }
    }

    private a(File file, int i9, int i10, long j10) {
        this.f1061a = file;
        this.f1065e = i9;
        this.f1062b = new File(file, "journal");
        this.f1063c = new File(file, "journal.tmp");
        this.f1064d = new File(file, "journal.bkp");
        this.f1067g = i10;
        this.f1066f = j10;
    }

    public static a A(File file, int i9, int i10, long j10) throws IOException {
        if (j10 > 0) {
            if (i10 > 0) {
                File file2 = new File(file, "journal.bkp");
                if (file2.exists()) {
                    File file3 = new File(file, "journal");
                    if (file3.exists()) {
                        file2.delete();
                    } else {
                        M(file2, file3, false);
                    }
                }
                a aVar = new a(file, i9, i10, j10);
                if (aVar.f1062b.exists()) {
                    try {
                        aVar.F();
                        aVar.C();
                        return aVar;
                    } catch (IOException e10) {
                        PrintStream printStream = System.out;
                        printStream.println("DiskLruCache " + file + " is corrupt: " + e10.getMessage() + ", removing");
                        aVar.q();
                    }
                }
                file.mkdirs();
                a aVar2 = new a(file, i9, i10, j10);
                aVar2.K();
                return aVar2;
            }
            throw new IllegalArgumentException("valueCount <= 0");
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private void C() throws IOException {
        r(this.f1063c);
        Iterator<d> it = this.f1070j.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i9 = 0;
            if (next.f1085f == null) {
                while (i9 < this.f1067g) {
                    this.f1068h += next.f1081b[i9];
                    i9++;
                }
            } else {
                next.f1085f = null;
                while (i9 < this.f1067g) {
                    r(next.j(i9));
                    r(next.k(i9));
                    i9++;
                }
                it.remove();
            }
        }
    }

    private void F() throws IOException {
        b0.b bVar = new b0.b(new FileInputStream(this.f1062b), b0.c.f1099a);
        try {
            String j10 = bVar.j();
            String j11 = bVar.j();
            String j12 = bVar.j();
            String j13 = bVar.j();
            String j14 = bVar.j();
            if (!"libcore.io.DiskLruCache".equals(j10) || !"1".equals(j11) || !Integer.toString(this.f1065e).equals(j12) || !Integer.toString(this.f1067g).equals(j13) || !"".equals(j14)) {
                throw new IOException("unexpected journal header: [" + j10 + ", " + j11 + ", " + j13 + ", " + j14 + "]");
            }
            int i9 = 0;
            while (true) {
                try {
                    I(bVar.j());
                    i9++;
                } catch (EOFException unused) {
                    this.f1071k = i9 - this.f1070j.size();
                    if (bVar.e()) {
                        K();
                    } else {
                        this.f1069i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f1062b, true), b0.c.f1099a));
                    }
                    b0.c.a(bVar);
                    return;
                }
            }
        } catch (Throwable th2) {
            b0.c.a(bVar);
            throw th2;
        }
    }

    private void I(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i9 = indexOf + 1;
            int indexOf2 = str.indexOf(32, i9);
            if (indexOf2 == -1) {
                substring = str.substring(i9);
                if (indexOf == 6 && str.startsWith("REMOVE")) {
                    this.f1070j.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i9, indexOf2);
            }
            d dVar = this.f1070j.get(substring);
            if (dVar == null) {
                dVar = new d(this, substring, null);
                this.f1070j.put(substring, dVar);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                dVar.f1084e = true;
                dVar.f1085f = null;
                dVar.n(split);
                return;
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                dVar.f1085f = new c(this, dVar, null);
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
    public synchronized void K() throws IOException {
        Writer writer = this.f1069i;
        if (writer != null) {
            o(writer);
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f1063c), b0.c.f1099a));
        bufferedWriter.write("libcore.io.DiskLruCache");
        bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
        bufferedWriter.write("1");
        bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
        bufferedWriter.write(Integer.toString(this.f1065e));
        bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
        bufferedWriter.write(Integer.toString(this.f1067g));
        bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
        bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
        for (d dVar : this.f1070j.values()) {
            if (dVar.f1085f != null) {
                bufferedWriter.write("DIRTY " + dVar.f1080a + '\n');
            } else {
                bufferedWriter.write("CLEAN " + dVar.f1080a + dVar.l() + '\n');
            }
        }
        o(bufferedWriter);
        if (this.f1062b.exists()) {
            M(this.f1062b, this.f1064d, true);
        }
        M(this.f1063c, this.f1062b, false);
        this.f1064d.delete();
        this.f1069i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f1062b, true), b0.c.f1099a));
    }

    private static void M(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            r(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() throws IOException {
        while (this.f1068h > this.f1066f) {
            L(this.f1070j.entrySet().iterator().next().getKey());
        }
    }

    private void k() {
        if (this.f1069i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    private static void o(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p(c cVar, boolean z10) throws IOException {
        d dVar = cVar.f1076a;
        if (dVar.f1085f == cVar) {
            if (z10 && !dVar.f1084e) {
                for (int i9 = 0; i9 < this.f1067g; i9++) {
                    if (cVar.f1077b[i9]) {
                        if (!dVar.k(i9).exists()) {
                            cVar.a();
                            return;
                        }
                    } else {
                        cVar.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i9);
                    }
                }
            }
            for (int i10 = 0; i10 < this.f1067g; i10++) {
                File k10 = dVar.k(i10);
                if (z10) {
                    if (k10.exists()) {
                        File j10 = dVar.j(i10);
                        k10.renameTo(j10);
                        long j11 = dVar.f1081b[i10];
                        long length = j10.length();
                        dVar.f1081b[i10] = length;
                        this.f1068h = (this.f1068h - j11) + length;
                    }
                } else {
                    r(k10);
                }
            }
            this.f1071k++;
            dVar.f1085f = null;
            if (dVar.f1084e | z10) {
                dVar.f1084e = true;
                this.f1069i.append((CharSequence) "CLEAN");
                this.f1069i.append(' ');
                this.f1069i.append((CharSequence) dVar.f1080a);
                this.f1069i.append((CharSequence) dVar.l());
                this.f1069i.append('\n');
                if (z10) {
                    long j12 = this.f1072l;
                    this.f1072l = 1 + j12;
                    dVar.f1086g = j12;
                }
            } else {
                this.f1070j.remove(dVar.f1080a);
                this.f1069i.append((CharSequence) "REMOVE");
                this.f1069i.append(' ');
                this.f1069i.append((CharSequence) dVar.f1080a);
                this.f1069i.append('\n');
            }
            v(this.f1069i);
            if (this.f1068h > this.f1066f || y()) {
                this.f1073m.submit(this.f1074n);
            }
            return;
        }
        throw new IllegalStateException();
    }

    private static void r(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private synchronized c t(String str, long j10) throws IOException {
        k();
        d dVar = this.f1070j.get(str);
        if (j10 == -1 || (dVar != null && dVar.f1086g == j10)) {
            if (dVar == null) {
                dVar = new d(this, str, null);
                this.f1070j.put(str, dVar);
            } else if (dVar.f1085f != null) {
                return null;
            }
            c cVar = new c(this, dVar, null);
            dVar.f1085f = cVar;
            this.f1069i.append((CharSequence) "DIRTY");
            this.f1069i.append(' ');
            this.f1069i.append((CharSequence) str);
            this.f1069i.append('\n');
            v(this.f1069i);
            return cVar;
        }
        return null;
    }

    private static void v(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean y() {
        int i9 = this.f1071k;
        return i9 >= 2000 && i9 >= this.f1070j.size();
    }

    public synchronized boolean L(String str) throws IOException {
        k();
        d dVar = this.f1070j.get(str);
        if (dVar != null && dVar.f1085f == null) {
            for (int i9 = 0; i9 < this.f1067g; i9++) {
                File j10 = dVar.j(i9);
                if (j10.exists() && !j10.delete()) {
                    throw new IOException("failed to delete " + j10);
                }
                this.f1068h -= dVar.f1081b[i9];
                dVar.f1081b[i9] = 0;
            }
            this.f1071k++;
            this.f1069i.append((CharSequence) "REMOVE");
            this.f1069i.append(' ');
            this.f1069i.append((CharSequence) str);
            this.f1069i.append('\n');
            this.f1070j.remove(str);
            if (y()) {
                this.f1073m.submit(this.f1074n);
            }
            return true;
        }
        return false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f1069i == null) {
            return;
        }
        Iterator it = new ArrayList(this.f1070j.values()).iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            if (dVar.f1085f != null) {
                dVar.f1085f.a();
            }
        }
        N();
        o(this.f1069i);
        this.f1069i = null;
    }

    public void q() throws IOException {
        close();
        b0.c.b(this.f1061a);
    }

    public c s(String str) throws IOException {
        return t(str, -1L);
    }

    public synchronized e w(String str) throws IOException {
        k();
        d dVar = this.f1070j.get(str);
        if (dVar == null) {
            return null;
        }
        if (dVar.f1084e) {
            for (File file : dVar.f1082c) {
                if (!file.exists()) {
                    return null;
                }
            }
            this.f1071k++;
            this.f1069i.append((CharSequence) "READ");
            this.f1069i.append(' ');
            this.f1069i.append((CharSequence) str);
            this.f1069i.append('\n');
            if (y()) {
                this.f1073m.submit(this.f1074n);
            }
            return new e(this, str, dVar.f1086g, dVar.f1082c, dVar.f1081b, null);
        }
        return null;
    }
}
