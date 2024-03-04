package com.google.firebase.datatransport;

import a6.d;
import a6.e;
import a6.h;
import a6.r;
import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.datatransport.cct.a;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import java.util.Arrays;
import java.util.List;
import l1.f;
import n1.t;
@Keep
/* loaded from: classes2.dex */
public class TransportRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f lambda$getComponents$0(e eVar) {
        t.f((Context) eVar.i(Context.class));
        return t.c().g(a.f5223h);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<d<?>> getComponents() {
        return Arrays.asList(d.c(f.class).b(r.i(Context.class)).f(new h() { // from class: b6.a
            @Override // a6.h
            public final Object a(e eVar) {
                f lambda$getComponents$0;
                lambda$getComponents$0 = TransportRegistrar.lambda$getComponents$0(eVar);
                return lambda$getComponents$0;
            }
        }).d(), s6.h.b("fire-transport", "18.1.6"));
    }
}
