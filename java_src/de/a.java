package de;

import androidx.annotation.WorkerThread;
import java.util.List;
/* loaded from: classes4.dex */
public interface a<T> {

    /* renamed from: de.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0376a {
        void a(Error error);

        void b();

        void onSuccess();
    }

    @WorkerThread
    void a(List<f<T>> list);

    @WorkerThread
    void b(List<T> list, InterfaceC0376a interfaceC0376a);

    @WorkerThread
    List<f<T>> c();
}
