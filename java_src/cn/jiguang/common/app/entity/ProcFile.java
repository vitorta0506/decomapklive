package cn.jiguang.common.app.entity;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.File;
/* loaded from: classes.dex */
public class ProcFile extends File implements Parcelable {
    public static final Parcelable.Creator<ProcFile> CREATOR = new Parcelable.Creator<ProcFile>() { // from class: cn.jiguang.common.app.entity.ProcFile.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ProcFile createFromParcel(Parcel parcel) {
            return new ProcFile(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ProcFile[] newArray(int i9) {
            return new ProcFile[i9];
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public final String f2522b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ProcFile(Parcel parcel) {
        super(parcel.readString());
        this.f2522b = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.io.File
    public long length() {
        return this.f2522b.length();
    }

    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(getAbsolutePath());
        parcel.writeString(this.f2522b);
    }
}
