package com.google.api.gax.rpc;

import java.io.Serializable;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2.dex */
public class NoHeaderProvider implements p, Serializable {
    private static final long serialVersionUID = 7323717933589691233L;

    @Override // com.google.api.gax.rpc.p
    public Map<String, String> getHeaders() {
        return Collections.emptyMap();
    }
}
