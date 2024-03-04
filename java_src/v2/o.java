package v2;

import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    public final Object f58906a;

    /* renamed from: b  reason: collision with root package name */
    public final int f58907b;

    /* renamed from: c  reason: collision with root package name */
    public final int f58908c;

    /* renamed from: d  reason: collision with root package name */
    public final long f58909d;

    /* renamed from: e  reason: collision with root package name */
    public final int f58910e;

    public o(Object obj) {
        this(obj, -1L);
    }

    public o a(Object obj) {
        return this.f58906a.equals(obj) ? this : new o(obj, this.f58907b, this.f58908c, this.f58909d, this.f58910e);
    }

    public boolean b() {
        return this.f58907b != -1;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            return this.f58906a.equals(oVar.f58906a) && this.f58907b == oVar.f58907b && this.f58908c == oVar.f58908c && this.f58909d == oVar.f58909d && this.f58910e == oVar.f58910e;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((527 + this.f58906a.hashCode()) * 31) + this.f58907b) * 31) + this.f58908c) * 31) + ((int) this.f58909d)) * 31) + this.f58910e;
    }

    public o(Object obj, long j10) {
        this(obj, -1, -1, j10, -1);
    }

    public o(Object obj, long j10, int i9) {
        this(obj, -1, -1, j10, i9);
    }

    public o(Object obj, int i9, int i10, long j10) {
        this(obj, i9, i10, j10, -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public o(o oVar) {
        this.f58906a = oVar.f58906a;
        this.f58907b = oVar.f58907b;
        this.f58908c = oVar.f58908c;
        this.f58909d = oVar.f58909d;
        this.f58910e = oVar.f58910e;
    }

    private o(Object obj, int i9, int i10, long j10, int i11) {
        this.f58906a = obj;
        this.f58907b = i9;
        this.f58908c = i10;
        this.f58909d = j10;
        this.f58910e = i11;
    }
}
