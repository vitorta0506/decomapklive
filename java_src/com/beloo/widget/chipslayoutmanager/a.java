package com.beloo.widget.chipslayoutmanager;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;
/* loaded from: classes.dex */
public class a implements Iterable<View> {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView.LayoutManager f4082a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.beloo.widget.chipslayoutmanager.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0060a implements Iterator<View> {

        /* renamed from: a  reason: collision with root package name */
        int f4083a = 0;

        C0060a() {
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public View next() {
            RecyclerView.LayoutManager layoutManager = a.this.f4082a;
            int i9 = this.f4083a;
            this.f4083a = i9 + 1;
            return layoutManager.getChildAt(i9);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4083a < a.this.f4082a.getChildCount();
        }
    }

    public a(RecyclerView.LayoutManager layoutManager) {
        this.f4082a = layoutManager;
    }

    @Override // java.lang.Iterable
    public Iterator<View> iterator() {
        return new C0060a();
    }
}
