package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.model.content.ShapeStroke;
import e.i;
import i.b;
import i.d;
import i.f;
import j.c;
import java.util.List;
/* loaded from: classes.dex */
public class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f3786a;

    /* renamed from: b  reason: collision with root package name */
    private final GradientType f3787b;

    /* renamed from: c  reason: collision with root package name */
    private final i.c f3788c;

    /* renamed from: d  reason: collision with root package name */
    private final d f3789d;

    /* renamed from: e  reason: collision with root package name */
    private final f f3790e;

    /* renamed from: f  reason: collision with root package name */
    private final f f3791f;

    /* renamed from: g  reason: collision with root package name */
    private final b f3792g;

    /* renamed from: h  reason: collision with root package name */
    private final ShapeStroke.LineCapType f3793h;

    /* renamed from: i  reason: collision with root package name */
    private final ShapeStroke.LineJoinType f3794i;

    /* renamed from: j  reason: collision with root package name */
    private final float f3795j;

    /* renamed from: k  reason: collision with root package name */
    private final List<b> f3796k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final b f3797l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f3798m;

    public a(String str, GradientType gradientType, i.c cVar, d dVar, f fVar, f fVar2, b bVar, ShapeStroke.LineCapType lineCapType, ShapeStroke.LineJoinType lineJoinType, float f10, List<b> list, @Nullable b bVar2, boolean z10) {
        this.f3786a = str;
        this.f3787b = gradientType;
        this.f3788c = cVar;
        this.f3789d = dVar;
        this.f3790e = fVar;
        this.f3791f = fVar2;
        this.f3792g = bVar;
        this.f3793h = lineCapType;
        this.f3794i = lineJoinType;
        this.f3795j = f10;
        this.f3796k = list;
        this.f3797l = bVar2;
        this.f3798m = z10;
    }

    @Override // j.c
    public e.c a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new i(fVar, aVar, this);
    }

    public ShapeStroke.LineCapType b() {
        return this.f3793h;
    }

    @Nullable
    public b c() {
        return this.f3797l;
    }

    public f d() {
        return this.f3791f;
    }

    public i.c e() {
        return this.f3788c;
    }

    public GradientType f() {
        return this.f3787b;
    }

    public ShapeStroke.LineJoinType g() {
        return this.f3794i;
    }

    public List<b> h() {
        return this.f3796k;
    }

    public float i() {
        return this.f3795j;
    }

    public String j() {
        return this.f3786a;
    }

    public d k() {
        return this.f3789d;
    }

    public f l() {
        return this.f3790e;
    }

    public b m() {
        return this.f3792g;
    }

    public boolean n() {
        return this.f3798m;
    }
}
