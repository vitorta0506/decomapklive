package org.apache.http;
/* loaded from: classes7.dex */
public final class HttpVersion extends ProtocolVersion {
    public static final String HTTP = "HTTP";
    public static final HttpVersion HTTP_0_9 = new HttpVersion(0, 9);
    public static final HttpVersion HTTP_1_0 = new HttpVersion(1, 0);
    public static final HttpVersion HTTP_1_1 = new HttpVersion(1, 1);
    private static final long serialVersionUID = -5856653513894415344L;

    public HttpVersion(int i9, int i10) {
        super(HTTP, i9, i10);
    }

    @Override // org.apache.http.ProtocolVersion
    public ProtocolVersion forVersion(int i9, int i10) {
        if (i9 == this.major && i10 == this.minor) {
            return this;
        }
        if (i9 == 1) {
            if (i10 == 0) {
                return HTTP_1_0;
            }
            if (i10 == 1) {
                return HTTP_1_1;
            }
        }
        if (i9 == 0 && i10 == 9) {
            return HTTP_0_9;
        }
        return new HttpVersion(i9, i10);
    }
}
