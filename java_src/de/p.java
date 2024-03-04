package de;

import android.content.SharedPreferences;
import android.os.Build;
import android.os.Debug;
import androidx.annotation.WorkerThread;
import com.snap.kit.common.model.DeviceEnvironmentInfo;
import com.snap.kit.common.model.OsType;
import com.snap.kit.common.model.Types;
import com.snap.kit.sdk.model.SnapKitStorySnapView;
import com.snap.kit.sdk.model.SnapKitStorySnapViews;
import com.snapchat.kit.sdk.core.metrics.MetricsClient;
import de.a;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes4.dex */
public final class p implements de.a<SnapKitStorySnapView> {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f38084a;

    /* renamed from: b  reason: collision with root package name */
    private final MetricsClient f38085b;

    /* renamed from: c  reason: collision with root package name */
    private final fe.a f38086c;

    /* renamed from: d  reason: collision with root package name */
    private final String f38087d;

    /* loaded from: classes4.dex */
    final class a implements Callback<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0376a f38088a;

        a(a.InterfaceC0376a interfaceC0376a) {
            this.f38088a = interfaceC0376a;
        }

        @Override // retrofit2.Callback
        public final void onFailure(Call<Void> call, Throwable th2) {
            if (th2 instanceof IOException) {
                this.f38088a.b();
            } else {
                this.f38088a.a(new Error(th2));
            }
        }

        @Override // retrofit2.Callback
        public final void onResponse(Call<Void> call, Response<Void> response) {
            if (response.isSuccessful()) {
                this.f38088a.onSuccess();
                return;
            }
            try {
                this.f38088a.a(new Error(response.errorBody().string()));
            } catch (IOException | NullPointerException unused) {
                this.f38088a.a(new Error("response unsuccessful"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(SharedPreferences sharedPreferences, MetricsClient metricsClient, fe.a aVar, String str) {
        this.f38084a = sharedPreferences;
        this.f38085b = metricsClient;
        this.f38086c = aVar;
        this.f38087d = str;
    }

    @Override // de.a
    @WorkerThread
    public final void a(List<f<SnapKitStorySnapView>> list) {
        this.f38084a.edit().putString("unsent_snap_view_events", this.f38086c.a(list)).apply();
    }

    @Override // de.a
    @WorkerThread
    public final void b(List<SnapKitStorySnapView> list, a.InterfaceC0376a interfaceC0376a) {
        MetricsClient metricsClient = this.f38085b;
        SnapKitStorySnapViews.Builder views = new SnapKitStorySnapViews.Builder().views(list);
        DeviceEnvironmentInfo.a f10 = new DeviceEnvironmentInfo.a().f(OsType.Enum.ANDROID);
        String str = Build.VERSION.RELEASE;
        if (str == null) {
            str = "";
        }
        DeviceEnvironmentInfo.a k10 = f10.g(str).e(Build.MODEL).k(System.getProperty("os.arch"));
        Locale locale = Locale.getDefault();
        DeviceEnvironmentInfo.a j10 = k10.c(locale != null ? locale.toString() : "").j(Debug.isDebuggerConnected() ? Types.Trilean.TRUE : Types.Trilean.FALSE);
        Types.Trilean trilean = Types.Trilean.NONE;
        metricsClient.postViewEvents(views.device_environment_info(j10.i(trilean).h(trilean).b(trilean).build()).client_id(this.f38087d).build()).enqueue(new a(interfaceC0376a));
    }

    @Override // de.a
    @WorkerThread
    public final List<f<SnapKitStorySnapView>> c() {
        return this.f38086c.b(SnapKitStorySnapView.ADAPTER, this.f38084a.getString("unsent_snap_view_events", null));
    }
}
