package da;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;
/* loaded from: classes3.dex */
final class e implements Camera.PreviewCallback {

    /* renamed from: d  reason: collision with root package name */
    private static final String f38028d = e.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final b f38029a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f38030b;

    /* renamed from: c  reason: collision with root package name */
    private int f38031c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(b bVar) {
        this.f38029a = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Handler handler, int i9) {
        this.f38030b = handler;
        this.f38031c = i9;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        Point c10 = this.f38029a.c();
        Handler handler = this.f38030b;
        if (c10 != null && handler != null) {
            handler.obtainMessage(this.f38031c, c10.x, c10.y, bArr).sendToTarget();
            this.f38030b = null;
            return;
        }
        Log.d(f38028d, "Got preview callback, but no handler or resolution available");
    }
}
