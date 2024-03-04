package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.f;
import e.n;
import i.b;
import i.m;
import j.c;
/* loaded from: classes.dex */
public class PolystarShape implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f3758a;

    /* renamed from: b  reason: collision with root package name */
    private final Type f3759b;

    /* renamed from: c  reason: collision with root package name */
    private final b f3760c;

    /* renamed from: d  reason: collision with root package name */
    private final m<PointF, PointF> f3761d;

    /* renamed from: e  reason: collision with root package name */
    private final b f3762e;

    /* renamed from: f  reason: collision with root package name */
    private final b f3763f;

    /* renamed from: g  reason: collision with root package name */
    private final b f3764g;

    /* renamed from: h  reason: collision with root package name */
    private final b f3765h;

    /* renamed from: i  reason: collision with root package name */
    private final b f3766i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f3767j;

    /* loaded from: classes.dex */
    public enum Type {
        STAR(1),
        POLYGON(2);
        
        private final int value;

        Type(int i9) {
            this.value = i9;
        }

        public static Type forValue(int i9) {
            Type[] values;
            for (Type type : values()) {
                if (type.value == i9) {
                    return type;
                }
            }
            return null;
        }
    }

    public PolystarShape(String str, Type type, b bVar, m<PointF, PointF> mVar, b bVar2, b bVar3, b bVar4, b bVar5, b bVar6, boolean z10) {
        this.f3758a = str;
        this.f3759b = type;
        this.f3760c = bVar;
        this.f3761d = mVar;
        this.f3762e = bVar2;
        this.f3763f = bVar3;
        this.f3764g = bVar4;
        this.f3765h = bVar5;
        this.f3766i = bVar6;
        this.f3767j = z10;
    }

    @Override // j.c
    public e.c a(f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new n(fVar, aVar, this);
    }

    public b b() {
        return this.f3763f;
    }

    public b c() {
        return this.f3765h;
    }

    public String d() {
        return this.f3758a;
    }

    public b e() {
        return this.f3764g;
    }

    public b f() {
        return this.f3766i;
    }

    public b g() {
        return this.f3760c;
    }

    public m<PointF, PointF> h() {
        return this.f3761d;
    }

    public b i() {
        return this.f3762e;
    }

    public Type j() {
        return this.f3759b;
    }

    public boolean k() {
        return this.f3767j;
    }
}
