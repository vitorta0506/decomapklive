package io.grpc.internal;

import io.grpc.ConnectivityState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<a> f43087a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private volatile ConnectivityState f43088b = ConnectivityState.IDLE;

    /* loaded from: classes5.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f43089a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f43090b;

        void a() {
            this.f43090b.execute(this.f43089a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ConnectivityState connectivityState) {
        com.google.common.base.o.t(connectivityState, "newState");
        if (this.f43088b == connectivityState || this.f43088b == ConnectivityState.SHUTDOWN) {
            return;
        }
        this.f43088b = connectivityState;
        if (this.f43087a.isEmpty()) {
            return;
        }
        ArrayList<a> arrayList = this.f43087a;
        this.f43087a = new ArrayList<>();
        Iterator<a> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }
}
