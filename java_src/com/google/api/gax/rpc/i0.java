package com.google.api.gax.rpc;

import com.google.auth.Credentials;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
public interface i0 {
    boolean a();

    i0 b(Credentials credentials);

    @Deprecated
    i0 c(ScheduledExecutorService scheduledExecutorService);

    @Deprecated
    boolean d();

    h0 e() throws IOException;

    boolean f();

    i0 g(String str);

    String getTransportName();

    boolean h();

    i0 i(Map<String, String> map);

    boolean j();
}
