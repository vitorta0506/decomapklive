package bl;

import java.security.spec.KeySpec;
/* loaded from: classes7.dex */
public class b implements KeySpec {

    /* renamed from: a  reason: collision with root package name */
    private short[][] f1372a;

    /* renamed from: b  reason: collision with root package name */
    private short[] f1373b;

    /* renamed from: c  reason: collision with root package name */
    private short[][] f1374c;

    /* renamed from: d  reason: collision with root package name */
    private short[] f1375d;

    /* renamed from: e  reason: collision with root package name */
    private int[] f1376e;

    /* renamed from: f  reason: collision with root package name */
    private vk.a[] f1377f;

    public b(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, vk.a[] aVarArr) {
        this.f1372a = sArr;
        this.f1373b = sArr2;
        this.f1374c = sArr3;
        this.f1375d = sArr4;
        this.f1376e = iArr;
        this.f1377f = aVarArr;
    }

    public short[] a() {
        return this.f1373b;
    }

    public short[] b() {
        return this.f1375d;
    }

    public short[][] c() {
        return this.f1372a;
    }

    public short[][] d() {
        return this.f1374c;
    }

    public vk.a[] e() {
        return this.f1377f;
    }

    public int[] f() {
        return this.f1376e;
    }
}
