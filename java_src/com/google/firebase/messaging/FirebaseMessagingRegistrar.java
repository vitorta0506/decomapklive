package com.google.firebase.messaging;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import java.util.Arrays;
import java.util.List;
@Keep
/* loaded from: classes2.dex */
public class FirebaseMessagingRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FirebaseMessaging lambda$getComponents$0(a6.e eVar) {
        return new FirebaseMessaging((com.google.firebase.d) eVar.i(com.google.firebase.d.class), (j6.a) eVar.i(j6.a.class), eVar.l(s6.i.class), eVar.l(HeartBeatInfo.class), (l6.d) eVar.i(l6.d.class), (l1.f) eVar.i(l1.f.class), (h6.d) eVar.i(h6.d.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<a6.d<?>> getComponents() {
        return Arrays.asList(a6.d.c(FirebaseMessaging.class).b(a6.r.i(com.google.firebase.d.class)).b(a6.r.g(j6.a.class)).b(a6.r.h(s6.i.class)).b(a6.r.h(HeartBeatInfo.class)).b(a6.r.g(l1.f.class)).b(a6.r.i(l6.d.class)).b(a6.r.i(h6.d.class)).f(new a6.h() { // from class: com.google.firebase.messaging.x
            @Override // a6.h
            public final Object a(a6.e eVar) {
                FirebaseMessaging lambda$getComponents$0;
                lambda$getComponents$0 = FirebaseMessagingRegistrar.lambda$getComponents$0(eVar);
                return lambda$getComponents$0;
            }
        }).c().d(), s6.h.b("fire-fcm", "23.0.8"));
    }
}
