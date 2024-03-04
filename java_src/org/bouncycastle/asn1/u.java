package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.UByte;
import okhttp3.HttpUrl;
import org.bouncycastle.util.a;
/* loaded from: classes7.dex */
public abstract class u extends r implements Iterable {

    /* renamed from: a  reason: collision with root package name */
    protected final e[] f55976a;

    /* renamed from: b  reason: collision with root package name */
    protected final boolean f55977b;

    /* loaded from: classes7.dex */
    class a implements Enumeration {

        /* renamed from: a  reason: collision with root package name */
        private int f55978a = 0;

        a() {
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f55978a < u.this.f55976a.length;
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            int i9 = this.f55978a;
            e[] eVarArr = u.this.f55976a;
            if (i9 < eVarArr.length) {
                this.f55978a = i9 + 1;
                return eVarArr[i9];
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public u() {
        this.f55976a = f.f55919d;
        this.f55977b = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public u(e eVar) {
        Objects.requireNonNull(eVar, "'element' cannot be null");
        this.f55976a = new e[]{eVar};
        this.f55977b = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public u(f fVar, boolean z10) {
        e[] g10;
        Objects.requireNonNull(fVar, "'elementVector' cannot be null");
        if (!z10 || fVar.f() < 2) {
            g10 = fVar.g();
        } else {
            g10 = fVar.c();
            Q(g10);
        }
        this.f55976a = g10;
        this.f55977b = z10 || g10.length < 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(boolean z10, e[] eVarArr) {
        this.f55976a = eVarArr;
        this.f55977b = z10 || eVarArr.length < 2;
    }

    private static byte[] K(e eVar) {
        try {
            return eVar.f().u("DER");
        } catch (IOException unused) {
            throw new IllegalArgumentException("cannot encode object added to SET");
        }
    }

    public static u L(Object obj) {
        if (obj == null || (obj instanceof u)) {
            return (u) obj;
        }
        if (obj instanceof v) {
            return L(((v) obj).f());
        }
        if (obj instanceof byte[]) {
            try {
                return L(r.G((byte[]) obj));
            } catch (IOException e10) {
                throw new IllegalArgumentException("failed to construct set from byte[]: " + e10.getMessage());
            }
        }
        if (obj instanceof e) {
            r f10 = ((e) obj).f();
            if (f10 instanceof u) {
                return (u) f10;
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public static u M(y yVar, boolean z10) {
        if (z10) {
            if (yVar.O()) {
                return L(yVar.M());
            }
            throw new IllegalArgumentException("object implicit - explicit expected.");
        }
        r M = yVar.M();
        if (yVar.O()) {
            return yVar instanceof j0 ? new h0(M) : new p1(M);
        } else if (M instanceof u) {
            u uVar = (u) M;
            return yVar instanceof j0 ? uVar : (u) uVar.J();
        } else if (M instanceof s) {
            e[] O = ((s) M).O();
            return yVar instanceof j0 ? new h0(false, O) : new p1(false, O);
        } else {
            throw new IllegalArgumentException("unknown object in getInstance: " + yVar.getClass().getName());
        }
    }

    private static boolean P(byte[] bArr, byte[] bArr2) {
        int i9 = bArr[0] & (-33);
        int i10 = bArr2[0] & (-33);
        if (i9 != i10) {
            return i9 < i10;
        }
        int min = Math.min(bArr.length, bArr2.length) - 1;
        for (int i11 = 1; i11 < min; i11++) {
            if (bArr[i11] != bArr2[i11]) {
                return (bArr[i11] & UByte.MAX_VALUE) < (bArr2[i11] & UByte.MAX_VALUE);
            }
        }
        return (bArr[min] & UByte.MAX_VALUE) <= (bArr2[min] & UByte.MAX_VALUE);
    }

    private static void Q(e[] eVarArr) {
        int length = eVarArr.length;
        if (length < 2) {
            return;
        }
        e eVar = eVarArr[0];
        e eVar2 = eVarArr[1];
        byte[] K = K(eVar);
        byte[] K2 = K(eVar2);
        if (P(K2, K)) {
            eVar2 = eVar;
            eVar = eVar2;
            K2 = K;
            K = K2;
        }
        for (int i9 = 2; i9 < length; i9++) {
            e eVar3 = eVarArr[i9];
            byte[] K3 = K(eVar3);
            if (P(K2, K3)) {
                eVarArr[i9 - 2] = eVar;
                eVar = eVar2;
                K = K2;
                eVar2 = eVar3;
                K2 = K3;
            } else if (P(K, K3)) {
                eVarArr[i9 - 2] = eVar;
                eVar = eVar3;
                K = K3;
            } else {
                int i10 = i9 - 1;
                while (true) {
                    i10--;
                    if (i10 <= 0) {
                        break;
                    }
                    e eVar4 = eVarArr[i10 - 1];
                    if (P(K(eVar4), K3)) {
                        break;
                    }
                    eVarArr[i10] = eVar4;
                }
                eVarArr[i10] = eVar3;
            }
        }
        eVarArr[length - 2] = eVar;
        eVarArr[length - 1] = eVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r I() {
        e[] eVarArr;
        if (this.f55977b) {
            eVarArr = this.f55976a;
        } else {
            eVarArr = (e[]) this.f55976a.clone();
            Q(eVarArr);
        }
        return new b1(true, eVarArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r J() {
        return new p1(this.f55977b, this.f55976a);
    }

    public e N(int i9) {
        return this.f55976a[i9];
    }

    public Enumeration O() {
        return new a();
    }

    public e[] R() {
        return f.b(this.f55976a);
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        int length = this.f55976a.length;
        int i9 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i9;
            }
            i9 += this.f55976a[length].f().hashCode();
        }
    }

    @Override // java.lang.Iterable
    public Iterator<e> iterator() {
        return new a.C0593a(R());
    }

    public int size() {
        return this.f55976a.length;
    }

    public String toString() {
        int size = size();
        if (size == 0) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('[');
        int i9 = 0;
        while (true) {
            stringBuffer.append(this.f55976a[i9]);
            i9++;
            if (i9 >= size) {
                stringBuffer.append(']');
                return stringBuffer.toString();
            }
            stringBuffer.append(", ");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof u) {
            u uVar = (u) rVar;
            int size = size();
            if (uVar.size() != size) {
                return false;
            }
            b1 b1Var = (b1) I();
            b1 b1Var2 = (b1) uVar.I();
            for (int i9 = 0; i9 < size; i9++) {
                r f10 = b1Var.f55976a[i9].f();
                r f11 = b1Var2.f55976a[i9].f();
                if (f10 != f11 && !f10.x(f11)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}
