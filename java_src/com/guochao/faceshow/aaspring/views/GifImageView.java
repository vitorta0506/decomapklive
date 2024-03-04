package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.Movie;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import com.github.chrisbanes.photoview.PhotoView;
import com.guochao.faceshow.aaspring.utils.UriUtils;
import java.io.File;
import java.io.IOException;
/* loaded from: classes3.dex */
public class GifImageView extends PhotoView {

    /* renamed from: c  reason: collision with root package name */
    Movie f23701c;

    /* renamed from: d  reason: collision with root package name */
    long f23702d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f23703e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f23704f;

    /* renamed from: g  reason: collision with root package name */
    Bitmap f23705g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: com.guochao.faceshow.aaspring.views.GifImageView$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0235a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Bitmap f23707a;

            RunnableC0235a(Bitmap bitmap) {
                this.f23707a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                Bitmap bitmap = GifImageView.this.f23705g;
                if (bitmap != null) {
                    bitmap.recycle();
                    GifImageView.this.f23705g = null;
                }
                float scale = GifImageView.this.getScale();
                GifImageView.this.setImageBitmap(this.f23707a);
                try {
                    GifImageView.this.setScale(scale);
                } catch (Exception unused) {
                }
                GifImageView.this.f23705g = this.f23707a;
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GifImageView.this.f23702d = System.currentTimeMillis();
            int duration = GifImageView.this.f23701c.duration();
            if (duration == 0) {
                duration = 1000;
            }
            while (GifImageView.this.f23704f) {
                Bitmap createBitmap = Bitmap.createBitmap(GifImageView.this.f23701c.width(), GifImageView.this.f23701c.height(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                long currentTimeMillis = System.currentTimeMillis();
                GifImageView gifImageView = GifImageView.this;
                gifImageView.f23701c.setTime((int) ((currentTimeMillis - gifImageView.f23702d) % duration));
                GifImageView.this.f23701c.draw(canvas, 0.0f, 0.0f);
                GifImageView.this.post(new RunnableC0235a(createBitmap));
            }
        }
    }

    public GifImageView(Context context) {
        super(context);
        this.f23703e = false;
        this.f23704f = false;
    }

    private void g() {
        if (this.f23703e) {
            return;
        }
        new Thread(new a()).start();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f23701c == null || this.f23704f) {
            return;
        }
        this.f23704f = true;
        g();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f23704f = false;
        this.f23703e = true;
    }

    public void setGifDrawable(File file) {
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                setImageDrawable(ImageDecoder.decodeDrawable(ImageDecoder.createSource(file)));
                return;
            } catch (IOException unused) {
                return;
            }
        }
        Movie decodeFile = Movie.decodeFile(file.getAbsolutePath());
        this.f23701c = decodeFile;
        if (decodeFile != null && decodeFile.duration() != 0) {
            this.f23704f = true;
            g();
            return;
        }
        this.f23701c = null;
        this.f23704f = false;
        setImageDrawable(Drawable.createFromPath(file.getAbsolutePath()));
    }

    @Override // com.github.chrisbanes.photoview.PhotoView, androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        if (Build.VERSION.SDK_INT < 28 || !(drawable instanceof AnimatedImageDrawable)) {
            return;
        }
        ((AnimatedImageDrawable) drawable).start();
    }

    public GifImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23703e = false;
        this.f23704f = false;
    }

    public GifImageView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23703e = false;
        this.f23704f = false;
    }

    public void setGifDrawable(Uri uri) {
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                setImageDrawable(ImageDecoder.decodeDrawable(ImageDecoder.createSource(getContext().getContentResolver(), uri)));
                return;
            } catch (IOException unused) {
                return;
            }
        }
        File uriToFile = UriUtils.uriToFile(getContext(), uri);
        if (uriToFile == null) {
            return;
        }
        Movie decodeFile = Movie.decodeFile(uriToFile.getAbsolutePath());
        this.f23701c = decodeFile;
        if (decodeFile.duration() == 0) {
            this.f23701c = null;
            this.f23704f = false;
            setImageDrawable(Drawable.createFromPath(uriToFile.getAbsolutePath()));
            return;
        }
        this.f23704f = true;
        g();
    }
}
