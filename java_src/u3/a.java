package u3;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.p;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2.dex */
public class a implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    boolean f58318a = false;

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue f58319b = new LinkedBlockingQueue();

    @NonNull
    public IBinder a(long j10, @NonNull TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        p.i("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (!this.f58318a) {
            this.f58318a = true;
            IBinder iBinder = (IBinder) this.f58319b.poll(j10, timeUnit);
            if (iBinder != null) {
                return iBinder;
            }
            throw new TimeoutException("Timed out waiting for the service connection");
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull IBinder iBinder) {
        this.f58319b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@NonNull ComponentName componentName) {
    }
}
