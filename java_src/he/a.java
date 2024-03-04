package he;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import com.snap.kit.sdk.model.MetricSampleRate;
import com.snapchat.kit.sdk.core.config.f;
import com.snapchat.kit.sdk.core.metrics.model.ServerEvent;
import com.snapchat.kit.sdk.core.metrics.model.ServerEventBatch;
import com.snapchat.kit.sdk.core.metrics.model.ServerEventData;
import com.snapchat.kit.sdk.core.metrics.model.SkateEvent;
import com.snapchat.kit.sdk.core.metrics.skate.SkateClient;
import de.a;
import ge.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes4.dex */
public final class a implements de.a<SkateEvent> {

    /* renamed from: a  reason: collision with root package name */
    private final f f40623a;

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f40624b;

    /* renamed from: c  reason: collision with root package name */
    private final i f40625c;

    /* renamed from: d  reason: collision with root package name */
    private final SkateClient f40626d;

    /* renamed from: e  reason: collision with root package name */
    private final fe.a f40627e;

    /* renamed from: he.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    final class C0442a implements Callback<MetricSampleRate> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0376a f40628a;

        C0442a(a.InterfaceC0376a interfaceC0376a) {
            this.f40628a = interfaceC0376a;
        }

        @Override // retrofit2.Callback
        public final void onFailure(Call<MetricSampleRate> call, Throwable th2) {
            if (th2 instanceof IOException) {
                this.f40628a.b();
            } else {
                this.f40628a.a(new Error(th2));
            }
        }

        @Override // retrofit2.Callback
        public final void onResponse(Call<MetricSampleRate> call, Response<MetricSampleRate> response) {
            try {
                if (response.isSuccessful()) {
                    MetricSampleRate body = response.body();
                    if (body != null && body.rate != null) {
                        a.this.f40623a.c(body.rate.doubleValue());
                    }
                    this.f40628a.onSuccess();
                    return;
                }
                this.f40628a.a(new Error(response.errorBody().string()));
            } catch (IOException | NullPointerException unused) {
                this.f40628a.a(new Error("response unsuccessful"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(f fVar, SharedPreferences sharedPreferences, i iVar, SkateClient skateClient, fe.a aVar) {
        this.f40623a = fVar;
        this.f40624b = sharedPreferences;
        this.f40625c = iVar;
        this.f40626d = skateClient;
        this.f40627e = aVar;
    }

    @Override // de.a
    @WorkerThread
    public final void a(List<de.f<SkateEvent>> list) {
        this.f40624b.edit().putString("com.snapchat.kit.sdk.core.metrics.skate.unsentSkateEvents", this.f40627e.a(list)).apply();
    }

    @Override // de.a
    @WorkerThread
    public final void b(List<SkateEvent> list, a.InterfaceC0376a interfaceC0376a) {
        ArrayList arrayList = new ArrayList();
        for (SkateEvent skateEvent : list) {
            arrayList.add(new ServerEvent.Builder().event_data(new ServerEventData.Builder().skate_event(skateEvent).build()).build());
        }
        this.f40626d.postSkateEvents(new ServerEventBatch.Builder().server_events(arrayList).max_sequence_id_on_instance(Long.valueOf(this.f40625c.c())).build()).enqueue(new C0442a(interfaceC0376a));
    }

    @Override // de.a
    @WorkerThread
    public final List<de.f<SkateEvent>> c() {
        try {
            return this.f40627e.b(SkateEvent.ADAPTER, this.f40624b.getString("com.snapchat.kit.sdk.core.metrics.skate.unsentSkateEvents", null));
        } catch (ClassCastException unused) {
            return null;
        }
    }
}
