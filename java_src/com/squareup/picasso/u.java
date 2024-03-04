package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4.dex */
public abstract class u {

    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Picasso.LoadedFrom f30040a;

        /* renamed from: b  reason: collision with root package name */
        private final Bitmap f30041b;

        /* renamed from: c  reason: collision with root package name */
        private final InputStream f30042c;

        /* renamed from: d  reason: collision with root package name */
        private final int f30043d;

        public a(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
            this((Bitmap) c0.d(bitmap, "bitmap == null"), null, loadedFrom, 0);
        }

        public Bitmap a() {
            return this.f30041b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int b() {
            return this.f30043d;
        }

        public Picasso.LoadedFrom c() {
            return this.f30040a;
        }

        public InputStream d() {
            return this.f30042c;
        }

        public a(InputStream inputStream, Picasso.LoadedFrom loadedFrom) {
            this(null, (InputStream) c0.d(inputStream, "stream == null"), loadedFrom, 0);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Bitmap bitmap, InputStream inputStream, Picasso.LoadedFrom loadedFrom, int i9) {
            if ((inputStream != null) ^ (bitmap != null)) {
                this.f30041b = bitmap;
                this.f30042c = inputStream;
                this.f30040a = (Picasso.LoadedFrom) c0.d(loadedFrom, "loadedFrom == null");
                this.f30043d = i9;
                return;
            }
            throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i9, int i10, int i11, int i12, BitmapFactory.Options options, s sVar) {
        int min;
        double floor;
        if (i12 > i10 || i11 > i9) {
            if (i10 == 0) {
                floor = Math.floor(i11 / i9);
            } else if (i9 == 0) {
                floor = Math.floor(i12 / i10);
            } else {
                int floor2 = (int) Math.floor(i12 / i10);
                int floor3 = (int) Math.floor(i11 / i9);
                if (sVar.f30004k) {
                    min = Math.max(floor2, floor3);
                } else {
                    min = Math.min(floor2, floor3);
                }
            }
            min = (int) floor;
        } else {
            min = 1;
        }
        options.inSampleSize = min;
        options.inJustDecodeBounds = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(int i9, int i10, BitmapFactory.Options options, s sVar) {
        a(i9, i10, options.outWidth, options.outHeight, options, sVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BitmapFactory.Options d(s sVar) {
        boolean c10 = sVar.c();
        boolean z10 = sVar.f30010q != null;
        BitmapFactory.Options options = null;
        if (c10 || z10) {
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = c10;
            if (z10) {
                options.inPreferredConfig = sVar.f30010q;
            }
        }
        return options;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean g(BitmapFactory.Options options) {
        return options != null && options.inJustDecodeBounds;
    }

    public abstract boolean c(s sVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return 0;
    }

    public abstract a f(s sVar, int i9) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h(boolean z10, NetworkInfo networkInfo) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return false;
    }
}
