package da;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;
import android.view.SurfaceHolder;
import com.google.zxing.PlanarYUVLuminanceSource;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.ugc.zxing.bean.ZxingConfig;
import java.io.IOException;
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: n  reason: collision with root package name */
    private static final String f38013n = "c";

    /* renamed from: a  reason: collision with root package name */
    private final Context f38014a;

    /* renamed from: b  reason: collision with root package name */
    private final b f38015b;

    /* renamed from: c  reason: collision with root package name */
    private ZxingConfig f38016c;

    /* renamed from: d  reason: collision with root package name */
    private Camera f38017d;

    /* renamed from: e  reason: collision with root package name */
    private a f38018e;

    /* renamed from: f  reason: collision with root package name */
    private Rect f38019f;

    /* renamed from: g  reason: collision with root package name */
    private Rect f38020g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f38021h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f38022i;

    /* renamed from: j  reason: collision with root package name */
    private int f38023j = -1;

    /* renamed from: k  reason: collision with root package name */
    private int f38024k;

    /* renamed from: l  reason: collision with root package name */
    private int f38025l;

    /* renamed from: m  reason: collision with root package name */
    private final e f38026m;

    public c(Context context, ZxingConfig zxingConfig) {
        this.f38014a = context;
        b bVar = new b(context);
        this.f38015b = bVar;
        this.f38026m = new e(bVar);
        this.f38016c = zxingConfig;
    }

    public PlanarYUVLuminanceSource a(byte[] bArr, int i9, int i10) {
        Rect d10 = d();
        if (d10 == null) {
            return null;
        }
        if (this.f38016c == null) {
            this.f38016c = new ZxingConfig();
        }
        if (this.f38016c.isFullScreenScan()) {
            return new PlanarYUVLuminanceSource(bArr, i9, i10, 0, 0, i9, i10, false);
        }
        return new PlanarYUVLuminanceSource(bArr, i9, i10, d10.left, d10.top + this.f38014a.getResources().getDimensionPixelSize(R.dimen.toolBarHeight), d10.width(), d10.height(), false);
    }

    public synchronized void b() {
        Camera camera = this.f38017d;
        if (camera != null) {
            camera.release();
            this.f38017d = null;
            this.f38019f = null;
            this.f38020g = null;
        }
    }

    public synchronized Rect c() {
        if (this.f38019f == null) {
            if (this.f38017d == null) {
                return null;
            }
            Point e10 = this.f38015b.e();
            if (e10 == null) {
                return null;
            }
            int i9 = e10.x;
            int i10 = (int) (i9 * 0.6d);
            int i11 = (i9 - i10) / 2;
            int i12 = (e10.y - i10) / 3;
            this.f38019f = new Rect(i11, i12, i11 + i10, i10 + i12);
            String str = f38013n;
            Log.d(str, "Calculated framing rect: " + this.f38019f);
        }
        return this.f38019f;
    }

    public synchronized Rect d() {
        if (this.f38020g == null) {
            Rect c10 = c();
            if (c10 == null) {
                return null;
            }
            Rect rect = new Rect(c10);
            Point c11 = this.f38015b.c();
            Point e10 = this.f38015b.e();
            if (c11 != null && e10 != null) {
                int i9 = rect.left;
                int i10 = c11.y;
                int i11 = e10.x;
                rect.left = (i9 * i10) / i11;
                rect.right = (rect.right * i10) / i11;
                int i12 = rect.top;
                int i13 = c11.x;
                int i14 = e10.y;
                rect.top = (i12 * i13) / i14;
                rect.bottom = (rect.bottom * i13) / i14;
                this.f38020g = rect;
            }
            return null;
        }
        return this.f38020g;
    }

    public synchronized boolean e() {
        return this.f38017d != null;
    }

    public synchronized void f(SurfaceHolder surfaceHolder) throws IOException {
        int i9;
        Camera camera = this.f38017d;
        if (camera == null) {
            int i10 = this.f38023j;
            if (i10 >= 0) {
                camera = d.b(i10);
            } else {
                camera = d.a();
            }
            if (camera != null) {
                this.f38017d = camera;
            } else {
                throw new IOException();
            }
        }
        camera.setPreviewDisplay(surfaceHolder);
        if (!this.f38021h) {
            this.f38021h = true;
            this.f38015b.f(camera);
            int i11 = this.f38024k;
            if (i11 > 0 && (i9 = this.f38025l) > 0) {
                h(i11, i9);
                this.f38024k = 0;
                this.f38025l = 0;
            }
        }
        Camera.Parameters parameters = camera.getParameters();
        String flatten = parameters == null ? null : parameters.flatten();
        try {
            this.f38015b.g(camera);
        } catch (RuntimeException unused) {
            String str = f38013n;
            Log.w(str, "Camera rejected parameters. Setting only minimal safe-mode parameters");
            Log.i(str, "Resetting to saved camera params: " + flatten);
            if (flatten != null) {
                Camera.Parameters parameters2 = camera.getParameters();
                parameters2.unflatten(flatten);
                try {
                    camera.setParameters(parameters2);
                    this.f38015b.g(camera);
                } catch (RuntimeException unused2) {
                    Log.w(f38013n, "Camera rejected even safe-mode parameters! No configuration");
                }
            }
        }
    }

    public synchronized void g(Handler handler, int i9) {
        Camera camera = this.f38017d;
        if (camera != null && this.f38022i) {
            this.f38026m.a(handler, i9);
            camera.setOneShotPreviewCallback(this.f38026m);
        }
    }

    public synchronized void h(int i9, int i10) {
        if (this.f38021h) {
            Point e10 = this.f38015b.e();
            int i11 = e10.x;
            if (i9 > i11) {
                i9 = i11;
            }
            int i12 = e10.y;
            if (i10 > i12) {
                i10 = i12;
            }
            int i13 = (i11 - i9) / 2;
            int i14 = (i12 - i10) / 5;
            this.f38019f = new Rect(i13, i14, i9 + i13, i10 + i14);
            String str = f38013n;
            Log.d(str, "Calculated manual framing rect: " + this.f38019f);
            this.f38020g = null;
        } else {
            this.f38024k = i9;
            this.f38025l = i10;
        }
    }

    public synchronized void i() {
        Camera camera = this.f38017d;
        if (camera != null && !this.f38022i) {
            camera.startPreview();
            this.f38022i = true;
            this.f38018e = new a(this.f38017d);
        }
    }
}
