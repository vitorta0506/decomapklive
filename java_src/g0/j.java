package g0;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class j implements d {

    /* renamed from: k  reason: collision with root package name */
    private static final Bitmap.Config f39867k = Bitmap.Config.ARGB_8888;

    /* renamed from: a  reason: collision with root package name */
    private final k f39868a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<Bitmap.Config> f39869b;

    /* renamed from: c  reason: collision with root package name */
    private final long f39870c;

    /* renamed from: d  reason: collision with root package name */
    private final a f39871d;

    /* renamed from: e  reason: collision with root package name */
    private long f39872e;

    /* renamed from: f  reason: collision with root package name */
    private long f39873f;

    /* renamed from: g  reason: collision with root package name */
    private int f39874g;

    /* renamed from: h  reason: collision with root package name */
    private int f39875h;

    /* renamed from: i  reason: collision with root package name */
    private int f39876i;

    /* renamed from: j  reason: collision with root package name */
    private int f39877j;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface a {
        void a(Bitmap bitmap);

        void b(Bitmap bitmap);
    }

    /* loaded from: classes.dex */
    private static final class b implements a {
        b() {
        }

        @Override // g0.j.a
        public void a(Bitmap bitmap) {
        }

        @Override // g0.j.a
        public void b(Bitmap bitmap) {
        }
    }

    j(long j10, k kVar, Set<Bitmap.Config> set) {
        this.f39870c = j10;
        this.f39872e = j10;
        this.f39868a = kVar;
        this.f39869b = set;
        this.f39871d = new b();
    }

    private static void f(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
    }

    @NonNull
    private static Bitmap g(int i9, int i10, @Nullable Bitmap.Config config) {
        if (config == null) {
            config = f39867k;
        }
        return Bitmap.createBitmap(i9, i10, config);
    }

    private void h() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            i();
        }
    }

    private void i() {
        Log.v("LruBitmapPool", "Hits=" + this.f39874g + ", misses=" + this.f39875h + ", puts=" + this.f39876i + ", evictions=" + this.f39877j + ", currentSize=" + this.f39873f + ", maxSize=" + this.f39872e + "\nStrategy=" + this.f39868a);
    }

    private void j() {
        q(this.f39872e);
    }

    private static Set<Bitmap.Config> k() {
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i9 = Build.VERSION.SDK_INT;
        hashSet.add(null);
        if (i9 >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    private static k l() {
        return new m();
    }

    @Nullable
    private synchronized Bitmap m(int i9, int i10, @Nullable Bitmap.Config config) {
        Bitmap d10;
        f(config);
        d10 = this.f39868a.d(i9, i10, config != null ? config : f39867k);
        if (d10 == null) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Log.d("LruBitmapPool", "Missing bitmap=" + this.f39868a.b(i9, i10, config));
            }
            this.f39875h++;
        } else {
            this.f39874g++;
            this.f39873f -= this.f39868a.e(d10);
            this.f39871d.a(d10);
            p(d10);
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            Log.v("LruBitmapPool", "Get bitmap=" + this.f39868a.b(i9, i10, config));
        }
        h();
        return d10;
    }

    private static void o(Bitmap bitmap) {
        bitmap.setPremultiplied(true);
    }

    private static void p(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        o(bitmap);
    }

    private synchronized void q(long j10) {
        while (this.f39873f > j10) {
            Bitmap removeLast = this.f39868a.removeLast();
            if (removeLast == null) {
                if (Log.isLoggable("LruBitmapPool", 5)) {
                    Log.w("LruBitmapPool", "Size mismatch, resetting");
                    i();
                }
                this.f39873f = 0L;
                return;
            }
            this.f39871d.a(removeLast);
            this.f39873f -= this.f39868a.e(removeLast);
            this.f39877j++;
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Log.d("LruBitmapPool", "Evicting bitmap=" + this.f39868a.a(removeLast));
            }
            h();
            removeLast.recycle();
        }
    }

    @Override // g0.d
    public void a(int i9) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i9);
        }
        if (i9 >= 40 || (Build.VERSION.SDK_INT >= 23 && i9 >= 20)) {
            b();
        } else if (i9 >= 20 || i9 == 15) {
            q(n() / 2);
        }
    }

    @Override // g0.d
    public void b() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        q(0L);
    }

    @Override // g0.d
    public synchronized void c(Bitmap bitmap) {
        try {
            if (bitmap != null) {
                if (!bitmap.isRecycled()) {
                    if (bitmap.isMutable() && this.f39868a.e(bitmap) <= this.f39872e && this.f39869b.contains(bitmap.getConfig())) {
                        int e10 = this.f39868a.e(bitmap);
                        this.f39868a.c(bitmap);
                        this.f39871d.b(bitmap);
                        this.f39876i++;
                        this.f39873f += e10;
                        if (Log.isLoggable("LruBitmapPool", 2)) {
                            Log.v("LruBitmapPool", "Put bitmap in pool=" + this.f39868a.a(bitmap));
                        }
                        h();
                        j();
                        return;
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.f39868a.a(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f39869b.contains(bitmap.getConfig()));
                    }
                    bitmap.recycle();
                    return;
                }
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            throw new NullPointerException("Bitmap must not be null");
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // g0.d
    @NonNull
    public Bitmap d(int i9, int i10, Bitmap.Config config) {
        Bitmap m10 = m(i9, i10, config);
        if (m10 != null) {
            m10.eraseColor(0);
            return m10;
        }
        return g(i9, i10, config);
    }

    @Override // g0.d
    @NonNull
    public Bitmap e(int i9, int i10, Bitmap.Config config) {
        Bitmap m10 = m(i9, i10, config);
        return m10 == null ? g(i9, i10, config) : m10;
    }

    public long n() {
        return this.f39872e;
    }

    public j(long j10) {
        this(j10, l(), k());
    }
}
