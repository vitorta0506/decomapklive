package c2;

import androidx.annotation.Nullable;
import c2.e0;
import java.io.IOException;
/* loaded from: classes.dex */
public final class f0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f1495a = new byte[10];

    /* renamed from: b  reason: collision with root package name */
    private boolean f1496b;

    /* renamed from: c  reason: collision with root package name */
    private int f1497c;

    /* renamed from: d  reason: collision with root package name */
    private long f1498d;

    /* renamed from: e  reason: collision with root package name */
    private int f1499e;

    /* renamed from: f  reason: collision with root package name */
    private int f1500f;

    /* renamed from: g  reason: collision with root package name */
    private int f1501g;

    public void a(e0 e0Var, @Nullable e0.a aVar) {
        if (this.f1497c > 0) {
            e0Var.c(this.f1498d, this.f1499e, this.f1500f, this.f1501g, aVar);
            this.f1497c = 0;
        }
    }

    public void b() {
        this.f1496b = false;
        this.f1497c = 0;
    }

    public void c(e0 e0Var, long j10, int i9, int i10, int i11, @Nullable e0.a aVar) {
        com.google.android.exoplayer2.util.a.g(this.f1501g <= i10 + i11, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (this.f1496b) {
            int i12 = this.f1497c;
            int i13 = i12 + 1;
            this.f1497c = i13;
            if (i12 == 0) {
                this.f1498d = j10;
                this.f1499e = i9;
                this.f1500f = 0;
            }
            this.f1500f += i10;
            this.f1501g = i11;
            if (i13 >= 16) {
                a(e0Var, aVar);
            }
        }
    }

    public void d(m mVar) throws IOException {
        if (this.f1496b) {
            return;
        }
        mVar.m(this.f1495a, 0, 10);
        mVar.f();
        if (com.google.android.exoplayer2.audio.b.i(this.f1495a) == 0) {
            return;
        }
        this.f1496b = true;
    }
}
