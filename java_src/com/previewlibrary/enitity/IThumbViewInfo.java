package com.previewlibrary.enitity;

import android.graphics.Rect;
import android.os.Parcelable;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public interface IThumbViewInfo extends Parcelable {
    Rect getBounds();

    String getUrl();

    @Nullable
    String getVideoUrl();
}
