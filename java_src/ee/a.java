package ee;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import com.snapchat.kit.sdk.core.metrics.MetricsClient;
import com.snapchat.kit.sdk.core.metrics.model.CounterMetric;
import com.snapchat.kit.sdk.core.metrics.model.LevelMetric;
import com.snapchat.kit.sdk.core.metrics.model.Metrics;
import com.snapchat.kit.sdk.core.metrics.model.OpMetric;
import com.snapchat.kit.sdk.core.metrics.model.TimerMetric;
import de.a;
import de.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes4.dex */
public final class a implements de.a<OpMetric> {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f38576a;

    /* renamed from: b  reason: collision with root package name */
    private final MetricsClient f38577b;

    /* renamed from: c  reason: collision with root package name */
    private final fe.a f38578c;

    /* renamed from: ee.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    final class C0390a implements Callback<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0376a f38579a;

        C0390a(a.InterfaceC0376a interfaceC0376a) {
            this.f38579a = interfaceC0376a;
        }

        @Override // retrofit2.Callback
        public final void onFailure(Call<Void> call, Throwable th2) {
            if (th2 instanceof IOException) {
                this.f38579a.b();
            } else {
                this.f38579a.a(new Error(th2));
            }
        }

        @Override // retrofit2.Callback
        public final void onResponse(Call<Void> call, Response<Void> response) {
            if (response.isSuccessful()) {
                this.f38579a.onSuccess();
                return;
            }
            try {
                this.f38579a.a(new Error(response.errorBody().string()));
            } catch (IOException | NullPointerException unused) {
                this.f38579a.a(new Error("response unsuccessful"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(SharedPreferences sharedPreferences, MetricsClient metricsClient, fe.a aVar) {
        this.f38576a = sharedPreferences;
        this.f38577b = metricsClient;
        this.f38578c = aVar;
    }

    @Override // de.a
    @WorkerThread
    public final void a(List<f<OpMetric>> list) {
        this.f38576a.edit().putString("unsent_operational_metrics", this.f38578c.a(list)).apply();
    }

    @Override // de.a
    @WorkerThread
    public final void b(List<OpMetric> list, a.InterfaceC0376a interfaceC0376a) {
        MetricsClient metricsClient = this.f38577b;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (OpMetric opMetric : list) {
            CounterMetric counterMetric = opMetric.counter_metric;
            if (counterMetric != null) {
                arrayList.add(counterMetric);
            } else {
                TimerMetric timerMetric = opMetric.timer_metric;
                if (timerMetric != null) {
                    arrayList2.add(timerMetric);
                } else {
                    LevelMetric levelMetric = opMetric.level_metric;
                    if (levelMetric != null) {
                        arrayList3.add(levelMetric);
                    }
                }
            }
        }
        metricsClient.postOperationalMetrics(new Metrics.Builder().counters(arrayList).timers(arrayList2).levels(arrayList3).build()).enqueue(new C0390a(interfaceC0376a));
    }

    @Override // de.a
    @WorkerThread
    public final List<f<OpMetric>> c() {
        return this.f38578c.b(OpMetric.ADAPTER, this.f38576a.getString("unsent_operational_metrics", null));
    }
}
