package com.google.common.collect;

import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final /* synthetic */ class h6<K, V> {
    public static void a(i6 i6Var, final BiConsumer biConsumer) {
        com.google.common.base.o.s(biConsumer);
        i6Var.entries().forEach(new Consumer() { // from class: com.google.common.collect.g6
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                biConsumer.accept(r2.getKey(), ((Map.Entry) obj).getValue());
            }
        });
    }
}
