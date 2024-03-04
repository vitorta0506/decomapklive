package com.google.android.exoplayer2.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.v2;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import o2.b;
import o2.c;
import o2.d;
import o2.e;
/* loaded from: classes.dex */
public final class a extends f implements Handler.Callback {

    /* renamed from: n  reason: collision with root package name */
    private final c f6317n;

    /* renamed from: o  reason: collision with root package name */
    private final e f6318o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final Handler f6319p;

    /* renamed from: q  reason: collision with root package name */
    private final d f6320q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private b f6321r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f6322s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f6323t;

    /* renamed from: u  reason: collision with root package name */
    private long f6324u;

    /* renamed from: v  reason: collision with root package name */
    private long f6325v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private Metadata f6326w;

    public a(e eVar, @Nullable Looper looper) {
        this(eVar, looper, c.f55489a);
    }

    private void P(Metadata metadata, List<Metadata.Entry> list) {
        for (int i9 = 0; i9 < metadata.d(); i9++) {
            k1 N = metadata.c(i9).N();
            if (N != null && this.f6317n.a(N)) {
                b b10 = this.f6317n.b(N);
                byte[] bArr = (byte[]) com.google.android.exoplayer2.util.a.e(metadata.c(i9).e1());
                this.f6320q.f();
                this.f6320q.q(bArr.length);
                ((ByteBuffer) l0.j(this.f6320q.f5708c)).put(bArr);
                this.f6320q.r();
                Metadata a10 = b10.a(this.f6320q);
                if (a10 != null) {
                    P(a10, list);
                }
            } else {
                list.add(metadata.c(i9));
            }
        }
    }

    private void Q(Metadata metadata) {
        Handler handler = this.f6319p;
        if (handler != null) {
            handler.obtainMessage(0, metadata).sendToTarget();
        } else {
            R(metadata);
        }
    }

    private void R(Metadata metadata) {
        this.f6318o.g(metadata);
    }

    private boolean S(long j10) {
        boolean z10;
        Metadata metadata = this.f6326w;
        if (metadata == null || this.f6325v > j10) {
            z10 = false;
        } else {
            Q(metadata);
            this.f6326w = null;
            this.f6325v = -9223372036854775807L;
            z10 = true;
        }
        if (this.f6322s && this.f6326w == null) {
            this.f6323t = true;
        }
        return z10;
    }

    private void T() {
        if (this.f6322s || this.f6326w != null) {
            return;
        }
        this.f6320q.f();
        l1 A = A();
        int M = M(A, this.f6320q, 0);
        if (M != -4) {
            if (M == -5) {
                this.f6324u = ((k1) com.google.android.exoplayer2.util.a.e(A.f6166b)).f6115p;
            }
        } else if (this.f6320q.k()) {
            this.f6322s = true;
        } else {
            d dVar = this.f6320q;
            dVar.f55490i = this.f6324u;
            dVar.r();
            Metadata a10 = ((b) l0.j(this.f6321r)).a(this.f6320q);
            if (a10 != null) {
                ArrayList arrayList = new ArrayList(a10.d());
                P(a10, arrayList);
                if (arrayList.isEmpty()) {
                    return;
                }
                this.f6326w = new Metadata(arrayList);
                this.f6325v = this.f6320q.f5710e;
            }
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void F() {
        this.f6326w = null;
        this.f6325v = -9223372036854775807L;
        this.f6321r = null;
    }

    @Override // com.google.android.exoplayer2.f
    protected void H(long j10, boolean z10) {
        this.f6326w = null;
        this.f6325v = -9223372036854775807L;
        this.f6322s = false;
        this.f6323t = false;
    }

    @Override // com.google.android.exoplayer2.f
    protected void L(k1[] k1VarArr, long j10, long j11) {
        this.f6321r = this.f6317n.b(k1VarArr[0]);
    }

    @Override // com.google.android.exoplayer2.w2
    public int a(k1 k1Var) {
        if (this.f6317n.a(k1Var)) {
            return v2.a(k1Var.E == 0 ? 4 : 2);
        }
        return v2.a(0);
    }

    @Override // com.google.android.exoplayer2.u2
    public boolean c() {
        return this.f6323t;
    }

    @Override // com.google.android.exoplayer2.u2, com.google.android.exoplayer2.w2
    public String getName() {
        return "MetadataRenderer";
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            R((Metadata) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.u2
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.u2
    public void s(long j10, long j11) {
        boolean z10 = true;
        while (z10) {
            T();
            z10 = S(j10);
        }
    }

    public a(e eVar, @Nullable Looper looper, c cVar) {
        super(5);
        this.f6318o = (e) com.google.android.exoplayer2.util.a.e(eVar);
        this.f6319p = looper == null ? null : l0.t(looper, this);
        this.f6317n = (c) com.google.android.exoplayer2.util.a.e(cVar);
        this.f6320q = new d();
        this.f6325v = -9223372036854775807L;
    }
}
