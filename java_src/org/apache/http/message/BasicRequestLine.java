package org.apache.http.message;

import java.io.Serializable;
import org.apache.http.ProtocolVersion;
import org.apache.http.l;
import si.d;
import vi.a;
/* loaded from: classes7.dex */
public class BasicRequestLine implements l, Cloneable, Serializable {
    private static final long serialVersionUID = 2810581718468737193L;
    private final String method;
    private final ProtocolVersion protoversion;
    private final String uri;

    public BasicRequestLine(String str, String str2, ProtocolVersion protocolVersion) {
        this.method = (String) a.g(str, "Method");
        this.uri = (String) a.g(str2, "URI");
        this.protoversion = (ProtocolVersion) a.g(protocolVersion, "Version");
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override // org.apache.http.l
    public String getMethod() {
        return this.method;
    }

    @Override // org.apache.http.l
    public ProtocolVersion getProtocolVersion() {
        return this.protoversion;
    }

    @Override // org.apache.http.l
    public String getUri() {
        return this.uri;
    }

    public String toString() {
        return d.f57932b.g(null, this).toString();
    }
}
