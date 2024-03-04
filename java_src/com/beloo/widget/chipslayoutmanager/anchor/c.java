package com.beloo.widget.chipslayoutmanager.anchor;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;
import u.g;
/* loaded from: classes.dex */
public class c extends a {

    /* renamed from: c  reason: collision with root package name */
    private com.beloo.widget.chipslayoutmanager.a f4088c;

    public c(RecyclerView.LayoutManager layoutManager, g gVar) {
        super(layoutManager, gVar);
        this.f4088c = new com.beloo.widget.chipslayoutmanager.a(layoutManager);
    }

    @Override // com.beloo.widget.chipslayoutmanager.anchor.a, r.a
    public /* bridge */ /* synthetic */ AnchorViewState a() {
        return super.a();
    }

    @Override // r.a
    public AnchorViewState b() {
        AnchorViewState b10 = AnchorViewState.b();
        Iterator<View> it = this.f4088c.iterator();
        int i9 = Integer.MAX_VALUE;
        int i10 = Integer.MAX_VALUE;
        while (it.hasNext()) {
            View next = it.next();
            AnchorViewState d10 = d(next);
            int position = this.f4085a.getPosition(next);
            int decoratedTop = this.f4085a.getDecoratedTop(next);
            if (e().a(new Rect(d10.a())) && !d10.e()) {
                if (i10 > position) {
                    b10 = d10;
                    i10 = position;
                }
                if (i9 > decoratedTop) {
                    i9 = decoratedTop;
                }
            }
        }
        if (!b10.d()) {
            b10.a().top = i9;
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
        a10.left = e().c();
        a10.right = e().q();
    }
}
