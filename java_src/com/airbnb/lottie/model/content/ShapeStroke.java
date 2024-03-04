package com.airbnb.lottie.model.content;

import android.graphics.Paint;
import androidx.annotation.Nullable;
import com.airbnb.lottie.f;
import e.r;
import i.b;
import i.d;
import j.c;
import java.util.List;
/* loaded from: classes.dex */
public class ShapeStroke implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f3768a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final b f3769b;

    /* renamed from: c  reason: collision with root package name */
    private final List<b> f3770c;

    /* renamed from: d  reason: collision with root package name */
    private final i.a f3771d;

    /* renamed from: e  reason: collision with root package name */
    private final d f3772e;

    /* renamed from: f  reason: collision with root package name */
    private final b f3773f;

    /* renamed from: g  reason: collision with root package name */
    private final LineCapType f3774g;

    /* renamed from: h  reason: collision with root package name */
    private final LineJoinType f3775h;

    /* renamed from: i  reason: collision with root package name */
    private final float f3776i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f3777j;

    /* loaded from: classes.dex */
    public enum LineCapType {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap toPaintCap() {
            int i9 = a.f3778a[ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    return Paint.Cap.SQUARE;
                }
                return Paint.Cap.ROUND;
            }
            return Paint.Cap.BUTT;
        }
    }

    /* loaded from: classes.dex */
    public enum LineJoinType {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join toPaintJoin() {
            int i9 = a.f3779b[ordinal()];
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return null;
                    }
                    return Paint.Join.ROUND;
                }
                return Paint.Join.MITER;
            }
            return Paint.Join.BEVEL;
        }
    }

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3778a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f3779b;

        static {
            int[] iArr = new int[LineJoinType.values().length];
            f3779b = iArr;
            try {
                iArr[LineJoinType.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3779b[LineJoinType.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3779b[LineJoinType.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[LineCapType.values().length];
            f3778a = iArr2;
            try {
                iArr2[LineCapType.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3778a[LineCapType.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3778a[LineCapType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ShapeStroke(String str, @Nullable b bVar, List<b> list, i.a aVar, d dVar, b bVar2, LineCapType lineCapType, LineJoinType lineJoinType, float f10, boolean z10) {
        this.f3768a = str;
        this.f3769b = bVar;
        this.f3770c = list;
        this.f3771d = aVar;
        this.f3772e = dVar;
        this.f3773f = bVar2;
        this.f3774g = lineCapType;
        this.f3775h = lineJoinType;
        this.f3776i = f10;
        this.f3777j = z10;
    }

    @Override // j.c
    public e.c a(f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new r(fVar, aVar, this);
    }

    public LineCapType b() {
        return this.f3774g;
    }

    public i.a c() {
        return this.f3771d;
    }

    public b d() {
        return this.f3769b;
    }

    public LineJoinType e() {
        return this.f3775h;
    }

    public List<b> f() {
        return this.f3770c;
    }

    public float g() {
        return this.f3776i;
    }

    public String h() {
        return this.f3768a;
    }

    public d i() {
        return this.f3772e;
    }

    public b j() {
        return this.f3773f;
    }

    public boolean k() {
        return this.f3777j;
    }
}
