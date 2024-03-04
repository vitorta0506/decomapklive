package org.apache.http.params;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
@Deprecated
/* loaded from: classes7.dex */
public class BasicHttpParams extends a implements Serializable, Cloneable {
    private static final long serialVersionUID = -7086398485908701455L;
    private final Map<String, Object> parameters = new ConcurrentHashMap();

    public void clear() {
        this.parameters.clear();
    }

    public Object clone() throws CloneNotSupportedException {
        BasicHttpParams basicHttpParams = (BasicHttpParams) super.clone();
        copyParams(basicHttpParams);
        return basicHttpParams;
    }

    public c copy() {
        try {
            return (c) clone();
        } catch (CloneNotSupportedException unused) {
            throw new UnsupportedOperationException("Cloning not supported");
        }
    }

    public void copyParams(c cVar) {
        for (Map.Entry<String, Object> entry : this.parameters.entrySet()) {
            cVar.setParameter(entry.getKey(), entry.getValue());
        }
    }

    @Override // org.apache.http.params.a
    public Set<String> getNames() {
        return new HashSet(this.parameters.keySet());
    }

    @Override // org.apache.http.params.c
    public Object getParameter(String str) {
        return this.parameters.get(str);
    }

    public boolean isParameterSet(String str) {
        return getParameter(str) != null;
    }

    public boolean isParameterSetLocally(String str) {
        return this.parameters.get(str) != null;
    }

    public boolean removeParameter(String str) {
        if (this.parameters.containsKey(str)) {
            this.parameters.remove(str);
            return true;
        }
        return false;
    }

    @Override // org.apache.http.params.c
    public c setParameter(String str, Object obj) {
        if (str == null) {
            return this;
        }
        if (obj != null) {
            this.parameters.put(str, obj);
        } else {
            this.parameters.remove(str);
        }
        return this;
    }

    public void setParameters(String[] strArr, Object obj) {
        for (String str : strArr) {
            setParameter(str, obj);
        }
    }

    public String toString() {
        return "[parameters=" + this.parameters + "]";
    }
}
