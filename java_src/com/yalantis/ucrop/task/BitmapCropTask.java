package com.yalantis.ucrop.task;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import java.io.File;
import java.io.IOException;
import wf.a;
import xf.b;
import xf.c;
import zf.e;
import zf.f;
/* loaded from: classes5.dex */
public class BitmapCropTask extends AsyncTask<Void, Void, Throwable> {

    /* renamed from: a  reason: collision with root package name */
    private Bitmap f37652a;

    /* renamed from: b  reason: collision with root package name */
    private final RectF f37653b;

    /* renamed from: c  reason: collision with root package name */
    private final RectF f37654c;

    /* renamed from: d  reason: collision with root package name */
    private float f37655d;

    /* renamed from: e  reason: collision with root package name */
    private float f37656e;

    /* renamed from: f  reason: collision with root package name */
    private final int f37657f;

    /* renamed from: g  reason: collision with root package name */
    private final int f37658g;

    /* renamed from: h  reason: collision with root package name */
    private final Bitmap.CompressFormat f37659h;

    /* renamed from: i  reason: collision with root package name */
    private final int f37660i;

    /* renamed from: j  reason: collision with root package name */
    private final String f37661j;

    /* renamed from: k  reason: collision with root package name */
    private final String f37662k;

    /* renamed from: l  reason: collision with root package name */
    private final b f37663l;

    /* renamed from: m  reason: collision with root package name */
    private final a f37664m;

    /* renamed from: n  reason: collision with root package name */
    private int f37665n;

    /* renamed from: o  reason: collision with root package name */
    private int f37666o;

    /* renamed from: p  reason: collision with root package name */
    private int f37667p;

    /* renamed from: q  reason: collision with root package name */
    private int f37668q;

    static {
        System.loadLibrary("ucrop");
    }

    public BitmapCropTask(@Nullable Bitmap bitmap, @NonNull c cVar, @NonNull xf.a aVar, @Nullable a aVar2) {
        this.f37652a = bitmap;
        this.f37653b = cVar.a();
        this.f37654c = cVar.c();
        this.f37655d = cVar.d();
        this.f37656e = cVar.b();
        this.f37657f = aVar.f();
        this.f37658g = aVar.g();
        this.f37659h = aVar.a();
        this.f37660i = aVar.b();
        this.f37661j = aVar.d();
        this.f37662k = aVar.e();
        this.f37663l = aVar.c();
        this.f37664m = aVar2;
    }

    private boolean a(float f10) throws IOException {
        ExifInterface exifInterface = new ExifInterface(this.f37661j);
        this.f37667p = Math.round((this.f37653b.left - this.f37654c.left) / this.f37655d);
        this.f37668q = Math.round((this.f37653b.top - this.f37654c.top) / this.f37655d);
        this.f37665n = Math.round(this.f37653b.width() / this.f37655d);
        int round = Math.round(this.f37653b.height() / this.f37655d);
        this.f37666o = round;
        boolean e10 = e(this.f37665n, round);
        Log.i("BitmapCropTask", "Should crop: " + e10);
        if (e10) {
            boolean cropCImg = cropCImg(this.f37661j, this.f37662k, this.f37667p, this.f37668q, this.f37665n, this.f37666o, this.f37656e, f10, this.f37659h.ordinal(), this.f37660i, this.f37663l.a(), this.f37663l.b());
            if (cropCImg && this.f37659h.equals(Bitmap.CompressFormat.JPEG)) {
                f.b(exifInterface, this.f37665n, this.f37666o, this.f37662k);
            }
            return cropCImg;
        }
        e.a(this.f37661j, this.f37662k);
        return false;
    }

    public static native boolean cropCImg(String str, String str2, int i9, int i10, int i11, int i12, float f10, float f11, int i13, int i14, int i15, int i16) throws IOException, OutOfMemoryError;

    private float d() {
        BitmapFactory.Options options = new BitmapFactory.Options();
        boolean z10 = true;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(this.f37661j, options);
        if (this.f37663l.a() != 90 && this.f37663l.a() != 270) {
            z10 = false;
        }
        this.f37655d /= Math.min((z10 ? options.outHeight : options.outWidth) / this.f37652a.getWidth(), (z10 ? options.outWidth : options.outHeight) / this.f37652a.getHeight());
        if (this.f37657f <= 0 || this.f37658g <= 0) {
            return 1.0f;
        }
        float width = this.f37653b.width() / this.f37655d;
        float height = this.f37653b.height() / this.f37655d;
        int i9 = this.f37657f;
        if (width > i9 || height > this.f37658g) {
            float min = Math.min(i9 / width, this.f37658g / height);
            this.f37655d /= min;
            return min;
        }
        return 1.0f;
    }

    private boolean e(int i9, int i10) {
        int round = Math.round(Math.max(i9, i10) / 1000.0f) + 1;
        if (this.f37657f <= 0 || this.f37658g <= 0) {
            float f10 = round;
            return Math.abs(this.f37653b.left - this.f37654c.left) > f10 || Math.abs(this.f37653b.top - this.f37654c.top) > f10 || Math.abs(this.f37653b.bottom - this.f37654c.bottom) > f10 || Math.abs(this.f37653b.right - this.f37654c.right) > f10 || this.f37656e != 0.0f;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    @Nullable
    /* renamed from: b */
    public Throwable doInBackground(Void... voidArr) {
        Bitmap bitmap = this.f37652a;
        if (bitmap == null) {
            return new NullPointerException("ViewBitmap is null");
        }
        if (bitmap.isRecycled()) {
            return new NullPointerException("ViewBitmap is recycled");
        }
        if (this.f37654c.isEmpty()) {
            return new NullPointerException("CurrentImageRect is empty");
        }
        try {
            a(d());
            this.f37652a = null;
            return null;
        } catch (Throwable th2) {
            return th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: c */
    public void onPostExecute(@Nullable Throwable th2) {
        a aVar = this.f37664m;
        if (aVar != null) {
            if (th2 == null) {
                this.f37664m.a(Uri.fromFile(new File(this.f37662k)), this.f37667p, this.f37668q, this.f37665n, this.f37666o);
                return;
            }
            aVar.b(th2);
        }
    }
}
