package io.grpc.netty.shaded.io.netty.util.internal;

import java.util.Arrays;
/* loaded from: classes5.dex */
public final class a implements CharSequence, Appendable {

    /* renamed from: a  reason: collision with root package name */
    private char[] f45020a;

    /* renamed from: b  reason: collision with root package name */
    private int f45021b;

    public a(int i9) {
        this.f45020a = new char[s.l(i9, "length")];
    }

    private static char[] e(char[] cArr, int i9, int i10) {
        int length = cArr.length;
        do {
            length <<= 1;
            if (length < 0) {
                throw new IllegalStateException();
            }
        } while (i9 > length);
        char[] cArr2 = new char[length];
        System.arraycopy(cArr, 0, cArr2, 0, i10);
        return cArr2;
    }

    @Override // java.lang.Appendable
    /* renamed from: a */
    public a append(char c10) {
        int i9 = this.f45021b;
        char[] cArr = this.f45020a;
        if (i9 == cArr.length) {
            char[] cArr2 = new char[cArr.length << 1];
            this.f45020a = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
        }
        char[] cArr3 = this.f45020a;
        int i10 = this.f45021b;
        this.f45021b = i10 + 1;
        cArr3[i10] = c10;
        return this;
    }

    @Override // java.lang.Appendable
    /* renamed from: b */
    public a append(CharSequence charSequence) {
        return append(charSequence, 0, charSequence.length());
    }

    @Override // java.lang.Appendable
    /* renamed from: c */
    public a append(CharSequence charSequence, int i9, int i10) {
        if (charSequence.length() >= i10) {
            int i11 = i10 - i9;
            char[] cArr = this.f45020a;
            int length = cArr.length;
            int i12 = this.f45021b;
            if (i11 > length - i12) {
                this.f45020a = e(cArr, i12 + i11, i12);
            }
            if (charSequence instanceof a) {
                System.arraycopy(((a) charSequence).f45020a, i9, this.f45020a, this.f45021b, i11);
                this.f45021b += i11;
                return this;
            }
            while (i9 < i10) {
                char[] cArr2 = this.f45020a;
                int i13 = this.f45021b;
                this.f45021b = i13 + 1;
                cArr2[i13] = charSequence.charAt(i9);
                i9++;
            }
            return this;
        }
        throw new IndexOutOfBoundsException("expected: csq.length() >= (" + i10 + "),but actual is (" + charSequence.length() + ")");
    }

    @Override // java.lang.CharSequence
    public char charAt(int i9) {
        if (i9 <= this.f45021b) {
            return this.f45020a[i9];
        }
        throw new IndexOutOfBoundsException();
    }

    public char d(int i9) {
        return this.f45020a[i9];
    }

    public void f() {
        this.f45021b = 0;
    }

    public void g(int i9) {
        if (i9 >= 0 && i9 <= this.f45021b) {
            this.f45021b = i9;
            return;
        }
        throw new IllegalArgumentException("length: " + i9 + " (length: >= 0, <= " + this.f45021b + ')');
    }

    @Override // java.lang.CharSequence
    /* renamed from: h */
    public a subSequence(int i9, int i10) {
        if (i9 == i10) {
            return new a(Math.min(16, this.f45020a.length));
        }
        return new a(Arrays.copyOfRange(this.f45020a, i9, i10));
    }

    public String i(int i9, int i10) {
        return new String(this.f45020a, i9, i10 - i9);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f45021b;
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return new String(this.f45020a, 0, this.f45021b);
    }

    private a(char[] cArr) {
        this.f45020a = s.e(cArr, "chars");
        this.f45021b = cArr.length;
    }
}
