package si;

import com.huawei.hms.framework.common.ContainerUtils;
import org.apache.http.k;
/* loaded from: classes7.dex */
public class a implements org.apache.http.d, Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private final String f57921a;

    /* renamed from: b  reason: collision with root package name */
    private final String f57922b;

    /* renamed from: c  reason: collision with root package name */
    private final k[] f57923c;

    public a(String str, String str2, k[] kVarArr) {
        this.f57921a = (String) vi.a.g(str, "Name");
        this.f57922b = str2;
        if (kVarArr != null) {
            this.f57923c = kVarArr;
        } else {
            this.f57923c = new k[0];
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof org.apache.http.d) {
            a aVar = (a) obj;
            return this.f57921a.equals(aVar.f57921a) && vi.e.a(this.f57922b, aVar.f57922b) && vi.e.b(this.f57923c, aVar.f57923c);
        }
        return false;
    }

    @Override // org.apache.http.d
    public String getName() {
        return this.f57921a;
    }

    @Override // org.apache.http.d
    public k[] getParameters() {
        return (k[]) this.f57923c.clone();
    }

    @Override // org.apache.http.d
    public String getValue() {
        return this.f57922b;
    }

    public int hashCode() {
        int d10 = vi.e.d(vi.e.d(17, this.f57921a), this.f57922b);
        for (k kVar : this.f57923c) {
            d10 = vi.e.d(d10, kVar);
        }
        return d10;
    }

    public String toString() {
        k[] kVarArr;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f57921a);
        if (this.f57922b != null) {
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb2.append(this.f57922b);
        }
        for (k kVar : this.f57923c) {
            sb2.append("; ");
            sb2.append(kVar);
        }
        return sb2.toString();
    }
}
