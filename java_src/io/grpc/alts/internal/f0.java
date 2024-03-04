package io.grpc.alts.internal;

import java.security.GeneralSecurityException;
import java.util.List;
/* loaded from: classes5.dex */
public interface f0 {

    /* loaded from: classes5.dex */
    public interface a<T> {
        void accept(T t10);
    }

    void a(kg.j jVar, List<Object> list, kg.k kVar) throws GeneralSecurityException;

    void b(List<kg.j> list, a<kg.j> aVar, kg.k kVar) throws GeneralSecurityException;

    void destroy();
}
