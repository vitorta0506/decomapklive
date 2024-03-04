package org.light.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes7.dex */
public class LightAIClassifier implements Parcelable {
    public static final Parcelable.Creator<LightAIClassifier> CREATOR = new Parcelable.Creator<LightAIClassifier>() { // from class: org.light.bean.LightAIClassifier.1
        @Override // android.os.Parcelable.Creator
        public LightAIClassifier createFromParcel(Parcel parcel) {
            return new LightAIClassifier(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public LightAIClassifier[] newArray(int i9) {
            return new LightAIClassifier[i9];
        }
    };
    List<String> classifiers;
    int traceId;

    public LightAIClassifier(int i9, List<String> list) {
        this.traceId = i9;
        this.classifiers = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<String> getClassifiers() {
        return this.classifiers;
    }

    public int getTraceId() {
        return this.traceId;
    }

    public void readFromParcel(Parcel parcel) {
        this.traceId = parcel.readInt();
        this.classifiers = parcel.createStringArrayList();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.traceId);
        parcel.writeStringList(this.classifiers);
    }

    protected LightAIClassifier(Parcel parcel) {
        this.traceId = parcel.readInt();
        this.classifiers = parcel.createStringArrayList();
    }
}
