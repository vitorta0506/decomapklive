package com.google.re2j;

import java.util.Arrays;
/* loaded from: classes3.dex */
final class j {

    /* renamed from: c  reason: collision with root package name */
    int f15424c;

    /* renamed from: a  reason: collision with root package name */
    e[] f15422a = new e[10];

    /* renamed from: b  reason: collision with root package name */
    int f15423b = 0;

    /* renamed from: d  reason: collision with root package name */
    int f15425d = 2;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i9) {
        int i10 = this.f15423b;
        e[] eVarArr = this.f15422a;
        if (i10 >= eVarArr.length) {
            this.f15422a = (e[]) Arrays.copyOf(eVarArr, eVarArr.length * 2);
        }
        this.f15422a[this.f15423b] = new e(i9);
        this.f15423b++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(int i9, int i10) {
        if (i9 == 0) {
            return i10;
        }
        if (i10 == 0) {
            return i9;
        }
        int i11 = i9;
        while (true) {
            int d10 = d(i11);
            if (d10 == 0) {
                break;
            }
            i11 = d10;
        }
        e eVar = this.f15422a[i11 >> 1];
        if ((i11 & 1) == 0) {
            eVar.f15379b = i10;
        } else {
            eVar.f15380c = i10;
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e c(int i9) {
        return this.f15422a[i9];
    }

    int d(int i9) {
        e eVar = this.f15422a[i9 >> 1];
        if ((i9 & 1) == 0) {
            return eVar.f15379b;
        }
        return eVar.f15380c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f15423b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(int i9, int i10) {
        while (i9 != 0) {
            e eVar = this.f15422a[i9 >> 1];
            if ((i9 & 1) == 0) {
                i9 = eVar.f15379b;
                eVar.f15379b = i10;
            } else {
                i9 = eVar.f15380c;
                eVar.f15380c = i10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g(StringBuilder sb2) {
        e h10 = h(this.f15424c);
        if (!e.b(h10.f15378a) || h10.f15381d.length != 1) {
            return h10.f15378a == 6;
        }
        while (e.b(h10.f15378a)) {
            int[] iArr = h10.f15381d;
            if (iArr.length != 1 || (h10.f15380c & 1) != 0) {
                break;
            }
            sb2.appendCodePoint(iArr[0]);
            h10 = h(h10.f15379b);
        }
        return h10.f15378a == 6;
    }

    e h(int i9) {
        e eVar = this.f15422a[i9];
        while (true) {
            int i10 = eVar.f15378a;
            if (i10 != 7 && i10 != 3) {
                return eVar;
            }
            eVar = this.f15422a[i9];
            i9 = eVar.f15379b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i() {
        int i9 = this.f15424c;
        int i10 = 0;
        while (true) {
            e eVar = this.f15422a[i9];
            int i11 = eVar.f15378a;
            if (i11 != 3) {
                if (i11 == 4) {
                    i10 |= eVar.f15380c;
                } else if (i11 == 5) {
                    return -1;
                } else {
                    if (i11 != 7) {
                        return i10;
                    }
                }
            }
            i9 = eVar.f15379b;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < this.f15423b; i9++) {
            int length = sb2.length();
            sb2.append(i9);
            if (i9 == this.f15424c) {
                sb2.append('*');
            }
            sb2.append("        ".substring(sb2.length() - length));
            sb2.append(this.f15422a[i9]);
            sb2.append('\n');
        }
        return sb2.toString();
    }
}
