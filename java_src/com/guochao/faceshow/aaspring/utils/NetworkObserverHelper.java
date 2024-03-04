package com.guochao.faceshow.aaspring.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import com.guochao.faceshow.utils.HandlerGetter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class NetworkObserverHelper {
    private static NetworkObserverHelper sNetworkObserverHelper;
    Context mContext;
    NetworkReceiver mNetworkReceiver;
    protected List<OnNetworkChangeCallBack> mOnNetworkChangeCallBacks;
    boolean mRegisted = false;

    /* loaded from: classes3.dex */
    public static class NetworkObserverHelperV24 extends NetworkObserverHelper {
        NetworkObserverHelperV24(Context context) {
            super(context);
        }

        @Override // com.guochao.faceshow.aaspring.utils.NetworkObserverHelper
        protected void init() {
            ((ConnectivityManager) this.mContext.getSystemService("connectivity")).requestNetwork(new NetworkRequest.Builder().build(), new ConnectivityManager.NetworkCallback() { // from class: com.guochao.faceshow.aaspring.utils.NetworkObserverHelper.NetworkObserverHelperV24.1
                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(Network network) {
                    super.onAvailable(network);
                    NetworkObserverHelperV24 networkObserverHelperV24 = NetworkObserverHelperV24.this;
                    NetworkObserverHelper.checkCurrentNetwork(networkObserverHelperV24.mContext, networkObserverHelperV24.mOnNetworkChangeCallBacks);
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onLost(Network network) {
                    super.onLost(network);
                    NetworkObserverHelperV24 networkObserverHelperV24 = NetworkObserverHelperV24.this;
                    NetworkObserverHelper.checkCurrentNetwork(networkObserverHelperV24.mContext, networkObserverHelperV24.mOnNetworkChangeCallBacks);
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onUnavailable() {
                    super.onUnavailable();
                    NetworkObserverHelperV24 networkObserverHelperV24 = NetworkObserverHelperV24.this;
                    NetworkObserverHelper.checkCurrentNetwork(networkObserverHelperV24.mContext, networkObserverHelperV24.mOnNetworkChangeCallBacks);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class NetworkReceiver extends BroadcastReceiver {
        private NetworkReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NetworkObserverHelper.checkCurrentNetwork(context, NetworkObserverHelper.this.mOnNetworkChangeCallBacks);
        }
    }

    /* loaded from: classes3.dex */
    public interface OnNetworkChangeCallBack {
        public static final int TYPE_MOBILE = 1;
        public static final int TYPE_NONE = 0;
        public static final int TYPE_WIFI = 2;

        void onChange(int i9);
    }

    NetworkObserverHelper(Context context) {
        this.mContext = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkCurrentNetwork(final Context context, final List<OnNetworkChangeCallBack> list) {
        if (list == null) {
            return;
        }
        HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.NetworkObserverHelper.1
            @Override // java.lang.Runnable
            public void run() {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                    int type = activeNetworkInfo.getType();
                    if (type == 0) {
                        for (OnNetworkChangeCallBack onNetworkChangeCallBack : list) {
                            if (onNetworkChangeCallBack != null) {
                                onNetworkChangeCallBack.onChange(1);
                            }
                        }
                        return;
                    } else if (type != 1) {
                        return;
                    } else {
                        for (OnNetworkChangeCallBack onNetworkChangeCallBack2 : list) {
                            if (onNetworkChangeCallBack2 != null) {
                                onNetworkChangeCallBack2.onChange(2);
                            }
                        }
                        return;
                    }
                }
                for (OnNetworkChangeCallBack onNetworkChangeCallBack3 : list) {
                    if (onNetworkChangeCallBack3 != null) {
                        onNetworkChangeCallBack3.onChange(0);
                    }
                }
            }
        });
    }

    public static NetworkObserverHelper create(Context context) {
        NetworkObserverHelper networkObserverHelper;
        synchronized (NetworkObserverHelper.class) {
            if (sNetworkObserverHelper == null) {
                if (Build.VERSION.SDK_INT >= 24) {
                    sNetworkObserverHelper = new NetworkObserverHelperV24(context);
                } else {
                    sNetworkObserverHelper = new NetworkObserverHelper(context);
                }
                sNetworkObserverHelper.init();
            }
            networkObserverHelper = sNetworkObserverHelper;
        }
        return networkObserverHelper;
    }

    public void destroy(OnNetworkChangeCallBack onNetworkChangeCallBack) {
        List<OnNetworkChangeCallBack> list = this.mOnNetworkChangeCallBacks;
        if (list == null) {
            return;
        }
        list.remove(onNetworkChangeCallBack);
    }

    protected void init() {
        this.mNetworkReceiver = new NetworkReceiver();
        this.mContext.registerReceiver(this.mNetworkReceiver, new IntentFilter("noConnectivity"));
        this.mRegisted = true;
    }

    public void register(OnNetworkChangeCallBack onNetworkChangeCallBack) {
        if (this.mOnNetworkChangeCallBacks == null) {
            this.mOnNetworkChangeCallBacks = new ArrayList();
        }
        if (this.mOnNetworkChangeCallBacks.contains(onNetworkChangeCallBack)) {
            return;
        }
        this.mOnNetworkChangeCallBacks.add(onNetworkChangeCallBack);
    }
}
