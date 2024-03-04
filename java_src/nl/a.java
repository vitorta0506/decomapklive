package nl;

import android.content.Context;
import android.widget.OverScroller;
/* loaded from: classes7.dex */
public class a extends c {

    /* renamed from: a  reason: collision with root package name */
    protected final OverScroller f55430a;

    public a(Context context) {
        this.f55430a = new OverScroller(context);
    }

    @Override // nl.c
    public void b(int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.f55430a.fling(i9, i10, i11, i12, i13, i14, i15, i16, i17, i18);
    }

    @Override // nl.c
    public void c(boolean z10) {
        this.f55430a.forceFinished(z10);
    }

    @Override // nl.c
    public int d() {
        return this.f55430a.getCurrX();
    }

    @Override // nl.c
    public int e() {
        return this.f55430a.getCurrY();
    }

    @Override // nl.c
    public boolean g() {
        return this.f55430a.isFinished();
    }
}
