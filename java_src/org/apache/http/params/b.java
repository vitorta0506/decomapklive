package org.apache.http.params;
@Deprecated
/* loaded from: classes7.dex */
public final class b {
    public static int a(c cVar) {
        vi.a.g(cVar, "HTTP parameters");
        return cVar.getIntParameter("http.connection.timeout", 0);
    }

    public static int b(c cVar) {
        vi.a.g(cVar, "HTTP parameters");
        return cVar.getIntParameter("http.socket.timeout", 0);
    }
}
