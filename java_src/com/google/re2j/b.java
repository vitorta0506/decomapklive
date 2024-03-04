package com.google.re2j;

import java.util.HashMap;
/* loaded from: classes3.dex */
class b {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f15351c;

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f15352d;

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f15353e;

    /* renamed from: f  reason: collision with root package name */
    static final HashMap<String, b> f15354f;

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f15355g;

    /* renamed from: h  reason: collision with root package name */
    private static final int[] f15356h;

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f15357i;

    /* renamed from: j  reason: collision with root package name */
    private static final int[] f15358j;

    /* renamed from: k  reason: collision with root package name */
    private static final int[] f15359k;

    /* renamed from: l  reason: collision with root package name */
    private static final int[] f15360l;

    /* renamed from: m  reason: collision with root package name */
    private static final int[] f15361m;

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f15362n;

    /* renamed from: o  reason: collision with root package name */
    private static final int[] f15363o;

    /* renamed from: p  reason: collision with root package name */
    private static final int[] f15364p;

    /* renamed from: q  reason: collision with root package name */
    private static final int[] f15365q;

    /* renamed from: r  reason: collision with root package name */
    private static final int[] f15366r;

    /* renamed from: s  reason: collision with root package name */
    private static final int[] f15367s;

    /* renamed from: t  reason: collision with root package name */
    private static final int[] f15368t;

    /* renamed from: u  reason: collision with root package name */
    static final HashMap<String, b> f15369u;

    /* renamed from: a  reason: collision with root package name */
    final int f15370a;

    /* renamed from: b  reason: collision with root package name */
    final int[] f15371b;

    static {
        int[] iArr = {48, 57};
        f15351c = iArr;
        int[] iArr2 = {9, 10, 12, 13, 32, 32};
        f15352d = iArr2;
        int[] iArr3 = {48, 57, 65, 90, 95, 95, 97, 122};
        f15353e = iArr3;
        HashMap<String, b> hashMap = new HashMap<>();
        f15354f = hashMap;
        hashMap.put("\\d", new b(1, iArr));
        hashMap.put("\\D", new b(-1, iArr));
        hashMap.put("\\s", new b(1, iArr2));
        hashMap.put("\\S", new b(-1, iArr2));
        hashMap.put("\\w", new b(1, iArr3));
        hashMap.put("\\W", new b(-1, iArr3));
        int[] iArr4 = {48, 57, 65, 90, 97, 122};
        f15355g = iArr4;
        int[] iArr5 = {65, 90, 97, 122};
        f15356h = iArr5;
        int[] iArr6 = {0, 127};
        f15357i = iArr6;
        int[] iArr7 = {9, 9, 32, 32};
        f15358j = iArr7;
        int[] iArr8 = {0, 31, 127, 127};
        f15359k = iArr8;
        int[] iArr9 = {48, 57};
        f15360l = iArr9;
        int[] iArr10 = {33, 126};
        f15361m = iArr10;
        int[] iArr11 = {97, 122};
        f15362n = iArr11;
        int[] iArr12 = {32, 126};
        f15363o = iArr12;
        int[] iArr13 = {33, 47, 58, 64, 91, 96, 123, 126};
        f15364p = iArr13;
        int[] iArr14 = {9, 13, 32, 32};
        f15365q = iArr14;
        int[] iArr15 = {65, 90};
        f15366r = iArr15;
        int[] iArr16 = {48, 57, 65, 90, 95, 95, 97, 122};
        f15367s = iArr16;
        int[] iArr17 = {48, 57, 65, 70, 97, 102};
        f15368t = iArr17;
        HashMap<String, b> hashMap2 = new HashMap<>();
        f15369u = hashMap2;
        hashMap2.put("[:alnum:]", new b(1, iArr4));
        hashMap2.put("[:^alnum:]", new b(-1, iArr4));
        hashMap2.put("[:alpha:]", new b(1, iArr5));
        hashMap2.put("[:^alpha:]", new b(-1, iArr5));
        hashMap2.put("[:ascii:]", new b(1, iArr6));
        hashMap2.put("[:^ascii:]", new b(-1, iArr6));
        hashMap2.put("[:blank:]", new b(1, iArr7));
        hashMap2.put("[:^blank:]", new b(-1, iArr7));
        hashMap2.put("[:cntrl:]", new b(1, iArr8));
        hashMap2.put("[:^cntrl:]", new b(-1, iArr8));
        hashMap2.put("[:digit:]", new b(1, iArr9));
        hashMap2.put("[:^digit:]", new b(-1, iArr9));
        hashMap2.put("[:graph:]", new b(1, iArr10));
        hashMap2.put("[:^graph:]", new b(-1, iArr10));
        hashMap2.put("[:lower:]", new b(1, iArr11));
        hashMap2.put("[:^lower:]", new b(-1, iArr11));
        hashMap2.put("[:print:]", new b(1, iArr12));
        hashMap2.put("[:^print:]", new b(-1, iArr12));
        hashMap2.put("[:punct:]", new b(1, iArr13));
        hashMap2.put("[:^punct:]", new b(-1, iArr13));
        hashMap2.put("[:space:]", new b(1, iArr14));
        hashMap2.put("[:^space:]", new b(-1, iArr14));
        hashMap2.put("[:upper:]", new b(1, iArr15));
        hashMap2.put("[:^upper:]", new b(-1, iArr15));
        hashMap2.put("[:word:]", new b(1, iArr16));
        hashMap2.put("[:^word:]", new b(-1, iArr16));
        hashMap2.put("[:xdigit:]", new b(1, iArr17));
        hashMap2.put("[:^xdigit:]", new b(-1, iArr17));
    }

    private b(int i9, int[] iArr) {
        this.f15370a = i9;
        this.f15371b = iArr;
    }
}
