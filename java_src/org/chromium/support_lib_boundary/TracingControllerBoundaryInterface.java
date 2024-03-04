package org.chromium.support_lib_boundary;

import java.io.OutputStream;
import java.util.Collection;
import java.util.concurrent.Executor;
/* loaded from: classes7.dex */
public interface TracingControllerBoundaryInterface {
    boolean isTracing();

    void start(int i9, Collection<String> collection, int i10) throws IllegalStateException, IllegalArgumentException;

    boolean stop(OutputStream outputStream, Executor executor);
}
