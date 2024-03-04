package com.google.api.gax.rpc;

import com.google.api.gax.retrying.RetrySettings;
import com.google.api.gax.rpc.StatusCode;
import java.util.Collection;
/* loaded from: classes2.dex */
public class i {
    private static boolean a(Collection<StatusCode.Code> collection, RetrySettings retrySettings) {
        if (retrySettings.getMaxAttempts() == 1 || collection.isEmpty()) {
            return true;
        }
        return retrySettings.getMaxAttempts() == 0 && retrySettings.getTotalTimeout().isZero();
    }

    public static <RequestT, ResponseT, MetadataT> t<RequestT, ResponseT, MetadataT> b(k0<RequestT, n5.b> k0Var, s<RequestT, ResponseT, MetadataT> sVar, j jVar, r rVar) {
        return c(k0Var, sVar, jVar, rVar);
    }

    static <RequestT, ResponseT, MetadataT> u<RequestT, ResponseT, MetadataT> c(k0<RequestT, n5.b> k0Var, s<RequestT, ResponseT, MetadataT> sVar, j jVar, r rVar) {
        return new u<>(k0Var, new o5.g(new o5.e(new n5.a(), sVar.c()), jVar.h()), rVar, sVar);
    }

    public static <RequestT, ResponseT, PagedListResponseT> k0<RequestT, PagedListResponseT> d(k0<RequestT, ResponseT> k0Var, v<RequestT, ResponseT, PagedListResponseT> vVar) {
        return new w(k0Var, vVar.g());
    }

    public static <RequestT, ResponseT> k0<RequestT, ResponseT> e(k0<RequestT, ResponseT> k0Var, j0<?, ?> j0Var, j jVar) {
        if (a(j0Var.c(), j0Var.b())) {
            j0Var = j0Var.e().g(j0Var.b().getTotalTimeout()).c();
        }
        return new c0(jVar.e(), k0Var, new o5.g(new o5.e((o5.d) new c(), (o5.i) new o5.b(j0Var.b(), jVar.c())), jVar.h()));
    }
}
