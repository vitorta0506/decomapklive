package be;

import android.content.Context;
import android.os.Handler;
import com.snapchat.kit.sdk.SnapKitAppLifecycleObserver;
import com.snapchat.kit.sdk.core.metrics.model.KitPluginType;
import com.snapchat.kit.sdk.core.metrics.model.OpMetric;
import com.snapchat.kit.sdk.core.metrics.model.ServerEvent;
/* loaded from: classes4.dex */
public interface c {
    ge.a a();

    KitPluginType b();

    Handler d();

    de.b<ServerEvent> f();

    String g();

    Context h();

    String i();

    de.b<OpMetric> j();

    SnapKitAppLifecycleObserver k();

    boolean l();
}
