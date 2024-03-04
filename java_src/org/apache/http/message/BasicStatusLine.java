package org.apache.http.message;

import java.io.Serializable;
import org.apache.http.ProtocolVersion;
import org.apache.http.m;
import si.d;
import vi.a;
/* loaded from: classes7.dex */
public class BasicStatusLine implements m, Cloneable, Serializable {
    private static final long serialVersionUID = -2443303766890459269L;
    private final ProtocolVersion protoVersion;
    private final String reasonPhrase;
    private final int statusCode;

    public BasicStatusLine(ProtocolVersion protocolVersion, int i9, String str) {
        this.protoVersion = (ProtocolVersion) a.g(protocolVersion, "Version");
        this.statusCode = a.f(i9, "Status code");
        this.reasonPhrase = str;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override // org.apache.http.m
    public ProtocolVersion getProtocolVersion() {
        return this.protoVersion;
    }

    @Override // org.apache.http.m
    public String getReasonPhrase() {
        return this.reasonPhrase;
    }

    @Override // org.apache.http.m
    public int getStatusCode() {
        return this.statusCode;
    }

    public String toString() {
        return d.f57932b.h(null, this).toString();
    }
}
