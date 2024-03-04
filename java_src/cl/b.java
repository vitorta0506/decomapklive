package cl;
/* loaded from: classes7.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private int f1754a;

    /* renamed from: b  reason: collision with root package name */
    private int f1755b;

    public b(byte[] bArr) {
        this.f1754a = 0;
        if (bArr.length != 4) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        int d10 = f.d(bArr);
        this.f1755b = d10;
        if (!j.c(d10)) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        this.f1754a = j.a(this.f1755b);
    }

    private static String i(int i9) {
        if (i9 == 0) {
            return "0";
        }
        String str = ((byte) (i9 & 1)) == 1 ? "1" : "";
        int i10 = i9 >>> 1;
        int i11 = 1;
        while (i10 != 0) {
            if (((byte) (i10 & 1)) == 1) {
                str = str + "+x^" + i11;
            }
            i10 >>>= 1;
            i11++;
        }
        return str;
    }

    public int a(int i9, int i10) {
        return i9 ^ i10;
    }

    public String b(int i9) {
        StringBuilder sb2;
        String str;
        String str2 = "";
        for (int i10 = 0; i10 < this.f1754a; i10++) {
            if ((((byte) i9) & 1) == 0) {
                sb2 = new StringBuilder();
                str = "0";
            } else {
                sb2 = new StringBuilder();
                str = "1";
            }
            sb2.append(str);
            sb2.append(str2);
            str2 = sb2.toString();
            i9 >>>= 1;
        }
        return str2;
    }

    public int c(int i9, int i10) {
        if (i10 == 0) {
            return 1;
        }
        if (i9 == 0) {
            return 0;
        }
        if (i9 == 1) {
            return 1;
        }
        if (i10 < 0) {
            i9 = f(i9);
            i10 = -i10;
        }
        int i11 = 1;
        while (i10 != 0) {
            if ((i10 & 1) == 1) {
                i11 = h(i11, i9);
            }
            i9 = h(i9, i9);
            i10 >>>= 1;
        }
        return i11;
    }

    public int d() {
        return this.f1754a;
    }

    public byte[] e() {
        return f.c(this.f1755b);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof b)) {
            b bVar = (b) obj;
            if (this.f1754a == bVar.f1754a && this.f1755b == bVar.f1755b) {
                return true;
            }
        }
        return false;
    }

    public int f(int i9) {
        return c(i9, (1 << this.f1754a) - 2);
    }

    public boolean g(int i9) {
        int i10 = this.f1754a;
        return i10 == 31 ? i9 >= 0 : i9 >= 0 && i9 < (1 << i10);
    }

    public int h(int i9, int i10) {
        return j.d(i9, i10, this.f1755b);
    }

    public int hashCode() {
        return this.f1755b;
    }

    public String toString() {
        return "Finite Field GF(2^" + this.f1754a + ") = GF(2)[X]/<" + i(this.f1755b) + "> ";
    }
}
