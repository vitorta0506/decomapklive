package com.google.android.exoplayer2;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.common.collect.ImmutableList;
import java.util.List;
import v2.q;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i2 {

    /* renamed from: s  reason: collision with root package name */
    private static final q.b f6004s = new q.b(new Object());

    /* renamed from: a  reason: collision with root package name */
    public final i3 f6005a;

    /* renamed from: b  reason: collision with root package name */
    public final q.b f6006b;

    /* renamed from: c  reason: collision with root package name */
    public final long f6007c;

    /* renamed from: d  reason: collision with root package name */
    public final long f6008d;

    /* renamed from: e  reason: collision with root package name */
    public final int f6009e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final ExoPlaybackException f6010f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f6011g;

    /* renamed from: h  reason: collision with root package name */
    public final v2.q0 f6012h;

    /* renamed from: i  reason: collision with root package name */
    public final h3.c0 f6013i;

    /* renamed from: j  reason: collision with root package name */
    public final List<Metadata> f6014j;

    /* renamed from: k  reason: collision with root package name */
    public final q.b f6015k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f6016l;

    /* renamed from: m  reason: collision with root package name */
    public final int f6017m;

    /* renamed from: n  reason: collision with root package name */
    public final k2 f6018n;

    /* renamed from: o  reason: collision with root package name */
    public final boolean f6019o;

    /* renamed from: p  reason: collision with root package name */
    public volatile long f6020p;

    /* renamed from: q  reason: collision with root package name */
    public volatile long f6021q;

    /* renamed from: r  reason: collision with root package name */
    public volatile long f6022r;

    public i2(i3 i3Var, q.b bVar, long j10, long j11, int i9, @Nullable ExoPlaybackException exoPlaybackException, boolean z10, v2.q0 q0Var, h3.c0 c0Var, List<Metadata> list, q.b bVar2, boolean z11, int i10, k2 k2Var, long j12, long j13, long j14, boolean z12) {
        this.f6005a = i3Var;
        this.f6006b = bVar;
        this.f6007c = j10;
        this.f6008d = j11;
        this.f6009e = i9;
        this.f6010f = exoPlaybackException;
        this.f6011g = z10;
        this.f6012h = q0Var;
        this.f6013i = c0Var;
        this.f6014j = list;
        this.f6015k = bVar2;
        this.f6016l = z11;
        this.f6017m = i10;
        this.f6018n = k2Var;
        this.f6020p = j12;
        this.f6021q = j13;
        this.f6022r = j14;
        this.f6019o = z12;
    }

    public static i2 j(h3.c0 c0Var) {
        i3 i3Var = i3.f6023a;
        q.b bVar = f6004s;
        return new i2(i3Var, bVar, -9223372036854775807L, 0L, 1, null, false, v2.q0.f58918d, c0Var, ImmutableList.of(), bVar, false, 0, k2.f6152d, 0L, 0L, 0L, false);
    }

    public static q.b k() {
        return f6004s;
    }

    @CheckResult
    public i2 a(boolean z10) {
        return new i2(this.f6005a, this.f6006b, this.f6007c, this.f6008d, this.f6009e, this.f6010f, z10, this.f6012h, this.f6013i, this.f6014j, this.f6015k, this.f6016l, this.f6017m, this.f6018n, this.f6020p, this.f6021q, this.f6022r, this.f6019o);
    }

    @CheckResult
    public i2 b(q.b bVar) {
        return new i2(this.f6005a, this.f6006b, this.f6007c, this.f6008d, this.f6009e, this.f6010f, this.f6011g, this.f6012h, this.f6013i, this.f6014j, bVar, this.f6016l, this.f6017m, this.f6018n, this.f6020p, this.f6021q, this.f6022r, this.f6019o);
    }

    @CheckResult
    public i2 c(q.b bVar, long j10, long j11, long j12, long j13, v2.q0 q0Var, h3.c0 c0Var, List<Metadata> list) {
        return new i2(this.f6005a, bVar, j11, j12, this.f6009e, this.f6010f, this.f6011g, q0Var, c0Var, list, this.f6015k, this.f6016l, this.f6017m, this.f6018n, this.f6020p, j13, j10, this.f6019o);
    }

    @CheckResult
    public i2 d(boolean z10, int i9) {
        return new i2(this.f6005a, this.f6006b, this.f6007c, this.f6008d, this.f6009e, this.f6010f, this.f6011g, this.f6012h, this.f6013i, this.f6014j, this.f6015k, z10, i9, this.f6018n, this.f6020p, this.f6021q, this.f6022r, this.f6019o);
    }

    @CheckResult
    public i2 e(@Nullable ExoPlaybackException exoPlaybackException) {
        return new i2(this.f6005a, this.f6006b, this.f6007c, this.f6008d, this.f6009e, exoPlaybackException, this.f6011g, this.f6012h, this.f6013i, this.f6014j, this.f6015k, this.f6016l, this.f6017m, this.f6018n, this.f6020p, this.f6021q, this.f6022r, this.f6019o);
    }

    @CheckResult
    public i2 f(k2 k2Var) {
        return new i2(this.f6005a, this.f6006b, this.f6007c, this.f6008d, this.f6009e, this.f6010f, this.f6011g, this.f6012h, this.f6013i, this.f6014j, this.f6015k, this.f6016l, this.f6017m, k2Var, this.f6020p, this.f6021q, this.f6022r, this.f6019o);
    }

    @CheckResult
    public i2 g(int i9) {
        return new i2(this.f6005a, this.f6006b, this.f6007c, this.f6008d, i9, this.f6010f, this.f6011g, this.f6012h, this.f6013i, this.f6014j, this.f6015k, this.f6016l, this.f6017m, this.f6018n, this.f6020p, this.f6021q, this.f6022r, this.f6019o);
    }

    @CheckResult
    public i2 h(boolean z10) {
        return new i2(this.f6005a, this.f6006b, this.f6007c, this.f6008d, this.f6009e, this.f6010f, this.f6011g, this.f6012h, this.f6013i, this.f6014j, this.f6015k, this.f6016l, this.f6017m, this.f6018n, this.f6020p, this.f6021q, this.f6022r, z10);
    }

    @CheckResult
    public i2 i(i3 i3Var) {
        return new i2(i3Var, this.f6006b, this.f6007c, this.f6008d, this.f6009e, this.f6010f, this.f6011g, this.f6012h, this.f6013i, this.f6014j, this.f6015k, this.f6016l, this.f6017m, this.f6018n, this.f6020p, this.f6021q, this.f6022r, this.f6019o);
    }
}
