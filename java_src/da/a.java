package da;

import android.hardware.Camera;
import android.os.AsyncTask;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.RejectedExecutionException;
import kotlinx.coroutines.DebugKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class a implements Camera.AutoFocusCallback {

    /* renamed from: f  reason: collision with root package name */
    private static final String f38000f = a.class.getSimpleName();

    /* renamed from: g  reason: collision with root package name */
    private static final Collection<String> f38001g;

    /* renamed from: a  reason: collision with root package name */
    private boolean f38002a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f38003b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f38004c = true;

    /* renamed from: d  reason: collision with root package name */
    private final Camera f38005d;

    /* renamed from: e  reason: collision with root package name */
    private AsyncTask<?, ?, ?> f38006e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class b extends AsyncTask<Object, Object, Object> {
        private b() {
        }

        @Override // android.os.AsyncTask
        protected Object doInBackground(Object... objArr) {
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException unused) {
            }
            a.this.b();
            return null;
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        f38001g = arrayList;
        arrayList.add("continuous-picture");
        arrayList.add(DebugKt.DEBUG_PROPERTY_VALUE_AUTO);
        arrayList.add("macro");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Camera camera) {
        this.f38005d = camera;
        b();
    }

    private synchronized void a() {
        if (!this.f38002a && this.f38006e == null) {
            b bVar = new b();
            try {
                bVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
                this.f38006e = bVar;
            } catch (RejectedExecutionException e10) {
                Log.w(f38000f, "Could not request auto focus", e10);
            }
        }
    }

    synchronized void b() {
        if (this.f38004c) {
            this.f38006e = null;
            if (!this.f38002a && !this.f38003b) {
                try {
                    this.f38005d.autoFocus(this);
                    this.f38003b = true;
                } catch (RuntimeException e10) {
                    Log.w(f38000f, "Unexpected exception while focusing", e10);
                    a();
                }
            }
        }
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public synchronized void onAutoFocus(boolean z10, Camera camera) {
        this.f38003b = false;
        a();
    }
}
