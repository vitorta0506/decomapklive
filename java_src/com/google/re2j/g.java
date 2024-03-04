package com.google.re2j;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class g {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a extends g {

        /* renamed from: a  reason: collision with root package name */
        final CharSequence f15397a;

        /* renamed from: b  reason: collision with root package name */
        final int f15398b;

        /* renamed from: c  reason: collision with root package name */
        final int f15399c;

        public a(CharSequence charSequence, int i9, int i10) {
            this.f15397a = charSequence;
            this.f15398b = i9;
            this.f15399c = i10;
        }

        private int g(CharSequence charSequence, String str, int i9) {
            if (charSequence instanceof String) {
                return ((String) charSequence).indexOf(str, i9);
            }
            if (charSequence instanceof StringBuilder) {
                return ((StringBuilder) charSequence).indexOf(str, i9);
            }
            return h(charSequence, str, i9);
        }

        private int h(CharSequence charSequence, String str, int i9) {
            if (i9 >= charSequence.length()) {
                return str.isEmpty() ? 0 : -1;
            }
            if (i9 < 0) {
                i9 = 0;
            }
            if (str.isEmpty()) {
                return i9;
            }
            char charAt = str.charAt(0);
            int length = charSequence.length() - str.length();
            while (i9 <= length) {
                if (charSequence.charAt(i9) != charAt) {
                    do {
                        i9++;
                        if (i9 > length) {
                            break;
                        }
                    } while (charSequence.charAt(i9) != charAt);
                }
                if (i9 <= length) {
                    int i10 = i9 + 1;
                    int length2 = (str.length() + i10) - 1;
                    for (int i11 = 1; i10 < length2 && charSequence.charAt(i10) == str.charAt(i11); i11++) {
                        i10++;
                    }
                    if (i10 == length2) {
                        return i9;
                    }
                }
                i9++;
            }
            return -1;
        }

        @Override // com.google.re2j.g
        boolean a() {
            return true;
        }

        @Override // com.google.re2j.g
        int b(int i9) {
            int i10 = i9 + this.f15398b;
            return p.a((i10 <= 0 || i10 > this.f15397a.length()) ? -1 : Character.codePointBefore(this.f15397a, i10), i10 < this.f15397a.length() ? Character.codePointAt(this.f15397a, i10) : -1);
        }

        @Override // com.google.re2j.g
        int c() {
            return this.f15399c;
        }

        @Override // com.google.re2j.g
        int e(k kVar, int i9) {
            int i10 = i9 + this.f15398b;
            int g10 = g(this.f15397a, kVar.f15431f, i10);
            return g10 < 0 ? g10 : g10 - i10;
        }

        @Override // com.google.re2j.g
        int f(int i9) {
            int i10 = i9 + this.f15398b;
            if (i10 < this.f15399c) {
                int codePointAt = Character.codePointAt(this.f15397a, i10);
                return Character.charCount(codePointAt) | (codePointAt << 3);
            }
            return -8;
        }
    }

    g() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g d(CharSequence charSequence, int i9, int i10) {
        return new a(charSequence, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int b(int i9);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int e(k kVar, int i9);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int f(int i9);
}
