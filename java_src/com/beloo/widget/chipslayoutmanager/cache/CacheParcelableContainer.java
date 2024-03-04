package com.beloo.widget.chipslayoutmanager.cache;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.LinkedList;
import java.util.NavigableSet;
import java.util.TreeSet;
/* loaded from: classes.dex */
public final class CacheParcelableContainer implements Parcelable {
    public static final Parcelable.Creator<CacheParcelableContainer> CREATOR = new a();
    private NavigableSet<Integer> endsRow;
    private NavigableSet<Integer> startsRow;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator<CacheParcelableContainer> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CacheParcelableContainer createFromParcel(Parcel parcel) {
            return new CacheParcelableContainer(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public CacheParcelableContainer[] newArray(int i9) {
            return new CacheParcelableContainer[i9];
        }
    }

    /* synthetic */ CacheParcelableContainer(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NavigableSet<Integer> a() {
        return this.endsRow;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NavigableSet<Integer> b() {
        return this.startsRow;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        LinkedList linkedList = new LinkedList(this.startsRow);
        LinkedList linkedList2 = new LinkedList(this.endsRow);
        parcel.writeList(linkedList);
        parcel.writeList(linkedList2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CacheParcelableContainer(NavigableSet<Integer> navigableSet, NavigableSet<Integer> navigableSet2) {
        this.startsRow = new TreeSet();
        new TreeSet();
        this.startsRow = navigableSet;
        this.endsRow = navigableSet2;
    }

    private CacheParcelableContainer(Parcel parcel) {
        this.startsRow = new TreeSet();
        this.endsRow = new TreeSet();
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        parcel.readList(linkedList, Integer.class.getClassLoader());
        parcel.readList(linkedList2, Integer.class.getClassLoader());
        this.startsRow = new TreeSet(linkedList);
        this.endsRow = new TreeSet(linkedList2);
    }
}
