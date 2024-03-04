package org.apache.http.impl.execchain;

import org.apache.http.HttpException;
import org.apache.http.j;
/* loaded from: classes7.dex */
public class TunnelRefusedException extends HttpException {
    private static final long serialVersionUID = -8646722842745617323L;
    private final j response;

    public TunnelRefusedException(String str, j jVar) {
        super(str);
        this.response = jVar;
    }

    public j getResponse() {
        return this.response;
    }
}
