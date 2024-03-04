package com.google.firebase.installations;

import a6.r;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import i6.i;
import java.util.Arrays;
import java.util.List;
@Keep
/* loaded from: classes2.dex */
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l6.d lambda$getComponents$0(a6.e eVar) {
        return new c((com.google.firebase.d) eVar.i(com.google.firebase.d.class), eVar.l(i.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<a6.d<?>> getComponents() {
        return Arrays.asList(a6.d.c(l6.d.class).b(r.i(com.google.firebase.d.class)).b(r.h(i.class)).f(new a6.h() { // from class: l6.e
            @Override // a6.h
            public final Object a(a6.e eVar) {
                d lambda$getComponents$0;
                lambda$getComponents$0 = FirebaseInstallationsRegistrar.lambda$getComponents$0(eVar);
                return lambda$getComponents$0;
            }
        }).d(), i6.h.a(), s6.h.b("fire-installations", "17.0.2"));
    }
}
