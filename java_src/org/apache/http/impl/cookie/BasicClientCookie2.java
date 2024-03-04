package org.apache.http.impl.cookie;

import java.util.Date;
/* loaded from: classes7.dex */
public class BasicClientCookie2 extends BasicClientCookie {
    private static final long serialVersionUID = -7744598295706617057L;
    private String commentURL;
    private boolean discard;
    private int[] ports;

    public BasicClientCookie2(String str, String str2) {
        super(str, str2);
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookie
    public Object clone() throws CloneNotSupportedException {
        BasicClientCookie2 basicClientCookie2 = (BasicClientCookie2) super.clone();
        int[] iArr = this.ports;
        if (iArr != null) {
            basicClientCookie2.ports = (int[]) iArr.clone();
        }
        return basicClientCookie2;
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookie
    public String getCommentURL() {
        return this.commentURL;
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookie
    public int[] getPorts() {
        return this.ports;
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookie, ri.a
    public boolean isExpired(Date date) {
        return this.discard || super.isExpired(date);
    }

    @Override // org.apache.http.impl.cookie.BasicClientCookie
    public boolean isPersistent() {
        return !this.discard && super.isPersistent();
    }

    public void setCommentURL(String str) {
        this.commentURL = str;
    }

    public void setDiscard(boolean z10) {
        this.discard = z10;
    }

    public void setPorts(int[] iArr) {
        this.ports = iArr;
    }
}
