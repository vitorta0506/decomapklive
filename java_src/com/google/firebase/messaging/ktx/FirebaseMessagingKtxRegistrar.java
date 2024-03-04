package com.google.firebase.messaging.ktx;

import a6.d;
import com.google.firebase.components.ComponentRegistrar;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import org.jetbrains.annotations.NotNull;
import s6.h;
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030\u0002H\u0016¨\u0006\u0007"}, d2 = {"Lcom/google/firebase/messaging/ktx/FirebaseMessagingKtxRegistrar;", "Lcom/google/firebase/components/ComponentRegistrar;", "", "La6/d;", "getComponents", "<init>", "()V", "com.google.firebase-firebase-messaging-ktx"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2.dex */
public final class FirebaseMessagingKtxRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    @NotNull
    public List<d<?>> getComponents() {
        List<d<?>> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(h.b(MessagingKt.LIBRARY_NAME, "23.0.8"));
        return listOf;
    }
}
