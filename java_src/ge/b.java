package ge;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import com.snapchat.kit.sdk.core.metrics.MetricsClient;
import com.snapchat.kit.sdk.core.metrics.model.ServerEvent;
import com.snapchat.kit.sdk.core.metrics.model.ServerEventBatch;
import de.a;
import java.io.IOException;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes4.dex */
public final class b implements de.a<ServerEvent> {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f40036a;

    /* renamed from: b  reason: collision with root package name */
    private final i f40037b;

    /* renamed from: c  reason: collision with root package name */
    private final MetricsClient f40038c;

    /* renamed from: d  reason: collision with root package name */
    private final fe.a f40039d;

    /* loaded from: classes4.dex */
    final class a implements Callback<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0376a f40040a;

        a(a.InterfaceC0376a interfaceC0376a) {
            this.f40040a = interfaceC0376a;
        }

        @Override // retrofit2.Callback
        public final void onFailure(Call<Void> call, Throwable th2) {
            if (th2 instanceof IOException) {
                this.f40040a.b();
            } else {
                this.f40040a.a(new Error(th2));
            }
        }

        @Override // retrofit2.Callback
        public final void onResponse(Call<Void> call, Response<Void> response) {
            if (response.isSuccessful()) {
                this.f40040a.onSuccess();
                return;
            }
            try {
                this.f40040a.a(new Error(response.errorBody().string()));
            } catch (IOException | NullPointerException unused) {
                this.f40040a.a(new Error("response unsuccessful"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(SharedPreferences sharedPreferences, i iVar, MetricsClient metricsClient, fe.a aVar) {
        this.f40036a = sharedPreferences;
        this.f40037b = iVar;
        this.f40038c = metricsClient;
        this.f40039d = aVar;
    }

    @Override // de.a
    @WorkerThread
    public final void a(List<de.f<ServerEvent>> list) {
        this.f40036a.edit().putString("unsent_analytics_events", this.f40039d.a(list)).apply();
    }

    @Override // de.a
    @WorkerThread
    public final void b(List<ServerEvent> list, a.InterfaceC0376a interfaceC0376a) {
        this.f40038c.postAnalytics(new ServerEventBatch.Builder().server_events(list).max_sequence_id_on_instance(Long.valueOf(this.f40037b.c())).build()).enqueue(new a(interfaceC0376a));
    }

    @Override // de.a
    @WorkerThread
    public final List<de.f<ServerEvent>> c() {
        return this.f40039d.b(ServerEvent.ADAPTER, this.f40036a.getString("unsent_analytics_events", null));
    }
}
