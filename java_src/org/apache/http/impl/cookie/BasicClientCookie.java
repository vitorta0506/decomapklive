package org.apache.http.impl.cookie;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import ri.a;
/* loaded from: classes7.dex */
public class BasicClientCookie implements a, Cloneable, Serializable {
    private static final long serialVersionUID = -3869795591041535538L;
    private Map<String, String> attribs;
    private String cookieComment;
    private String cookieDomain;
    private Date cookieExpiryDate;
    private String cookiePath;
    private int cookieVersion;
    private Date creationDate;
    private boolean isSecure;
    private final String name;
    private String value;

    public BasicClientCookie(String str, String str2) {
        vi.a.g(str, "Name");
        this.name = str;
        this.attribs = new HashMap();
        this.value = str2;
    }

    public Object clone() throws CloneNotSupportedException {
        BasicClientCookie basicClientCookie = (BasicClientCookie) super.clone();
        basicClientCookie.attribs = new HashMap(this.attribs);
        return basicClientCookie;
    }

    public boolean containsAttribute(String str) {
        return this.attribs.containsKey(str);
    }

    public String getAttribute(String str) {
        return this.attribs.get(str);
    }

    public String getComment() {
        return this.cookieComment;
    }

    public String getCommentURL() {
        return null;
    }

    public Date getCreationDate() {
        return this.creationDate;
    }

    @Override // ri.a
    public String getDomain() {
        return this.cookieDomain;
    }

    public Date getExpiryDate() {
        return this.cookieExpiryDate;
    }

    @Override // ri.a
    public String getName() {
        return this.name;
    }

    @Override // ri.a
    public String getPath() {
        return this.cookiePath;
    }

    public int[] getPorts() {
        return null;
    }

    public String getValue() {
        return this.value;
    }

    public int getVersion() {
        return this.cookieVersion;
    }

    @Override // ri.a
    public boolean isExpired(Date date) {
        vi.a.g(date, "Date");
        Date date2 = this.cookieExpiryDate;
        return date2 != null && date2.getTime() <= date.getTime();
    }

    public boolean isPersistent() {
        return this.cookieExpiryDate != null;
    }

    public boolean isSecure() {
        return this.isSecure;
    }

    public boolean removeAttribute(String str) {
        return this.attribs.remove(str) != null;
    }

    public void setAttribute(String str, String str2) {
        this.attribs.put(str, str2);
    }

    public void setComment(String str) {
        this.cookieComment = str;
    }

    public void setCreationDate(Date date) {
        this.creationDate = date;
    }

    public void setDomain(String str) {
        if (str != null) {
            this.cookieDomain = str.toLowerCase(Locale.ROOT);
        } else {
            this.cookieDomain = null;
        }
    }

    public void setExpiryDate(Date date) {
        this.cookieExpiryDate = date;
    }

    public void setPath(String str) {
        this.cookiePath = str;
    }

    public void setSecure(boolean z10) {
        this.isSecure = z10;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public void setVersion(int i9) {
        this.cookieVersion = i9;
    }

    public String toString() {
        return "[version: " + Integer.toString(this.cookieVersion) + "][name: " + this.name + "][value: " + this.value + "][domain: " + this.cookieDomain + "][path: " + this.cookiePath + "][expiry: " + this.cookieExpiryDate + "]";
    }
}
