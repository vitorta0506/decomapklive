package org.apache.http.message;

import java.io.Serializable;
import org.apache.http.ParseException;
import org.apache.http.c;
import org.apache.http.d;
import vi.a;
/* loaded from: classes7.dex */
public class BasicHeader implements c, Cloneable, Serializable {
    private static final d[] EMPTY_HEADER_ELEMENTS = new d[0];
    private static final long serialVersionUID = -5427236326487562174L;
    private final String name;
    private final String value;

    public BasicHeader(String str, String str2) {
        this.name = (String) a.g(str, "Name");
        this.value = str2;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override // org.apache.http.c
    public d[] getElements() throws ParseException {
        if (getValue() != null) {
            return si.c.d(getValue(), null);
        }
        return EMPTY_HEADER_ELEMENTS;
    }

    @Override // org.apache.http.k
    public String getName() {
        return this.name;
    }

    @Override // org.apache.http.k
    public String getValue() {
        return this.value;
    }

    public String toString() {
        return si.d.f57932b.f(null, this).toString();
    }
}
