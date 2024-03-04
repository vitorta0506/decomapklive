package com.beloo.widget.chipslayoutmanager.cache;

import android.graphics.Rect;
import android.os.Parcelable;
import android.util.Pair;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;
import java.util.List;
import java.util.NavigableSet;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements s.a {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView.LayoutManager f4102a;

    /* renamed from: b  reason: collision with root package name */
    private NavigableSet<Integer> f4103b = new TreeSet();

    /* renamed from: c  reason: collision with root package name */
    private NavigableSet<Integer> f4104c = new TreeSet();

    /* renamed from: d  reason: collision with root package name */
    private int f4105d = 1000;

    /* renamed from: e  reason: collision with root package name */
    private boolean f4106e = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(RecyclerView.LayoutManager layoutManager) {
        this.f4102a = layoutManager;
    }

    private void g() {
        if (this.f4103b.size() > this.f4105d) {
            NavigableSet<Integer> navigableSet = this.f4103b;
            navigableSet.remove(navigableSet.first());
        }
        if (this.f4104c.size() > this.f4105d) {
            NavigableSet<Integer> navigableSet2 = this.f4104c;
            navigableSet2.remove(navigableSet2.first());
        }
    }

    @Override // s.a
    public boolean a(int i9) {
        return this.f4104c.contains(Integer.valueOf(i9));
    }

    @Override // s.a
    public int b(int i9) {
        Integer floor = this.f4103b.floor(Integer.valueOf(i9));
        if (floor == null) {
            floor = Integer.valueOf(i9);
        }
        return floor.intValue();
    }

    @Override // s.a
    public void c(int i9) {
        if (h()) {
            return;
        }
        Iterator<Integer> it = this.f4103b.tailSet(Integer.valueOf(i9), true).iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
        Integer lower = this.f4103b.lower(Integer.valueOf(i9));
        if (lower != null) {
            i9 = lower.intValue();
        }
        Iterator<Integer> it2 = this.f4104c.tailSet(Integer.valueOf(i9), true).iterator();
        while (it2.hasNext()) {
            it2.next();
            it2.remove();
        }
    }

    @Override // s.a
    public Integer d() {
        if (h()) {
            return null;
        }
        return this.f4104c.last();
    }

    @Override // s.a
    public void e(List<Pair<Rect, View>> list) {
        if (!this.f4106e || list.isEmpty()) {
            return;
        }
        int position = this.f4102a.getPosition((View) list.get(0).second);
        int position2 = this.f4102a.getPosition((View) list.get(list.size() - 1).second);
        g();
        this.f4103b.add(Integer.valueOf(position));
        this.f4104c.add(Integer.valueOf(position2));
    }

    @Override // s.a
    public void f() {
        this.f4103b.clear();
        this.f4104c.clear();
    }

    public boolean h() {
        return this.f4104c.isEmpty();
    }

    @Override // s.a
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (parcelable == null) {
            return;
        }
        if (parcelable instanceof CacheParcelableContainer) {
            CacheParcelableContainer cacheParcelableContainer = (CacheParcelableContainer) parcelable;
            this.f4103b = cacheParcelableContainer.b();
            this.f4104c = cacheParcelableContainer.a();
            return;
        }
        throw new IllegalStateException("wrong parcelable passed");
    }

    @Override // s.a
    public Parcelable onSaveInstanceState() {
        return new CacheParcelableContainer(this.f4103b, this.f4104c);
    }
}
