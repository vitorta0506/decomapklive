package com.google.firebase.messaging.ktx;

import com.google.firebase.ktx.Firebase;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.RemoteMessage;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a/\u0010\b\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0019\b\u0004\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002¢\u0006\u0002\b\u0005H\u0086\bø\u0001\u0000\"\u0014\u0010\t\u001a\u00020\u00008\u0000X\u0080T¢\u0006\u0006\n\u0004\b\t\u0010\n\"\u0015\u0010\u000f\u001a\u00020\f*\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0010"}, d2 = {"", "to", "Lkotlin/Function1;", "Lcom/google/firebase/messaging/RemoteMessage$b;", "", "Lkotlin/ExtensionFunctionType;", "init", "Lcom/google/firebase/messaging/RemoteMessage;", "remoteMessage", "LIBRARY_NAME", "Ljava/lang/String;", "Lcom/google/firebase/ktx/Firebase;", "Lcom/google/firebase/messaging/FirebaseMessaging;", "getMessaging", "(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/messaging/FirebaseMessaging;", "messaging", "com.google.firebase-firebase-messaging-ktx"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes2.dex */
public final class MessagingKt {
    @NotNull
    public static final String LIBRARY_NAME = "fire-fcm-ktx";

    @NotNull
    public static final FirebaseMessaging getMessaging(@NotNull Firebase messaging) {
        Intrinsics.checkNotNullParameter(messaging, "$this$messaging");
        FirebaseMessaging l10 = FirebaseMessaging.l();
        Intrinsics.checkNotNullExpressionValue(l10, "FirebaseMessaging.getInstance()");
        return l10;
    }

    @NotNull
    public static final RemoteMessage remoteMessage(@NotNull String to, @NotNull Function1<? super RemoteMessage.b, Unit> init) {
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(init, "init");
        RemoteMessage.b bVar = new RemoteMessage.b(to);
        init.invoke(bVar);
        RemoteMessage a10 = bVar.a();
        Intrinsics.checkNotNullExpressionValue(a10, "builder.build()");
        return a10;
    }
}
