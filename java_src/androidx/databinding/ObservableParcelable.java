package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class ObservableParcelable<T extends Parcelable> extends ObservableField<T> implements Parcelable {
    public static final Parcelable.Creator<ObservableParcelable> CREATOR = new Parcelable.Creator<ObservableParcelable>() { // from class: androidx.databinding.ObservableParcelable.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableParcelable createFromParcel(Parcel parcel) {
            return new ObservableParcelable(parcel.readParcelable(AnonymousClass1.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableParcelable[] newArray(int i9) {
            return new ObservableParcelable[i9];
        }
    };
    static final long serialVersionUID = 1;

    public ObservableParcelable(T t10) {
        super(t10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeParcelable((Parcelable) get(), 0);
    }

    public ObservableParcelable() {
    }
}
