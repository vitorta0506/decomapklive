package n7;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.context.GCApplication;
/* loaded from: classes3.dex */
public class c {
    public static <T> boolean a(Context context, com.guochao.faceshow.aaspring.base.http.callback.c<T> cVar) {
        return b(context, cVar, true);
    }

    public static <T> boolean b(Context context, com.guochao.faceshow.aaspring.base.http.callback.c<T> cVar, boolean z10) {
        if (c()) {
            return false;
        }
        g7.a aVar = new g7.a(new Throwable(), -1);
        if (cVar != null) {
            cVar.onError(aVar);
            cVar.onCompleted();
            return true;
        }
        return true;
    }

    public static boolean c() {
        if (ContextCompat.checkSelfPermission(GCApplication.app(), "android.permission.ACCESS_NETWORK_STATE") == 0 && ContextCompat.checkSelfPermission(GCApplication.app(), "android.permission.ACCESS_WIFI_STATE") == 0) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) GCApplication.app().getSystemService("connectivity");
                if (connectivityManager == null) {
                    return true;
                }
                NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
                if (allNetworkInfo != null && allNetworkInfo.length > 0) {
                    for (NetworkInfo networkInfo : allNetworkInfo) {
                        if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                            return true;
                        }
                    }
                }
                return false;
            } catch (Exception unused) {
                return true;
            }
        }
        return true;
    }
}
