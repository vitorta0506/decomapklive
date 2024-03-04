package com.beloo.widget.chipslayoutmanager.anchor;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import u.g;
/* loaded from: classes.dex */
abstract class a implements r.a {

    /* renamed from: a  reason: collision with root package name */
    RecyclerView.LayoutManager f4085a;

    /* renamed from: b  reason: collision with root package name */
    private g f4086b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(RecyclerView.LayoutManager layoutManager, g gVar) {
        this.f4085a = layoutManager;
        this.f4086b = gVar;
    }

    @Override // r.a
    public AnchorViewState a() {
        return AnchorViewState.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AnchorViewState d(View view) {
        return new AnchorViewState(this.f4085a.getPosition(view), this.f4086b.h(view));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g e() {
        return this.f4086b;
    }
}
