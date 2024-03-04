package m;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import android.provider.Settings;
import androidx.annotation.Nullable;
import e.s;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<PathMeasure> f54395a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<Path> f54396b = new b();

    /* renamed from: c  reason: collision with root package name */
    private static final ThreadLocal<Path> f54397c = new c();

    /* renamed from: d  reason: collision with root package name */
    private static final ThreadLocal<float[]> f54398d = new d();

    /* renamed from: e  reason: collision with root package name */
    private static final float f54399e = (float) (Math.sqrt(2.0d) / 2.0d);

    /* renamed from: f  reason: collision with root package name */
    private static float f54400f = -1.0f;

    /* loaded from: classes.dex */
    class a extends ThreadLocal<PathMeasure> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public PathMeasure initialValue() {
            return new PathMeasure();
        }
    }

    /* loaded from: classes.dex */
    class b extends ThreadLocal<Path> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public Path initialValue() {
            return new Path();
        }
    }

    /* loaded from: classes.dex */
    class c extends ThreadLocal<Path> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public Path initialValue() {
            return new Path();
        }
    }

    /* loaded from: classes.dex */
    class d extends ThreadLocal<float[]> {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public float[] initialValue() {
            return new float[4];
        }
    }

    public static void a(Path path, float f10, float f11, float f12) {
        com.airbnb.lottie.c.a("applyTrimPathIfNeeded");
        PathMeasure pathMeasure = f54395a.get();
        Path path2 = f54396b.get();
        Path path3 = f54397c.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f10 == 1.0f && f11 == 0.0f) {
            com.airbnb.lottie.c.b("applyTrimPathIfNeeded");
        } else if (length >= 1.0f && Math.abs((f11 - f10) - 1.0f) >= 0.01d) {
            float f13 = f10 * length;
            float f14 = f11 * length;
            float f15 = f12 * length;
            float min = Math.min(f13, f14) + f15;
            float max = Math.max(f13, f14) + f15;
            if (min >= length && max >= length) {
                min = g.g(min, length);
                max = g.g(max, length);
            }
            if (min < 0.0f) {
                min = g.g(min, length);
            }
            if (max < 0.0f) {
                max = g.g(max, length);
            }
            int i9 = (min > max ? 1 : (min == max ? 0 : -1));
            if (i9 == 0) {
                path.reset();
                com.airbnb.lottie.c.b("applyTrimPathIfNeeded");
                return;
            }
            if (i9 >= 0) {
                min -= length;
            }
            path2.reset();
            pathMeasure.getSegment(min, max, path2, true);
            if (max > length) {
                path3.reset();
                pathMeasure.getSegment(0.0f, max % length, path3, true);
                path2.addPath(path3);
            } else if (min < 0.0f) {
                path3.reset();
                pathMeasure.getSegment(min + length, length, path3, true);
                path2.addPath(path3);
            }
            path.set(path2);
            com.airbnb.lottie.c.b("applyTrimPathIfNeeded");
        } else {
            com.airbnb.lottie.c.b("applyTrimPathIfNeeded");
        }
    }

    public static void b(Path path, @Nullable s sVar) {
        if (sVar == null || sVar.j()) {
            return;
        }
        a(path, ((f.d) sVar.h()).p() / 100.0f, ((f.d) sVar.e()).p() / 100.0f, ((f.d) sVar.f()).p() / 360.0f);
    }

    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static Path d(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 != null && pointF4 != null && (pointF3.length() != 0.0f || pointF4.length() != 0.0f)) {
            float f10 = pointF.x;
            float f11 = pointF2.x;
            float f12 = pointF2.y;
            path.cubicTo(pointF3.x + f10, pointF.y + pointF3.y, f11 + pointF4.x, f12 + pointF4.y, f11, f12);
        } else {
            path.lineTo(pointF2.x, pointF2.y);
        }
        return path;
    }

    public static float e() {
        if (f54400f == -1.0f) {
            f54400f = Resources.getSystem().getDisplayMetrics().density;
        }
        return f54400f;
    }

    public static float f(Context context) {
        return Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    public static float g(Matrix matrix) {
        float[] fArr = f54398d.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f10 = f54399e;
        fArr[2] = f10;
        fArr[3] = f10;
        matrix.mapPoints(fArr);
        return (float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
    }

    public static boolean h(Matrix matrix) {
        float[] fArr = f54398d.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 37394.73f;
        fArr[3] = 39575.234f;
        matrix.mapPoints(fArr);
        return fArr[0] == fArr[2] || fArr[1] == fArr[3];
    }

    public static int i(float f10, float f11, float f12, float f13) {
        int i9 = f10 != 0.0f ? (int) (527 * f10) : 17;
        if (f11 != 0.0f) {
            i9 = (int) (i9 * 31 * f11);
        }
        if (f12 != 0.0f) {
            i9 = (int) (i9 * 31 * f12);
        }
        return f13 != 0.0f ? (int) (i9 * 31 * f13) : i9;
    }

    public static boolean j(int i9, int i10, int i11, int i12, int i13, int i14) {
        if (i9 < i12) {
            return false;
        }
        if (i9 > i12) {
            return true;
        }
        if (i10 < i13) {
            return false;
        }
        return i10 > i13 || i11 >= i14;
    }

    public static boolean k(Throwable th2) {
        return (th2 instanceof SocketException) || (th2 instanceof ClosedChannelException) || (th2 instanceof InterruptedIOException) || (th2 instanceof ProtocolException) || (th2 instanceof SSLException) || (th2 instanceof UnknownHostException) || (th2 instanceof UnknownServiceException);
    }

    public static Bitmap l(Bitmap bitmap, int i9, int i10) {
        if (bitmap.getWidth() == i9 && bitmap.getHeight() == i10) {
            return bitmap;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i9, i10, true);
        bitmap.recycle();
        return createScaledBitmap;
    }

    public static void m(Canvas canvas, RectF rectF, Paint paint) {
        n(canvas, rectF, paint, 31);
    }

    public static void n(Canvas canvas, RectF rectF, Paint paint, int i9) {
        com.airbnb.lottie.c.a("Utils#saveLayer");
        if (Build.VERSION.SDK_INT < 23) {
            canvas.saveLayer(rectF, paint, i9);
        } else {
            canvas.saveLayer(rectF, paint);
        }
        com.airbnb.lottie.c.b("Utils#saveLayer");
    }
}
