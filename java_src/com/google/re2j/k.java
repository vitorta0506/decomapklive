package com.google.re2j;

import java.io.UnsupportedEncodingException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.Queue;
import org.light.utils.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    final String f15426a;

    /* renamed from: b  reason: collision with root package name */
    final j f15427b;

    /* renamed from: c  reason: collision with root package name */
    final int f15428c;

    /* renamed from: d  reason: collision with root package name */
    final int f15429d;

    /* renamed from: e  reason: collision with root package name */
    boolean f15430e;

    /* renamed from: f  reason: collision with root package name */
    String f15431f;

    /* renamed from: g  reason: collision with root package name */
    byte[] f15432g;

    /* renamed from: h  reason: collision with root package name */
    boolean f15433h;

    /* renamed from: i  reason: collision with root package name */
    int f15434i;

    /* renamed from: j  reason: collision with root package name */
    private final Queue<f> f15435j = new ArrayDeque();

    /* renamed from: k  reason: collision with root package name */
    public Map<String, Integer> f15436k;

    private k(String str, j jVar, int i9, boolean z10) {
        this.f15426a = str;
        this.f15427b = jVar;
        this.f15429d = i9;
        this.f15428c = jVar.i();
        this.f15430e = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k a(String str, int i9, boolean z10) throws PatternSyntaxException {
        l s10 = i.s(str, i9);
        int b10 = s10.b();
        l a10 = m.a(s10);
        j e10 = d.e(a10);
        k kVar = new k(str, e10, b10, z10);
        StringBuilder sb2 = new StringBuilder();
        kVar.f15433h = e10.g(sb2);
        String sb3 = sb2.toString();
        kVar.f15431f = sb3;
        try {
            kVar.f15432g = sb3.getBytes("UTF-8");
            if (!kVar.f15431f.isEmpty()) {
                kVar.f15434i = kVar.f15431f.codePointAt(0);
            }
            kVar.f15436k = a10.f15446i;
            return kVar;
        } catch (UnsupportedEncodingException unused) {
            throw new IllegalStateException("can't happen");
        }
    }

    private int[] b(g gVar, int i9, int i10, int i11) {
        f c10 = c();
        c10.f(i11);
        int[] k10 = c10.h(gVar, i9, i10) ? c10.k() : null;
        f(c10);
        return k10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String g(String str) {
        StringBuilder sb2 = new StringBuilder(str.length() * 2);
        int length = str.length();
        for (int i9 = 0; i9 < length; i9++) {
            char charAt = str.charAt(i9);
            if ("\\.+*?()|[]{}^$".indexOf(charAt) >= 0) {
                sb2.append(IOUtils.DIR_SEPARATOR_WINDOWS);
            }
            sb2.append(charAt);
        }
        return sb2.toString();
    }

    f c() {
        synchronized (this) {
            if (!this.f15435j.isEmpty()) {
                return this.f15435j.remove();
            }
            return new f(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(CharSequence charSequence, int i9, int i10, int i11, int[] iArr, int i12) {
        int[] b10;
        if (i9 <= i10 && (b10 = b(g.d(charSequence, 0, i10), i9, i11, i12 * 2)) != null) {
            if (iArr != null) {
                System.arraycopy(b10, 0, iArr, 0, b10.length);
                return true;
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f15429d;
    }

    synchronized void f(f fVar) {
        this.f15435j.add(fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void h() {
        this.f15435j.clear();
    }

    public String toString() {
        return this.f15426a;
    }
}
