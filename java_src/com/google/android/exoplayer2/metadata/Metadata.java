package com.google.android.exoplayer2.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.x1;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new a();
    private final Entry[] entries;

    /* loaded from: classes.dex */
    public interface Entry extends Parcelable {
        @Nullable
        k1 N();

        @Nullable
        byte[] e1();

        void y0(x1.b bVar);
    }

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<Metadata> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Metadata createFromParcel(Parcel parcel) {
            return new Metadata(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public Metadata[] newArray(int i9) {
            return new Metadata[i9];
        }
    }

    public Metadata(Entry... entryArr) {
        this.entries = entryArr;
    }

    public Metadata a(Entry... entryArr) {
        return entryArr.length == 0 ? this : new Metadata((Entry[]) l0.z0(this.entries, entryArr));
    }

    public Metadata b(@Nullable Metadata metadata) {
        return metadata == null ? this : a(metadata.entries);
    }

    public Entry c(int i9) {
        return this.entries[i9];
    }

    public int d() {
        return this.entries.length;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Metadata.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.entries, ((Metadata) obj).entries);
    }

    public int hashCode() {
        return Arrays.hashCode(this.entries);
    }

    public String toString() {
        return "entries=" + Arrays.toString(this.entries);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.entries.length);
        for (Entry entry : this.entries) {
            parcel.writeParcelable(entry, 0);
        }
    }

    public Metadata(List<? extends Entry> list) {
        this.entries = (Entry[]) list.toArray(new Entry[0]);
    }

    Metadata(Parcel parcel) {
        this.entries = new Entry[parcel.readInt()];
        int i9 = 0;
        while (true) {
            Entry[] entryArr = this.entries;
            if (i9 >= entryArr.length) {
                return;
            }
            entryArr[i9] = (Entry) parcel.readParcelable(Entry.class.getClassLoader());
            i9++;
        }
    }
}
