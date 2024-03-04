package h0;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import com.meizu.cloud.pushsdk.constants.PushConstants;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final int f40254a;

    /* renamed from: b  reason: collision with root package name */
    private final int f40255b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f40256c;

    /* renamed from: d  reason: collision with root package name */
    private final int f40257d;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: i  reason: collision with root package name */
        static final int f40258i;

        /* renamed from: a  reason: collision with root package name */
        final Context f40259a;

        /* renamed from: b  reason: collision with root package name */
        ActivityManager f40260b;

        /* renamed from: c  reason: collision with root package name */
        c f40261c;

        /* renamed from: e  reason: collision with root package name */
        float f40263e;

        /* renamed from: d  reason: collision with root package name */
        float f40262d = 2.0f;

        /* renamed from: f  reason: collision with root package name */
        float f40264f = 0.4f;

        /* renamed from: g  reason: collision with root package name */
        float f40265g = 0.33f;

        /* renamed from: h  reason: collision with root package name */
        int f40266h = 4194304;

        static {
            f40258i = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public a(Context context) {
            this.f40263e = f40258i;
            this.f40259a = context;
            this.f40260b = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
            this.f40261c = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !i.e(this.f40260b)) {
                return;
            }
            this.f40263e = 0.0f;
        }

        public i a() {
            return new i(this);
        }
    }

    /* loaded from: classes.dex */
    private static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private final DisplayMetrics f40267a;

        b(DisplayMetrics displayMetrics) {
            this.f40267a = displayMetrics;
        }

        @Override // h0.i.c
        public int a() {
            return this.f40267a.heightPixels;
        }

        @Override // h0.i.c
        public int b() {
            return this.f40267a.widthPixels;
        }
    }

    /* loaded from: classes.dex */
    interface c {
        int a();

        int b();
    }

    i(a aVar) {
        int i9;
        this.f40256c = aVar.f40259a;
        if (e(aVar.f40260b)) {
            i9 = aVar.f40266h / 2;
        } else {
            i9 = aVar.f40266h;
        }
        this.f40257d = i9;
        int c10 = c(aVar.f40260b, aVar.f40264f, aVar.f40265g);
        float b10 = aVar.f40261c.b() * aVar.f40261c.a() * 4;
        int round = Math.round(aVar.f40263e * b10);
        int round2 = Math.round(b10 * aVar.f40262d);
        int i10 = c10 - i9;
        int i11 = round2 + round;
        if (i11 <= i10) {
            this.f40255b = round2;
            this.f40254a = round;
        } else {
            float f10 = i10;
            float f11 = aVar.f40263e;
            float f12 = aVar.f40262d;
            float f13 = f10 / (f11 + f12);
            this.f40255b = Math.round(f12 * f13);
            this.f40254a = Math.round(f13 * aVar.f40263e);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Calculation complete, Calculated memory cache size: ");
            sb2.append(f(this.f40255b));
            sb2.append(", pool size: ");
            sb2.append(f(this.f40254a));
            sb2.append(", byte array size: ");
            sb2.append(f(i9));
            sb2.append(", memory class limited? ");
            sb2.append(i11 > c10);
            sb2.append(", max size: ");
            sb2.append(f(c10));
            sb2.append(", memoryClass: ");
            sb2.append(aVar.f40260b.getMemoryClass());
            sb2.append(", isLowMemoryDevice: ");
            sb2.append(e(aVar.f40260b));
            Log.d("MemorySizeCalculator", sb2.toString());
        }
    }

    private static int c(ActivityManager activityManager, float f10, float f11) {
        boolean e10 = e(activityManager);
        float memoryClass = activityManager.getMemoryClass() * 1024 * 1024;
        if (e10) {
            f10 = f11;
        }
        return Math.round(memoryClass * f10);
    }

    static boolean e(ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }

    private String f(int i9) {
        return Formatter.formatFileSize(this.f40256c, i9);
    }

    public int a() {
        return this.f40257d;
    }

    public int b() {
        return this.f40254a;
    }

    public int d() {
        return this.f40255b;
    }
}
