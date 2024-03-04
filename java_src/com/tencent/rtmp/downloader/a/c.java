package com.tencent.rtmp.downloader.a;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.liteav.txcvodplayer.b.d;
import com.tencent.rtmp.downloader.TXVodDownloadMediaInfo;
/* loaded from: classes4.dex */
public class c extends TXVodDownloadMediaInfo implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    private static final String f33421a = c.class.getName();
    public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator<c>() { // from class: com.tencent.rtmp.downloader.a.c.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ c[] newArray(int i9) {
            return new c[i9];
        }
    };

    public c() {
    }

    public final void a(a aVar) {
        this.dataSource = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i9) {
        this.playableDuration = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(int i9) {
        this.size = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(int i9) {
        this.downloadSize = i9;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(int i9) {
        this.segments = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f(int i9) {
        this.downloadSegments = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(int i9) {
        this.tid = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h(int i9) {
        this.downloadState = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeParcelable(this.dataSource, 0);
        parcel.writeInt(this.duration);
        parcel.writeInt(this.size);
        parcel.writeInt(this.downloadSize);
        parcel.writeInt(this.segments);
        parcel.writeInt(this.downloadSegments);
        parcel.writeString(this.playPath);
        parcel.writeString(this.url);
        if (this.dataSource == null) {
            parcel.writeString(this.userName);
        }
        parcel.writeInt(this.downloadState);
        parcel.writeInt(this.playableDuration);
        parcel.writeInt(this.speed);
    }

    protected c(Parcel parcel) {
        this.dataSource = (a) parcel.readParcelable(a.class.getClassLoader());
        this.duration = parcel.readInt();
        this.size = parcel.readInt();
        this.downloadSize = parcel.readInt();
        this.segments = parcel.readInt();
        this.downloadSegments = parcel.readInt();
        this.playPath = parcel.readString();
        this.url = parcel.readString();
        if (this.dataSource == null) {
            this.userName = parcel.readString();
        }
        this.downloadState = parcel.readInt();
        this.playableDuration = parcel.readInt();
        this.speed = parcel.readInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i9) {
        this.duration = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str) {
        this.url = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(String str) {
        this.userName = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        this.playPath = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(d dVar) {
        this.netApi = dVar;
    }
}
