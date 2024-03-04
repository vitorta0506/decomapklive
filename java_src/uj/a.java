package uj;

import java.util.Hashtable;
import org.bouncycastle.crypto.c;
import org.bouncycastle.crypto.e;
import org.bouncycastle.crypto.g;
import org.bouncycastle.util.f;
import vj.c0;
/* loaded from: classes7.dex */
public class a implements g {

    /* renamed from: h  reason: collision with root package name */
    private static Hashtable f58532h;

    /* renamed from: a  reason: collision with root package name */
    private e f58533a;

    /* renamed from: b  reason: collision with root package name */
    private int f58534b;

    /* renamed from: c  reason: collision with root package name */
    private int f58535c;

    /* renamed from: d  reason: collision with root package name */
    private f f58536d;

    /* renamed from: e  reason: collision with root package name */
    private f f58537e;

    /* renamed from: f  reason: collision with root package name */
    private byte[] f58538f;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f58539g;

    static {
        Hashtable hashtable = new Hashtable();
        f58532h = hashtable;
        hashtable.put("GOST3411", org.bouncycastle.util.e.d(32));
        f58532h.put("MD2", org.bouncycastle.util.e.d(16));
        f58532h.put("MD4", org.bouncycastle.util.e.d(64));
        f58532h.put("MD5", org.bouncycastle.util.e.d(64));
        f58532h.put("RIPEMD128", org.bouncycastle.util.e.d(64));
        f58532h.put("RIPEMD160", org.bouncycastle.util.e.d(64));
        f58532h.put("SHA-1", org.bouncycastle.util.e.d(64));
        f58532h.put("SHA-224", org.bouncycastle.util.e.d(64));
        f58532h.put("SHA-256", org.bouncycastle.util.e.d(64));
        f58532h.put("SHA-384", org.bouncycastle.util.e.d(128));
        f58532h.put("SHA-512", org.bouncycastle.util.e.d(128));
        f58532h.put("Tiger", org.bouncycastle.util.e.d(64));
        f58532h.put("Whirlpool", org.bouncycastle.util.e.d(64));
    }

    public a(e eVar) {
        this(eVar, f(eVar));
    }

    private a(e eVar, int i9) {
        this.f58533a = eVar;
        int d10 = eVar.d();
        this.f58534b = d10;
        this.f58535c = i9;
        this.f58538f = new byte[i9];
        this.f58539g = new byte[i9 + d10];
    }

    private static int f(e eVar) {
        if (eVar instanceof org.bouncycastle.crypto.f) {
            return ((org.bouncycastle.crypto.f) eVar).f();
        }
        Integer num = (Integer) f58532h.get(eVar.getAlgorithmName());
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalArgumentException("unknown digest passed: " + eVar.getAlgorithmName());
    }

    private static void h(byte[] bArr, int i9, byte b10) {
        for (int i10 = 0; i10 < i9; i10++) {
            bArr[i10] = (byte) (bArr[i10] ^ b10);
        }
    }

    @Override // org.bouncycastle.crypto.g
    public int a(byte[] bArr, int i9) {
        this.f58533a.a(this.f58539g, this.f58535c);
        f fVar = this.f58537e;
        if (fVar != null) {
            ((f) this.f58533a).g(fVar);
            e eVar = this.f58533a;
            eVar.c(this.f58539g, this.f58535c, eVar.d());
        } else {
            e eVar2 = this.f58533a;
            byte[] bArr2 = this.f58539g;
            eVar2.c(bArr2, 0, bArr2.length);
        }
        int a10 = this.f58533a.a(bArr, i9);
        int i10 = this.f58535c;
        while (true) {
            byte[] bArr3 = this.f58539g;
            if (i10 >= bArr3.length) {
                break;
            }
            bArr3[i10] = 0;
            i10++;
        }
        f fVar2 = this.f58536d;
        if (fVar2 != null) {
            ((f) this.f58533a).g(fVar2);
        } else {
            e eVar3 = this.f58533a;
            byte[] bArr4 = this.f58538f;
            eVar3.c(bArr4, 0, bArr4.length);
        }
        return a10;
    }

    @Override // org.bouncycastle.crypto.g
    public void b(byte b10) {
        this.f58533a.b(b10);
    }

    @Override // org.bouncycastle.crypto.g
    public void c(byte[] bArr, int i9, int i10) {
        this.f58533a.c(bArr, i9, i10);
    }

    @Override // org.bouncycastle.crypto.g
    public int d() {
        return this.f58534b;
    }

    @Override // org.bouncycastle.crypto.g
    public void e(c cVar) {
        byte[] bArr;
        this.f58533a.reset();
        byte[] a10 = ((c0) cVar).a();
        int length = a10.length;
        if (length > this.f58535c) {
            this.f58533a.c(a10, 0, length);
            this.f58533a.a(this.f58538f, 0);
            length = this.f58534b;
        } else {
            System.arraycopy(a10, 0, this.f58538f, 0, length);
        }
        while (true) {
            bArr = this.f58538f;
            if (length >= bArr.length) {
                break;
            }
            bArr[length] = 0;
            length++;
        }
        System.arraycopy(bArr, 0, this.f58539g, 0, this.f58535c);
        h(this.f58538f, this.f58535c, (byte) 54);
        h(this.f58539g, this.f58535c, (byte) 92);
        e eVar = this.f58533a;
        if (eVar instanceof f) {
            f copy = ((f) eVar).copy();
            this.f58537e = copy;
            ((e) copy).c(this.f58539g, 0, this.f58535c);
        }
        e eVar2 = this.f58533a;
        byte[] bArr2 = this.f58538f;
        eVar2.c(bArr2, 0, bArr2.length);
        e eVar3 = this.f58533a;
        if (eVar3 instanceof f) {
            this.f58536d = ((f) eVar3).copy();
        }
    }

    public e g() {
        return this.f58533a;
    }

    @Override // org.bouncycastle.crypto.g
    public String getAlgorithmName() {
        return this.f58533a.getAlgorithmName() + "/HMAC";
    }
}
