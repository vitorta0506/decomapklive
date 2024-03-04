package com.beloo.widget.chipslayoutmanager;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.beloo.widget.chipslayoutmanager.anchor.AnchorViewState;
import com.beloo.widget.chipslayoutmanager.cache.CacheParcelableContainer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ParcelableContainer implements Parcelable {
    public static final Parcelable.Creator<ParcelableContainer> CREATOR = new a();
    private AnchorViewState anchorViewState;
    private SparseArray<Object> cacheNormalizationPositionMap;
    private int orientation;
    private SparseArray<Object> orientationCacheMap;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator<ParcelableContainer> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ParcelableContainer createFromParcel(Parcel parcel) {
            return new ParcelableContainer(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ParcelableContainer[] newArray(int i9) {
            return new ParcelableContainer[i9];
        }
    }

    /* synthetic */ ParcelableContainer(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AnchorViewState a() {
        return this.anchorViewState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @IntRange(from = 0)
    @Nullable
    public Integer b(int i9) {
        return (Integer) this.cacheNormalizationPositionMap.get(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.orientation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Parcelable d(int i9) {
        return (Parcelable) this.orientationCacheMap.get(i9);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(AnchorViewState anchorViewState) {
        this.anchorViewState = anchorViewState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(int i9, @Nullable Integer num) {
        this.cacheNormalizationPositionMap.put(i9, num);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(int i9) {
        this.orientation = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(int i9, Parcelable parcelable) {
        this.orientationCacheMap.put(i9, parcelable);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        this.anchorViewState.writeToParcel(parcel, i9);
        parcel.writeSparseArray(this.orientationCacheMap);
        parcel.writeSparseArray(this.cacheNormalizationPositionMap);
        parcel.writeInt(this.orientation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ParcelableContainer() {
        this.orientationCacheMap = new SparseArray<>();
        SparseArray<Object> sparseArray = new SparseArray<>();
        this.cacheNormalizationPositionMap = sparseArray;
        sparseArray.put(1, 0);
        this.cacheNormalizationPositionMap.put(2, 0);
    }

    private ParcelableContainer(Parcel parcel) {
        this.orientationCacheMap = new SparseArray<>();
        this.cacheNormalizationPositionMap = new SparseArray<>();
        this.anchorViewState = AnchorViewState.CREATOR.createFromParcel(parcel);
        this.orientationCacheMap = parcel.readSparseArray(CacheParcelableContainer.class.getClassLoader());
        this.cacheNormalizationPositionMap = parcel.readSparseArray(Integer.class.getClassLoader());
        this.orientation = parcel.readInt();
    }
}
