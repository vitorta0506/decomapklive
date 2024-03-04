package io.grpc.alts.internal;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* loaded from: classes5.dex */
public interface h0 {
    Object a() throws GeneralSecurityException;

    boolean b();

    j0 c() throws GeneralSecurityException;

    void close();

    f0 d(kg.k kVar);

    void e(ByteBuffer byteBuffer) throws GeneralSecurityException;

    boolean f(ByteBuffer byteBuffer) throws GeneralSecurityException;
}
