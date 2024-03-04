package bl;

import java.security.spec.KeySpec;
/* loaded from: classes7.dex */
public class c implements KeySpec {

    /* renamed from: a  reason: collision with root package name */
    private short[][] f1378a;

    /* renamed from: b  reason: collision with root package name */
    private short[][] f1379b;

    /* renamed from: c  reason: collision with root package name */
    private short[] f1380c;

    /* renamed from: d  reason: collision with root package name */
    private int f1381d;

    public c(int i9, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.f1381d = i9;
        this.f1378a = sArr;
        this.f1379b = sArr2;
        this.f1380c = sArr3;
    }

    public short[][] a() {
        return this.f1378a;
    }

    public short[] b() {
        return this.f1380c;
    }

    public short[][] c() {
        return this.f1379b;
    }

    public int d() {
        return this.f1381d;
    }
}
