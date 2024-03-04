package vk;

import kotlin.UByte;
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private int f59245a;

    /* renamed from: b  reason: collision with root package name */
    private int f59246b;

    /* renamed from: c  reason: collision with root package name */
    private int f59247c;

    /* renamed from: d  reason: collision with root package name */
    private short[][][] f59248d;

    /* renamed from: e  reason: collision with root package name */
    private short[][][] f59249e;

    /* renamed from: f  reason: collision with root package name */
    private short[][] f59250f;

    /* renamed from: g  reason: collision with root package name */
    private short[] f59251g;

    public a(byte b10, byte b11, short[][][] sArr, short[][][] sArr2, short[][] sArr3, short[] sArr4) {
        int i9 = b10 & UByte.MAX_VALUE;
        this.f59245a = i9;
        int i10 = b11 & UByte.MAX_VALUE;
        this.f59246b = i10;
        this.f59247c = i10 - i9;
        this.f59248d = sArr;
        this.f59249e = sArr2;
        this.f59250f = sArr3;
        this.f59251g = sArr4;
    }

    public short[][][] a() {
        return this.f59248d;
    }

    public short[][][] b() {
        return this.f59249e;
    }

    public short[] c() {
        return this.f59251g;
    }

    public short[][] d() {
        return this.f59250f;
    }

    public int e() {
        return this.f59247c;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f59245a == aVar.f() && this.f59246b == aVar.g() && this.f59247c == aVar.e() && wk.a.k(this.f59248d, aVar.a()) && wk.a.k(this.f59249e, aVar.b()) && wk.a.j(this.f59250f, aVar.d()) && wk.a.i(this.f59251g, aVar.c());
    }

    public int f() {
        return this.f59245a;
    }

    public int g() {
        return this.f59246b;
    }

    public int hashCode() {
        return (((((((((((this.f59245a * 37) + this.f59246b) * 37) + this.f59247c) * 37) + org.bouncycastle.util.a.z(this.f59248d)) * 37) + org.bouncycastle.util.a.z(this.f59249e)) * 37) + org.bouncycastle.util.a.y(this.f59250f)) * 37) + org.bouncycastle.util.a.x(this.f59251g);
    }
}
