package com.guochao.faceshow.aaspring.utils.location;

import android.content.Context;
import androidx.annotation.NonNull;
import com.guochao.faceshow.BaseApplication;
/* loaded from: classes3.dex */
public abstract class LocationHelper {
    public static final int ERROR_PROVIDER_NOT_ENABLED = 1005;
    public static final int ERROR_TIME_OUT = 1006;
    @NonNull
    Context mContext;

    /* loaded from: classes3.dex */
    public @interface LocationError {
    }

    /* loaded from: classes3.dex */
    public interface OnLocationChangedListener {
        void onError(@LocationError int i9, String str, FcLocation fcLocation);

        void onReceiveLocation(FcLocation fcLocation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocationHelper(Context context) {
        this.mContext = context == null ? BaseApplication.getInstance() : context.getApplicationContext();
    }

    public static LocationHelper create(Context context) {
        return new DefaultLocationHelper(context);
    }

    public void destroy() {
    }

    public Context getContext() {
        return this.mContext;
    }

    public abstract void requestLocation(LocationConfig locationConfig, OnLocationChangedListener onLocationChangedListener);
}
