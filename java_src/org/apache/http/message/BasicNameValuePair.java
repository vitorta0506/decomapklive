package org.apache.http.message;

import com.huawei.hms.framework.common.ContainerUtils;
import java.io.Serializable;
import org.apache.http.k;
import vi.a;
import vi.e;
/* loaded from: classes7.dex */
public class BasicNameValuePair implements k, Cloneable, Serializable {
    private static final long serialVersionUID = -6437800749411518984L;
    private final String name;
    private final String value;

    public BasicNameValuePair(String str, String str2) {
        this.name = (String) a.g(str, "Name");
        this.value = str2;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof k) {
            BasicNameValuePair basicNameValuePair = (BasicNameValuePair) obj;
            return this.name.equals(basicNameValuePair.name) && e.a(this.value, basicNameValuePair.value);
        }
        return false;
    }

    @Override // org.apache.http.k
    public String getName() {
        return this.name;
    }

    @Override // org.apache.http.k
    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        return e.d(e.d(17, this.name), this.value);
    }

    public String toString() {
        if (this.value == null) {
            return this.name;
        }
        StringBuilder sb2 = new StringBuilder(this.name.length() + 1 + this.value.length());
        sb2.append(this.name);
        sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
        sb2.append(this.value);
        return sb2.toString();
    }
}
