package io.grpc.netty.shaded.io.netty.channel;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* loaded from: classes5.dex */
public interface k {

    @Target({ElementType.TYPE})
    @Inherited
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes5.dex */
    public @interface a {
    }

    void A(m mVar) throws Exception;

    void E(m mVar) throws Exception;

    @Deprecated
    void a(m mVar, Throwable th2) throws Exception;
}
