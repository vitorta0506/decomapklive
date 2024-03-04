package com.snapchat.kit.sdk;

import android.content.Context;
import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    static je.a f29471a;

    private static synchronized je.a a(@NonNull Context context) {
        je.a aVar;
        synchronized (a.class) {
            if (f29471a == null) {
                f29471a = je.b.c().c(b.d(context)).b();
            }
            aVar = f29471a;
        }
        return aVar;
    }

    public static le.a b(@NonNull Context context) {
        return a(context).b();
    }

    public static ne.a c(@NonNull Context context) {
        return a(context).a();
    }
}
