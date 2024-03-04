package io.reactivex.internal.util;

import java.util.List;
/* loaded from: classes7.dex */
public enum ListAddBiConsumer implements vh.c<List, Object, List> {
    INSTANCE;

    public static <T> vh.c<List<T>, T, List<T>> instance() {
        return INSTANCE;
    }

    @Override // vh.c
    public List apply(List list, Object obj) throws Exception {
        list.add(obj);
        return list;
    }
}
