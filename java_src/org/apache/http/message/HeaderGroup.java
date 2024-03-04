package org.apache.http.message;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.apache.http.c;
import org.apache.http.e;
import org.apache.http.util.CharArrayBuffer;
/* loaded from: classes7.dex */
public class HeaderGroup implements Cloneable, Serializable {
    private static final c[] EMPTY = new c[0];
    private static final long serialVersionUID = 2608834160639271617L;
    private final List<c> headers = new ArrayList(16);

    public void addHeader(c cVar) {
        if (cVar == null) {
            return;
        }
        this.headers.add(cVar);
    }

    public void clear() {
        this.headers.clear();
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean containsHeader(String str) {
        for (int i9 = 0; i9 < this.headers.size(); i9++) {
            if (this.headers.get(i9).getName().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    public HeaderGroup copy() {
        HeaderGroup headerGroup = new HeaderGroup();
        headerGroup.headers.addAll(this.headers);
        return headerGroup;
    }

    public c[] getAllHeaders() {
        List<c> list = this.headers;
        return (c[]) list.toArray(new c[list.size()]);
    }

    public c getCondensedHeader(String str) {
        c[] headers = getHeaders(str);
        if (headers.length == 0) {
            return null;
        }
        if (headers.length == 1) {
            return headers[0];
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(128);
        charArrayBuffer.append(headers[0].getValue());
        for (int i9 = 1; i9 < headers.length; i9++) {
            charArrayBuffer.append(", ");
            charArrayBuffer.append(headers[i9].getValue());
        }
        return new BasicHeader(str.toLowerCase(Locale.ROOT), charArrayBuffer.toString());
    }

    public c getFirstHeader(String str) {
        for (int i9 = 0; i9 < this.headers.size(); i9++) {
            c cVar = this.headers.get(i9);
            if (cVar.getName().equalsIgnoreCase(str)) {
                return cVar;
            }
        }
        return null;
    }

    public c[] getHeaders(String str) {
        ArrayList arrayList = null;
        for (int i9 = 0; i9 < this.headers.size(); i9++) {
            c cVar = this.headers.get(i9);
            if (cVar.getName().equalsIgnoreCase(str)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(cVar);
            }
        }
        return arrayList != null ? (c[]) arrayList.toArray(new c[arrayList.size()]) : EMPTY;
    }

    public c getLastHeader(String str) {
        for (int size = this.headers.size() - 1; size >= 0; size--) {
            c cVar = this.headers.get(size);
            if (cVar.getName().equalsIgnoreCase(str)) {
                return cVar;
            }
        }
        return null;
    }

    public e iterator() {
        return new si.e(this.headers, null);
    }

    public void removeHeader(c cVar) {
        if (cVar == null) {
            return;
        }
        this.headers.remove(cVar);
    }

    public void setHeaders(c[] cVarArr) {
        clear();
        if (cVarArr == null) {
            return;
        }
        Collections.addAll(this.headers, cVarArr);
    }

    public String toString() {
        return this.headers.toString();
    }

    public void updateHeader(c cVar) {
        if (cVar == null) {
            return;
        }
        for (int i9 = 0; i9 < this.headers.size(); i9++) {
            if (this.headers.get(i9).getName().equalsIgnoreCase(cVar.getName())) {
                this.headers.set(i9, cVar);
                return;
            }
        }
        this.headers.add(cVar);
    }

    public e iterator(String str) {
        return new si.e(this.headers, str);
    }
}
