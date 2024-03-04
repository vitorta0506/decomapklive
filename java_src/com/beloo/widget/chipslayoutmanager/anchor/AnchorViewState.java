package com.beloo.widget.chipslayoutmanager.anchor;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.Locale;
/* loaded from: classes.dex */
public class AnchorViewState implements Parcelable {
    public static final Parcelable.Creator<AnchorViewState> CREATOR = new a();
    private Rect anchorViewRect;
    private Integer position;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator<AnchorViewState> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AnchorViewState createFromParcel(Parcel parcel) {
            return new AnchorViewState(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public AnchorViewState[] newArray(int i9) {
            return new AnchorViewState[i9];
        }
    }

    /* synthetic */ AnchorViewState(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AnchorViewState b() {
        return new AnchorViewState();
    }

    public Rect a() {
        return this.anchorViewRect;
    }

    public Integer c() {
        return this.position;
    }

    public boolean d() {
        return this.anchorViewRect == null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean e() {
        return c().intValue() == -1;
    }

    public void f(Integer num) {
        this.position = num;
    }

    public String toString() {
        return String.format(Locale.getDefault(), "AnchorState. Position = %d, Rect = %s", this.position, String.valueOf(this.anchorViewRect));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        Integer num = this.position;
        parcel.writeInt(num == null ? -1 : num.intValue());
        parcel.writeParcelable(this.anchorViewRect, 0);
    }

    private AnchorViewState() {
        this.position = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AnchorViewState(int i9, @NonNull Rect rect) {
        this.position = 0;
        this.position = Integer.valueOf(i9);
        this.anchorViewRect = rect;
    }

    private AnchorViewState(Parcel parcel) {
        this.position = 0;
        int readInt = parcel.readInt();
        this.position = readInt == -1 ? null : Integer.valueOf(readInt);
        this.anchorViewRect = (Rect) parcel.readParcelable(AnchorViewState.class.getClassLoader());
    }
}
