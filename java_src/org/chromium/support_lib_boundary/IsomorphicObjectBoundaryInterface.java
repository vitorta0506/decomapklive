package org.chromium.support_lib_boundary;

import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public interface IsomorphicObjectBoundaryInterface {
    Object getOrCreatePeer(Callable<Object> callable);
}