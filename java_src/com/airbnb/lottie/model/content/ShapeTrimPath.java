package com.airbnb.lottie.model.content;

import com.airbnb.lottie.f;
import e.s;
import i.b;
import j.c;
/* loaded from: classes.dex */
public class ShapeTrimPath implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f3780a;

    /* renamed from: b  reason: collision with root package name */
    private final Type f3781b;

    /* renamed from: c  reason: collision with root package name */
    private final b f3782c;

    /* renamed from: d  reason: collision with root package name */
    private final b f3783d;

    /* renamed from: e  reason: collision with root package name */
    private final b f3784e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f3785f;

    /* loaded from: classes.dex */
    public enum Type {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static Type forId(int i9) {
            if (i9 != 1) {
                if (i9 == 2) {
                    return INDIVIDUALLY;
                }
                throw new IllegalArgumentException("Unknown trim path type " + i9);
            }
            return SIMULTANEOUSLY;
        }
    }

    public ShapeTrimPath(String str, Type type, b bVar, b bVar2, b bVar3, boolean z10) {
        this.f3780a = str;
        this.f3781b = type;
        this.f3782c = bVar;
        this.f3783d = bVar2;
        this.f3784e = bVar3;
        this.f3785f = z10;
    }

    @Override // j.c
    public e.c a(f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new s(aVar, this);
    }

    public b b() {
        return this.f3783d;
    }

    public String c() {
        return this.f3780a;
    }

    public b d() {
        return this.f3784e;
    }

    public b e() {
        return this.f3782c;
    }

    public Type f() {
        return this.f3781b;
    }

    public boolean g() {
        return this.f3785f;
    }

    public String toString() {
        return "Trim Path: {start: " + this.f3782c + ", end: " + this.f3783d + ", offset: " + this.f3784e + "}";
    }
}
