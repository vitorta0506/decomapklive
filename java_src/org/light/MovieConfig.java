package org.light;

import android.os.RemoteException;
import org.light.service.InstanceId;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class MovieConfig extends Config {
    private static final String TAG = "MovieConfig";

    public static MovieConfig make() {
        ILightSDKServiceInterface iLightSDKServiceInterface = Config.lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            MovieConfig movieConfig = null;
            try {
                InstanceId movieConfigMake = iLightSDKServiceInterface.movieConfigMake();
                if (movieConfigMake != null) {
                    MovieConfig movieConfig2 = new MovieConfig();
                    try {
                        movieConfig2.setInstanceId(movieConfigMake.f56459id);
                        movieConfig = movieConfig2;
                    } catch (RemoteException e10) {
                        e = e10;
                        movieConfig = movieConfig2;
                        LightLogUtil.e(TAG, "RemoteException:\n" + e);
                        LightLogUtil.e(TAG, String.format("MovieConfig:%x init success", Integer.valueOf(System.identityHashCode(movieConfig))));
                        return movieConfig;
                    }
                }
            } catch (RemoteException e11) {
                e = e11;
            }
            LightLogUtil.e(TAG, String.format("MovieConfig:%x init success", Integer.valueOf(System.identityHashCode(movieConfig))));
            return movieConfig;
        }
        return nativeMake();
    }

    private static native MovieConfig nativeMake();
}
