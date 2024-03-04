package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Paint f4493a = new Paint(6);

    /* renamed from: b  reason: collision with root package name */
    private static final Paint f4494b = new Paint(7);

    /* renamed from: c  reason: collision with root package name */
    private static final Paint f4495c;

    /* renamed from: d  reason: collision with root package name */
    private static final Set<String> f4496d;

    /* renamed from: e  reason: collision with root package name */
    private static final Lock f4497e;

    /* loaded from: classes.dex */
    class a implements b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f4498a;

        a(int i9) {
            this.f4498a = i9;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.a0.b
        public void a(Canvas canvas, Paint paint, RectF rectF) {
            int i9 = this.f4498a;
            canvas.drawRoundRect(rectF, i9, i9, paint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface b {
        void a(Canvas canvas, Paint paint, RectF rectF);
    }

    /* loaded from: classes.dex */
    private static final class c implements Lock {
        c() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
        }

        @Override // java.util.concurrent.locks.Lock
        @NonNull
        public Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock(long j10, @NonNull TimeUnit timeUnit) throws InterruptedException {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public void unlock() {
        }
    }

    static {
        HashSet hashSet = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));
        f4496d = hashSet;
        f4497e = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new c();
        Paint paint = new Paint(7);
        f4495c = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    private static void a(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, Matrix matrix) {
        Lock lock = f4497e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f4493a);
            e(canvas);
            lock.unlock();
        } catch (Throwable th2) {
            f4497e.unlock();
            throw th2;
        }
    }

    public static Bitmap b(@NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9, int i10) {
        float width;
        float height;
        if (bitmap.getWidth() == i9 && bitmap.getHeight() == i10) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float f10 = 0.0f;
        if (bitmap.getWidth() * i10 > bitmap.getHeight() * i9) {
            width = i10 / bitmap.getHeight();
            f10 = (i9 - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i9 / bitmap.getWidth();
            height = (i10 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (f10 + 0.5f), (int) (height + 0.5f));
        Bitmap d10 = dVar.d(i9, i10, k(bitmap));
        q(bitmap, d10);
        a(bitmap, d10, matrix);
        return d10;
    }

    public static Bitmap c(@NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9, int i10) {
        if (bitmap.getWidth() <= i9 && bitmap.getHeight() <= i10) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
            }
            return bitmap;
        }
        if (Log.isLoggable("TransformationUtils", 2)) {
            Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
        }
        return f(dVar, bitmap, i9, i10);
    }

    public static Bitmap d(@NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9, int i10) {
        int min = Math.min(i9, i10);
        float f10 = min;
        float f11 = f10 / 2.0f;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float max = Math.max(f10 / width, f10 / height);
        float f12 = width * max;
        float f13 = max * height;
        float f14 = (f10 - f12) / 2.0f;
        float f15 = (f10 - f13) / 2.0f;
        RectF rectF = new RectF(f14, f15, f12 + f14, f13 + f15);
        Bitmap g10 = g(dVar, bitmap);
        Bitmap d10 = dVar.d(min, min, h(bitmap));
        d10.setHasAlpha(true);
        Lock lock = f4497e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(d10);
            canvas.drawCircle(f11, f11, f11, f4494b);
            canvas.drawBitmap(g10, (Rect) null, rectF, f4495c);
            e(canvas);
            lock.unlock();
            if (!g10.equals(bitmap)) {
                dVar.c(g10);
            }
            return d10;
        } catch (Throwable th2) {
            f4497e.unlock();
            throw th2;
        }
    }

    private static void e(Canvas canvas) {
        canvas.setBitmap(null);
    }

    public static Bitmap f(@NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9, int i10) {
        if (bitmap.getWidth() == i9 && bitmap.getHeight() == i10) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size matches input, returning input");
            }
            return bitmap;
        }
        float min = Math.min(i9 / bitmap.getWidth(), i10 / bitmap.getHeight());
        int round = Math.round(bitmap.getWidth() * min);
        int round2 = Math.round(bitmap.getHeight() * min);
        if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "adjusted target size matches input, returning input");
            }
            return bitmap;
        }
        Bitmap d10 = dVar.d((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), k(bitmap));
        q(bitmap, d10);
        if (Log.isLoggable("TransformationUtils", 2)) {
            Log.v("TransformationUtils", "request: " + i9 + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + i10);
            Log.v("TransformationUtils", "toFit:   " + bitmap.getWidth() + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + bitmap.getHeight());
            Log.v("TransformationUtils", "toReuse: " + d10.getWidth() + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + d10.getHeight());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("minPct:   ");
            sb2.append(min);
            Log.v("TransformationUtils", sb2.toString());
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        a(bitmap, d10, matrix);
        return d10;
    }

    private static Bitmap g(@NonNull g0.d dVar, @NonNull Bitmap bitmap) {
        Bitmap.Config h10 = h(bitmap);
        if (h10.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap d10 = dVar.d(bitmap.getWidth(), bitmap.getHeight(), h10);
        new Canvas(d10).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return d10;
    }

    @NonNull
    private static Bitmap.Config h(@NonNull Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) {
            return Bitmap.Config.RGBA_F16;
        }
        return Bitmap.Config.ARGB_8888;
    }

    public static Lock i() {
        return f4497e;
    }

    public static int j(int i9) {
        switch (i9) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return 270;
            default:
                return 0;
        }
    }

    @NonNull
    private static Bitmap.Config k(@NonNull Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    @VisibleForTesting
    static void l(int i9, Matrix matrix) {
        switch (i9) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                return;
            case 3:
                matrix.setRotate(180.0f);
                return;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 6:
                matrix.setRotate(90.0f);
                return;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 8:
                matrix.setRotate(-90.0f);
                return;
            default:
                return;
        }
    }

    public static boolean m(int i9) {
        switch (i9) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public static Bitmap n(@NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9) {
        if (m(i9)) {
            Matrix matrix = new Matrix();
            l(i9, matrix);
            RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
            matrix.mapRect(rectF);
            Bitmap d10 = dVar.d(Math.round(rectF.width()), Math.round(rectF.height()), k(bitmap));
            matrix.postTranslate(-rectF.left, -rectF.top);
            d10.setHasAlpha(bitmap.hasAlpha());
            a(bitmap, d10, matrix);
            return d10;
        }
        return bitmap;
    }

    public static Bitmap o(@NonNull g0.d dVar, @NonNull Bitmap bitmap, int i9) {
        v0.j.a(i9 > 0, "roundingRadius must be greater than 0.");
        return p(dVar, bitmap, new a(i9));
    }

    private static Bitmap p(@NonNull g0.d dVar, @NonNull Bitmap bitmap, b bVar) {
        Bitmap.Config h10 = h(bitmap);
        Bitmap g10 = g(dVar, bitmap);
        Bitmap d10 = dVar.d(g10.getWidth(), g10.getHeight(), h10);
        d10.setHasAlpha(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(g10, tileMode, tileMode);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, d10.getWidth(), d10.getHeight());
        Lock lock = f4497e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(d10);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            bVar.a(canvas, paint, rectF);
            e(canvas);
            lock.unlock();
            if (!g10.equals(bitmap)) {
                dVar.c(g10);
            }
            return d10;
        } catch (Throwable th2) {
            f4497e.unlock();
            throw th2;
        }
    }

    public static void q(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }
}
