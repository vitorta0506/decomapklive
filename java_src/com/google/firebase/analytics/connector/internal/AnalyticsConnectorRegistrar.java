package com.google.firebase.analytics.connector.internal;

import a6.d;
import a6.e;
import a6.h;
import a6.r;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
@Keep
/* loaded from: classes2.dex */
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    @NonNull
    @Keep
    public List<d<?>> getComponents() {
        return Arrays.asList(d.c(z5.a.class).b(r.i(com.google.firebase.d.class)).b(r.i(Context.class)).b(r.i(h6.d.class)).f(new h() { // from class: com.google.firebase.analytics.connector.internal.a
            @Override // a6.h
            public final Object a(e eVar) {
                z5.a c10;
                c10 = z5.b.c((com.google.firebase.d) eVar.i(com.google.firebase.d.class), (Context) eVar.i(Context.class), (h6.d) eVar.i(h6.d.class));
                return c10;
            }
        }).e().d(), s6.h.b("fire-analytics", "21.1.1"));
    }
}
