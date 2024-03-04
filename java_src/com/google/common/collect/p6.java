package com.google.common.collect;

import com.google.common.collect.q6;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.ObjIntConsumer;
/* loaded from: classes2.dex */
public final /* synthetic */ class p6<E> {
    public static void a(q6 q6Var, final Consumer consumer) {
        com.google.common.base.o.s(consumer);
        q6Var.entrySet().forEach(new Consumer() { // from class: com.google.common.collect.n6
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                p6.d(consumer, (q6.a) obj);
            }
        });
    }

    public static void b(q6 q6Var, final ObjIntConsumer objIntConsumer) {
        com.google.common.base.o.s(objIntConsumer);
        q6Var.entrySet().forEach(new Consumer() { // from class: com.google.common.collect.o6
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                objIntConsumer.accept(r2.a(), ((q6.a) obj).getCount());
            }
        });
    }

    public static Spliterator c(q6 q6Var) {
        return t6.o(q6Var);
    }

    public static /* synthetic */ void d(Consumer consumer, q6.a aVar) {
        Object a10 = aVar.a();
        int count = aVar.getCount();
        for (int i9 = 0; i9 < count; i9++) {
            consumer.accept(a10);
        }
    }
}
