package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import java.io.File;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class r {

    /* renamed from: g  reason: collision with root package name */
    public static final boolean f4541g;

    /* renamed from: h  reason: collision with root package name */
    public static final boolean f4542h;

    /* renamed from: i  reason: collision with root package name */
    private static final File f4543i;

    /* renamed from: j  reason: collision with root package name */
    private static volatile r f4544j;

    /* renamed from: k  reason: collision with root package name */
    private static volatile int f4545k;

    /* renamed from: b  reason: collision with root package name */
    private final int f4547b;

    /* renamed from: c  reason: collision with root package name */
    private final int f4548c;
    @GuardedBy("this")

    /* renamed from: d  reason: collision with root package name */
    private int f4549d;
    @GuardedBy("this")

    /* renamed from: e  reason: collision with root package name */
    private boolean f4550e = true;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicBoolean f4551f = new AtomicBoolean(false);

    /* renamed from: a  reason: collision with root package name */
    private final boolean f4546a = f();

    static {
        int i9 = Build.VERSION.SDK_INT;
        f4541g = i9 < 29;
        f4542h = i9 >= 26;
        f4543i = new File("/proc/self/fd");
        f4545k = -1;
    }

    @VisibleForTesting
    r() {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f4547b = 20000;
            this.f4548c = 0;
            return;
        }
        this.f4547b = 700;
        this.f4548c = 128;
    }

    private boolean a() {
        return f4541g && !this.f4551f.get();
    }

    public static r b() {
        if (f4544j == null) {
            synchronized (r.class) {
                if (f4544j == null) {
                    f4544j = new r();
                }
            }
        }
        return f4544j;
    }

    private int c() {
        if (f4545k != -1) {
            return f4545k;
        }
        return this.f4547b;
    }

    private synchronized boolean d() {
        boolean z10 = true;
        int i9 = this.f4549d + 1;
        this.f4549d = i9;
        if (i9 >= 50) {
            this.f4549d = 0;
            int length = f4543i.list().length;
            long c10 = c();
            if (length >= c10) {
                z10 = false;
            }
            this.f4550e = z10;
            if (!z10 && Log.isLoggable("Downsampler", 5)) {
                Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + c10);
            }
        }
        return this.f4550e;
    }

    private static boolean f() {
        return (g() || h()) ? false : true;
    }

    private static boolean g() {
        if (Build.VERSION.SDK_INT != 26) {
            return false;
        }
        for (String str : Arrays.asList("SC-04J", "SM-N935", "SM-J720", "SM-G570F", "SM-G570M", "SM-G960", "SM-G965", "SM-G935", "SM-G930", "SM-A520", "SM-A720F", "moto e5", "moto e5 play", "moto e5 plus", "moto e5 cruise", "moto g(6) forge", "moto g(6) play")) {
            if (Build.MODEL.startsWith(str)) {
                return true;
            }
        }
        return false;
    }

    private static boolean h() {
        if (Build.VERSION.SDK_INT != 27) {
            return false;
        }
        return Arrays.asList("LG-M250", "LG-M320", "LG-Q710AL", "LG-Q710PL", "LGM-K121K", "LGM-K121L", "LGM-K121S", "LGM-X320K", "LGM-X320L", "LGM-X320S", "LGM-X401L", "LGM-X401S", "LM-Q610.FG", "LM-Q610.FGN", "LM-Q617.FG", "LM-Q617.FGN", "LM-Q710.FG", "LM-Q710.FGN", "LM-X220PM", "LM-X220QMA", "LM-X410PM").contains(Build.MODEL);
    }

    public boolean e(int i9, int i10, boolean z10, boolean z11) {
        if (!z10) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by caller");
            }
            return false;
        } else if (!this.f4546a) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by device model");
            }
            return false;
        } else if (!f4542h) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by sdk");
            }
            return false;
        } else if (a()) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by app state");
            }
            return false;
        } else if (z11) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed because exif orientation is required");
            }
            return false;
        } else {
            int i11 = this.f4548c;
            if (i9 < i11) {
                if (Log.isLoggable("HardwareConfig", 2)) {
                    Log.v("HardwareConfig", "Hardware config disallowed because width is too small");
                }
                return false;
            } else if (i10 < i11) {
                if (Log.isLoggable("HardwareConfig", 2)) {
                    Log.v("HardwareConfig", "Hardware config disallowed because height is too small");
                }
                return false;
            } else if (d()) {
                return true;
            } else {
                if (Log.isLoggable("HardwareConfig", 2)) {
                    Log.v("HardwareConfig", "Hardware config disallowed because there are insufficient FDs");
                }
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i(int i9, int i10, BitmapFactory.Options options, boolean z10, boolean z11) {
        boolean e10 = e(i9, i10, z10, z11);
        if (e10) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return e10;
    }
}
