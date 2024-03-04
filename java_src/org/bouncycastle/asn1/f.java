package org.bouncycastle.asn1;

import java.util.Objects;
/* loaded from: classes7.dex */
public class f {

    /* renamed from: d  reason: collision with root package name */
    static final e[] f55919d = new e[0];

    /* renamed from: a  reason: collision with root package name */
    private e[] f55920a;

    /* renamed from: b  reason: collision with root package name */
    private int f55921b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f55922c;

    public f() {
        this(10);
    }

    public f(int i9) {
        if (i9 < 0) {
            throw new IllegalArgumentException("'initialCapacity' must not be negative");
        }
        this.f55920a = i9 == 0 ? f55919d : new e[i9];
        this.f55921b = 0;
        this.f55922c = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e[] b(e[] eVarArr) {
        return eVarArr.length < 1 ? f55919d : (e[]) eVarArr.clone();
    }

    private void e(int i9) {
        e[] eVarArr = new e[Math.max(this.f55920a.length, i9 + (i9 >> 1))];
        System.arraycopy(this.f55920a, 0, eVarArr, 0, this.f55921b);
        this.f55920a = eVarArr;
        this.f55922c = false;
    }

    public void a(e eVar) {
        Objects.requireNonNull(eVar, "'element' cannot be null");
        int length = this.f55920a.length;
        int i9 = this.f55921b + 1;
        if (this.f55922c | (i9 > length)) {
            e(i9);
        }
        this.f55920a[this.f55921b] = eVar;
        this.f55921b = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e[] c() {
        int i9 = this.f55921b;
        if (i9 == 0) {
            return f55919d;
        }
        e[] eVarArr = new e[i9];
        System.arraycopy(this.f55920a, 0, eVarArr, 0, i9);
        return eVarArr;
    }

    public e d(int i9) {
        if (i9 < this.f55921b) {
            return this.f55920a[i9];
        }
        throw new ArrayIndexOutOfBoundsException(i9 + " >= " + this.f55921b);
    }

    public int f() {
        return this.f55921b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e[] g() {
        int i9 = this.f55921b;
        if (i9 == 0) {
            return f55919d;
        }
        e[] eVarArr = this.f55920a;
        if (eVarArr.length == i9) {
            this.f55922c = true;
            return eVarArr;
        }
        e[] eVarArr2 = new e[i9];
        System.arraycopy(eVarArr, 0, eVarArr2, 0, i9);
        return eVarArr2;
    }
}
