package s0;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public final class h<Z> extends c<Z> {

    /* renamed from: b  reason: collision with root package name */
    private static final Handler f57626b = new Handler(Looper.getMainLooper(), new a());

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.h f57627a;

    /* loaded from: classes.dex */
    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                ((h) message.obj).a();
                return true;
            }
            return false;
        }
    }

    private h(com.bumptech.glide.h hVar, int i9, int i10) {
        super(i9, i10);
        this.f57627a = hVar;
    }

    public static <Z> h<Z> b(com.bumptech.glide.h hVar, int i9, int i10) {
        return new h<>(hVar, i9, i10);
    }

    void a() {
        this.f57627a.g(this);
    }

    @Override // s0.k
    public void onLoadCleared(@Nullable Drawable drawable) {
    }

    @Override // s0.k
    public void onResourceReady(@NonNull Z z10, @Nullable t0.f<? super Z> fVar) {
        com.bumptech.glide.request.e request = getRequest();
        if (request == null || !request.g()) {
            return;
        }
        f57626b.obtainMessage(1, this).sendToTarget();
    }
}
