package com.beloo.widget.chipslayoutmanager.anchor;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;
import u.g;
/* loaded from: classes.dex */
public class b extends a {

    /* renamed from: c  reason: collision with root package name */
    private com.beloo.widget.chipslayoutmanager.a f4087c;

    public b(RecyclerView.LayoutManager layoutManager, g gVar) {
        super(layoutManager, gVar);
        this.f4087c = new com.beloo.widget.chipslayoutmanager.a(layoutManager);
    }

    @Override // com.beloo.widget.chipslayoutmanager.anchor.a, r.a
    public /* bridge */ /* synthetic */ AnchorViewState a() {
        return super.a();
    }

    @Override // r.a
    public AnchorViewState b() {
        AnchorViewState b10 = AnchorViewState.b();
        Iterator<View> it = this.f4087c.iterator();
        int i9 = Integer.MAX_VALUE;
        int i10 = Integer.MAX_VALUE;
        int i11 = Integer.MIN_VALUE;
        while (it.hasNext()) {
            View next = it.next();
            AnchorViewState d10 = d(next);
            int position = this.f4085a.getPosition(next);
            int decoratedLeft = this.f4085a.getDecoratedLeft(next);
            int decoratedRight = this.f4085a.getDecoratedRight(next);
            if (e().a(new Rect(d10.a())) && !d10.e()) {
                if (i10 > position) {
                    b10 = d10;
                    i10 = position;
                }
                if (i9 > decoratedLeft) {
                    i11 = decoratedRight;
                    i9 = decoratedLeft;
                } else if (i9 == decoratedLeft) {
                    i11 = Math.max(i11, decoratedRight);
                }
            }
        }
        if (!b10.d()) {
            b10.a().left = i9;
            b10.a().right = i11;
            b10.f(Integer.valueOf(i10));
        }
        return b10;
    }

    @Override // r.a
    public void c(AnchorViewState anchorViewState) {
        if (anchorViewState.d()) {
            return;
        }
        Rect a10 = anchorViewState.a();
        a10.top = e().l();
        a10.bottom = e().n();
    }
}
