package com.tencent.rtmp.downloader.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.rtmp.TXPlayerAuthBuilder;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
/* loaded from: classes4.dex */
public class a extends TXVodDownloadDataSource implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.tencent.rtmp.downloader.a.a.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ a[] newArray(int i9) {
            return new a[i9];
        }
    };

    public a(int i9, String str, int i10, String str2, String str3) {
        super(i9, str, i10, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(int i9) {
        return i9 == 1 ? "FLU" : i9 == 2 ? "SD" : i9 == 3 ? "HD" : i9 == 4 ? "FHD" : i9 == 5 ? "2K" : i9 == 6 ? "4K" : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        this.overlayKey = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str) {
        this.overlayIv = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.appId);
        parcel.writeString(this.fileId);
        parcel.writeString(this.pSign);
        parcel.writeInt(this.quality);
        parcel.writeString(this.userName);
        if (TextUtils.isEmpty(this.pSign)) {
            return;
        }
        parcel.writeString(this.overlayKey);
        parcel.writeString(this.overlayIv);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(TXPlayerAuthBuilder tXPlayerAuthBuilder, int i9) {
        super(tXPlayerAuthBuilder, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static boolean a(int i9, String str) {
        char c10;
        str.hashCode();
        int i10 = 6;
        switch (str.hashCode()) {
            case 1625:
                if (str.equals("2K")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 1687:
                if (str.equals("4K")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case PushConstants.DOWN_LOAD_LARGE_ICON_ERROR /* 2300 */:
                if (str.equals("HD")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 2517:
                if (str.equals("OD")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 2641:
                if (str.equals("SD")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 69570:
                if (str.equals("FHD")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 69711:
                if (str.equals("FLU")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case 84178:
                if (str.equals("UNK")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case 693628:
                if (str.equals("原画")) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case 853726:
                if (str.equals("标清")) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            case 897060:
                if (str.equals("流畅")) {
                    c10 = '\n';
                    break;
                }
                c10 = 65535;
                break;
            case 1257005:
                if (str.equals("高清")) {
                    c10 = 11;
                    break;
                }
                c10 = 65535;
                break;
            case 21284245:
                if (str.equals("全高清")) {
                    c10 = '\f';
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                i10 = 5;
                break;
            case 1:
                break;
            case 2:
            case 11:
                i10 = 3;
                break;
            case 3:
            case '\b':
                i10 = 0;
                break;
            case 4:
            case '\t':
                i10 = 2;
                break;
            case 5:
            case '\f':
                i10 = 4;
                break;
            case 6:
            case '\n':
                i10 = 1;
                break;
            case 7:
                i10 = 1000;
                break;
            default:
                i10 = -1;
                break;
        }
        return i9 == i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(TXPlayerAuthBuilder tXPlayerAuthBuilder, String str) {
        super(tXPlayerAuthBuilder, str);
    }

    a(Parcel parcel) {
        this.appId = parcel.readInt();
        this.fileId = parcel.readString();
        this.pSign = parcel.readString();
        this.quality = parcel.readInt();
        this.userName = parcel.readString();
        if (TextUtils.isEmpty(this.pSign)) {
            return;
        }
        this.overlayKey = parcel.readString();
        this.overlayIv = parcel.readString();
    }
}
