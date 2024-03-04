package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import okhttp3.HttpUrl;
import org.bouncycastle.util.a;
/* loaded from: classes7.dex */
public abstract class s extends r implements Iterable {

    /* renamed from: a  reason: collision with root package name */
    e[] f55965a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a implements Enumeration {

        /* renamed from: a  reason: collision with root package name */
        private int f55966a = 0;

        a() {
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f55966a < s.this.f55965a.length;
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            int i9 = this.f55966a;
            e[] eVarArr = s.this.f55965a;
            if (i9 < eVarArr.length) {
                this.f55966a = i9 + 1;
                return eVarArr[i9];
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public s() {
        this.f55965a = f.f55919d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public s(e eVar) {
        Objects.requireNonNull(eVar, "'element' cannot be null");
        this.f55965a = new e[]{eVar};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public s(f fVar) {
        Objects.requireNonNull(fVar, "'elementVector' cannot be null");
        this.f55965a = fVar.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public s(e[] eVarArr) {
        if (org.bouncycastle.util.a.A(eVarArr)) {
            throw new NullPointerException("'elements' cannot be null, or contain null");
        }
        this.f55965a = f.b(eVarArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(e[] eVarArr, boolean z10) {
        this.f55965a = z10 ? f.b(eVarArr) : eVarArr;
    }

    public static s K(Object obj) {
        if (obj == null || (obj instanceof s)) {
            return (s) obj;
        }
        if (obj instanceof t) {
            return K(((t) obj).f());
        }
        if (obj instanceof byte[]) {
            try {
                return K(r.G((byte[]) obj));
            } catch (IOException e10) {
                throw new IllegalArgumentException("failed to construct sequence from byte[]: " + e10.getMessage());
            }
        }
        if (obj instanceof e) {
            r f10 = ((e) obj).f();
            if (f10 instanceof s) {
                return (s) f10;
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public static s L(y yVar, boolean z10) {
        if (z10) {
            if (yVar.O()) {
                return K(yVar.M());
            }
            throw new IllegalArgumentException("object implicit - explicit expected.");
        }
        r M = yVar.M();
        if (yVar.O()) {
            return yVar instanceof j0 ? new f0(M) : new n1(M);
        } else if (M instanceof s) {
            s sVar = (s) M;
            return yVar instanceof j0 ? sVar : (s) sVar.J();
        } else {
            throw new IllegalArgumentException("unknown object in getInstance: " + yVar.getClass().getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r I() {
        return new a1(this.f55965a, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r J() {
        return new n1(this.f55965a, false);
    }

    public e M(int i9) {
        return this.f55965a[i9];
    }

    public Enumeration N() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e[] O() {
        return this.f55965a;
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        int length = this.f55965a.length;
        int i9 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i9;
            }
            i9 = (i9 * 257) ^ this.f55965a[length].f().hashCode();
        }
    }

    @Override // java.lang.Iterable
    public Iterator<e> iterator() {
        return new a.C0593a(this.f55965a);
    }

    public int size() {
        return this.f55965a.length;
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
            stringBuffer.append(this.f55965a[i9]);
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
        if (rVar instanceof s) {
            s sVar = (s) rVar;
            int size = size();
            if (sVar.size() != size) {
                return false;
            }
            for (int i9 = 0; i9 < size; i9++) {
                r f10 = this.f55965a[i9].f();
                r f11 = sVar.f55965a[i9].f();
                if (f10 != f11 && !f10.x(f11)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}
