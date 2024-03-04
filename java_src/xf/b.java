package xf;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private int f59724a;

    /* renamed from: b  reason: collision with root package name */
    private int f59725b;

    /* renamed from: c  reason: collision with root package name */
    private int f59726c;

    public b(int i9, int i10, int i11) {
        this.f59724a = i9;
        this.f59725b = i10;
        this.f59726c = i11;
    }

    public int a() {
        return this.f59725b;
    }

    public int b() {
        return this.f59726c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f59724a == bVar.f59724a && this.f59725b == bVar.f59725b && this.f59726c == bVar.f59726c;
    }

    public int hashCode() {
        return (((this.f59724a * 31) + this.f59725b) * 31) + this.f59726c;
    }
}
