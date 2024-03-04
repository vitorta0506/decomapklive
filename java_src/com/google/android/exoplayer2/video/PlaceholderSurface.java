package com.google.android.exoplayer2.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.EGLSurfaceTexture;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.r;
@RequiresApi(17)
/* loaded from: classes2.dex */
public final class PlaceholderSurface extends Surface {
    private static final String TAG = "PlaceholderSurface";
    private static int secureMode;
    private static boolean secureModeInitialized;
    public final boolean secure;
    private final b thread;
    private boolean threadReleased;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b extends HandlerThread implements Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        private EGLSurfaceTexture f7138a;

        /* renamed from: b  reason: collision with root package name */
        private Handler f7139b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Error f7140c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private RuntimeException f7141d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private PlaceholderSurface f7142e;

        public b() {
            super("ExoPlayer:PlaceholderSurface");
        }

        private void c(int i9) {
            com.google.android.exoplayer2.util.a.e(this.f7138a);
            this.f7138a.j(i9);
            this.f7142e = new PlaceholderSurface(this, this.f7138a.i(), i9 != 0);
        }

        private void f() {
            com.google.android.exoplayer2.util.a.e(this.f7138a);
            this.f7138a.k();
        }

        public PlaceholderSurface b(int i9) {
            boolean z10;
            start();
            this.f7139b = new Handler(getLooper(), this);
            this.f7138a = new EGLSurfaceTexture(this.f7139b);
            synchronized (this) {
                z10 = false;
                this.f7139b.obtainMessage(1, i9, 0).sendToTarget();
                while (this.f7142e == null && this.f7141d == null && this.f7140c == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        z10 = true;
                    }
                }
            }
            if (z10) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.f7141d;
            if (runtimeException == null) {
                Error error = this.f7140c;
                if (error == null) {
                    return (PlaceholderSurface) com.google.android.exoplayer2.util.a.e(this.f7142e);
                }
                throw error;
            }
            throw runtimeException;
        }

        public void d() {
            com.google.android.exoplayer2.util.a.e(this.f7139b);
            this.f7139b.sendEmptyMessage(2);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i9 = message.what;
            try {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return true;
                    }
                    try {
                        f();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    c(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e10) {
                    r.d(PlaceholderSurface.TAG, "Failed to initialize placeholder surface", e10);
                    this.f7140c = e10;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e11) {
                    r.d(PlaceholderSurface.TAG, "Failed to initialize placeholder surface", e11);
                    this.f7141d = e11;
                    synchronized (this) {
                        notify();
                    }
                }
                return true;
            } catch (Throwable th2) {
                synchronized (this) {
                    notify();
                    throw th2;
                }
            }
        }
    }

    private static int a(Context context) {
        if (GlUtil.h(context)) {
            return GlUtil.i() ? 1 : 2;
        }
        return 0;
    }

    public static synchronized boolean b(Context context) {
        boolean z10;
        synchronized (PlaceholderSurface.class) {
            if (!secureModeInitialized) {
                secureMode = a(context);
                secureModeInitialized = true;
            }
            z10 = secureMode != 0;
        }
        return z10;
    }

    public static PlaceholderSurface c(Context context, boolean z10) {
        com.google.android.exoplayer2.util.a.f(!z10 || b(context));
        return new b().b(z10 ? secureMode : 0);
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.thread) {
            if (!this.threadReleased) {
                this.thread.d();
                this.threadReleased = true;
            }
        }
    }

    private PlaceholderSurface(b bVar, SurfaceTexture surfaceTexture, boolean z10) {
        super(surfaceTexture);
        this.thread = bVar;
        this.secure = z10;
    }
}
