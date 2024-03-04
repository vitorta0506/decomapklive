package h0;

import android.util.Log;
import b0.a;
import h0.a;
import java.io.File;
import java.io.IOException;
/* loaded from: classes.dex */
public class e implements a {

    /* renamed from: b  reason: collision with root package name */
    private final File f40247b;

    /* renamed from: c  reason: collision with root package name */
    private final long f40248c;

    /* renamed from: e  reason: collision with root package name */
    private b0.a f40250e;

    /* renamed from: d  reason: collision with root package name */
    private final c f40249d = new c();

    /* renamed from: a  reason: collision with root package name */
    private final j f40246a = new j();

    @Deprecated
    protected e(File file, long j10) {
        this.f40247b = file;
        this.f40248c = j10;
    }

    public static a c(File file, long j10) {
        return new e(file, j10);
    }

    private synchronized b0.a d() throws IOException {
        if (this.f40250e == null) {
            this.f40250e = b0.a.A(this.f40247b, 1, 1, this.f40248c);
        }
        return this.f40250e;
    }

    @Override // h0.a
    public File a(e0.b bVar) {
        String b10 = this.f40246a.b(bVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + b10 + " for for Key: " + bVar);
        }
        try {
            a.e w6 = d().w(b10);
            if (w6 != null) {
                return w6.a(0);
            }
            return null;
        } catch (IOException e10) {
            if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e10);
                return null;
            }
            return null;
        }
    }

    @Override // h0.a
    public void b(e0.b bVar, a.b bVar2) {
        b0.a d10;
        String b10 = this.f40246a.b(bVar);
        this.f40249d.a(b10);
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + b10 + " for for Key: " + bVar);
            }
            try {
                d10 = d();
            } catch (IOException e10) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e10);
                }
            }
            if (d10.w(b10) != null) {
                return;
            }
            a.c s10 = d10.s(b10);
            if (s10 != null) {
                try {
                    if (bVar2.a(s10.f(0))) {
                        s10.e();
                    }
                    s10.b();
                    return;
                } catch (Throwable th2) {
                    s10.b();
                    throw th2;
                }
            }
            throw new IllegalStateException("Had two simultaneous puts for: " + b10);
        } finally {
            this.f40249d.b(b10);
        }
    }
}
