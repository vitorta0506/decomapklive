package com.huawei.hms.common.webserverpic;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Locale;
/* loaded from: classes4.dex */
public class WebServerPic {
    public static final Parcelable.Creator<WebServerPic> CREATOR = new WebServerPicCreator();
    private final int height;
    private final Uri url;
    private final int width;

    public WebServerPic(Uri uri, int i9, int i10) throws IllegalArgumentException {
        this.url = uri;
        this.width = i9;
        this.height = i10;
        if (uri == null) {
            throw new IllegalArgumentException("url is not able to be null");
        }
        if (i9 < 0 || i10 < 0) {
            throw new IllegalArgumentException("width and height should be positive or 0");
        }
    }

    public final int getHeight() {
        return this.height;
    }

    public final Uri getUrl() {
        return this.url;
    }

    public final int getWidth() {
        return this.width;
    }

    public final String toString() {
        return String.format(Locale.ENGLISH, "Image %dx%d %s", Integer.valueOf(this.width), Integer.valueOf(this.height), this.url.toString());
    }

    public final void writeToParcel(Parcel parcel, int i9) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, getUrl(), i9, false);
        SafeParcelWriter.writeInt(parcel, 2, getWidth());
        SafeParcelWriter.writeInt(parcel, 3, getHeight());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public WebServerPic(Uri uri) throws IllegalArgumentException {
        this(uri, 0, 0);
    }
}
