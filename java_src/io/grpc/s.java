package io.grpc;

import io.grpc.Status;
import java.util.concurrent.TimeoutException;
/* loaded from: classes5.dex */
public final class s {
    public static Status a(r rVar) {
        com.google.common.base.o.t(rVar, "context must not be null");
        if (rVar.p()) {
            Throwable e10 = rVar.e();
            if (e10 == null) {
                return Status.f41705g.r("io.grpc.Context was cancelled without error");
            }
            if (e10 instanceof TimeoutException) {
                return Status.f41708j.r(e10.getMessage()).q(e10);
            }
            Status l10 = Status.l(e10);
            if (Status.Code.UNKNOWN.equals(l10.n()) && l10.m() == e10) {
                return Status.f41705g.r("Context cancelled").q(e10);
            }
            return l10.q(e10);
        }
        return null;
    }
}
