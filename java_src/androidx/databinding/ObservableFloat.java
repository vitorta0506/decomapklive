package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes.dex */
public class ObservableFloat extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableFloat> CREATOR = new Parcelable.Creator<ObservableFloat>() { // from class: androidx.databinding.ObservableFloat.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableFloat createFromParcel(Parcel parcel) {
            return new ObservableFloat(parcel.readFloat());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableFloat[] newArray(int i9) {
            return new ObservableFloat[i9];
        }
    };
    static final long serialVersionUID = 1;
    private float mValue;

    public ObservableFloat(float f10) {
        this.mValue = f10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public float get() {
        return this.mValue;
    }

    public void set(float f10) {
        if (f10 != this.mValue) {
            this.mValue = f10;
            notifyChange();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeFloat(this.mValue);
    }

    public ObservableFloat() {
    }

    public ObservableFloat(Observable... observableArr) {
        super(observableArr);
    }
}
