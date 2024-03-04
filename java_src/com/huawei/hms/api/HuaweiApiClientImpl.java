package com.huawei.hms.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiClient;
import com.huawei.hms.common.api.ConnectionPostProcessor;
import com.huawei.hms.common.internal.AutoLifecycleFragment;
import com.huawei.hms.core.aidl.CodecLookup;
import com.huawei.hms.core.aidl.DataBuffer;
import com.huawei.hms.core.aidl.IAIDLCallback;
import com.huawei.hms.core.aidl.IAIDLInvoke;
import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.core.aidl.MessageCodec;
import com.huawei.hms.core.aidl.RequestHeader;
import com.huawei.hms.core.aidl.ResponseHeader;
import com.huawei.hms.support.api.PendingResultImpl;
import com.huawei.hms.support.api.ResolveResult;
import com.huawei.hms.support.api.client.ApiClient;
import com.huawei.hms.support.api.client.BundleResult;
import com.huawei.hms.support.api.client.InnerApiClient;
import com.huawei.hms.support.api.client.PendingResult;
import com.huawei.hms.support.api.client.ResultCallback;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.client.SubAppInfo;
import com.huawei.hms.support.api.core.ConnectService;
import com.huawei.hms.support.api.entity.auth.PermissionInfo;
import com.huawei.hms.support.api.entity.auth.Scope;
import com.huawei.hms.support.api.entity.core.CheckConnectInfo;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.api.entity.core.ConnectInfo;
import com.huawei.hms.support.api.entity.core.ConnectResp;
import com.huawei.hms.support.api.entity.core.DisconnectInfo;
import com.huawei.hms.support.api.entity.core.DisconnectResp;
import com.huawei.hms.support.api.entity.core.JosGetNoticeResp;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.UIUtil;
import com.huawei.hms.utils.Util;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes4.dex */
public class HuaweiApiClientImpl extends HuaweiApiClient implements InnerApiClient, ServiceConnection {
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final int SIGN_IN_MODE_OPTIONAL = 2;
    public static final int SIGN_IN_MODE_REQUIRED = 1;

    /* renamed from: b  reason: collision with root package name */
    private final Context f27212b;

    /* renamed from: c  reason: collision with root package name */
    private final String f27213c;

    /* renamed from: d  reason: collision with root package name */
    private String f27214d;

    /* renamed from: e  reason: collision with root package name */
    private String f27215e;

    /* renamed from: f  reason: collision with root package name */
    private volatile IAIDLInvoke f27216f;

    /* renamed from: g  reason: collision with root package name */
    private String f27217g;

    /* renamed from: h  reason: collision with root package name */
    private WeakReference<Activity> f27218h;

    /* renamed from: i  reason: collision with root package name */
    private WeakReference<Activity> f27219i;

    /* renamed from: l  reason: collision with root package name */
    private List<Scope> f27222l;

    /* renamed from: m  reason: collision with root package name */
    private List<PermissionInfo> f27223m;

    /* renamed from: n  reason: collision with root package name */
    private Map<Api<?>, Api.ApiOptions> f27224n;

    /* renamed from: o  reason: collision with root package name */
    private SubAppInfo f27225o;

    /* renamed from: s  reason: collision with root package name */
    private final ReentrantLock f27229s;

    /* renamed from: t  reason: collision with root package name */
    private final Condition f27230t;

    /* renamed from: u  reason: collision with root package name */
    private ConnectionResult f27231u;

    /* renamed from: v  reason: collision with root package name */
    private HuaweiApiClient.ConnectionCallbacks f27232v;

    /* renamed from: w  reason: collision with root package name */
    private HuaweiApiClient.OnConnectionFailedListener f27233w;

    /* renamed from: x  reason: collision with root package name */
    private Handler f27234x;

    /* renamed from: y  reason: collision with root package name */
    private Handler f27235y;

    /* renamed from: z  reason: collision with root package name */
    private static final Object f27210z = new Object();
    private static final Object A = new Object();

    /* renamed from: a  reason: collision with root package name */
    private int f27211a = -1;

    /* renamed from: j  reason: collision with root package name */
    private boolean f27220j = false;

    /* renamed from: k  reason: collision with root package name */
    private AtomicInteger f27221k = new AtomicInteger(1);

    /* renamed from: p  reason: collision with root package name */
    private long f27226p = 0;

    /* renamed from: q  reason: collision with root package name */
    private int f27227q = 0;

    /* renamed from: r  reason: collision with root package name */
    private final Object f27228r = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message == null || message.what != 2) {
                return false;
            }
            HMSLog.e("HuaweiApiClientImpl", "In connect, bind core service time out");
            if (HuaweiApiClientImpl.this.f27221k.get() == 5) {
                HuaweiApiClientImpl.this.c(1);
                HuaweiApiClientImpl.this.b();
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements Handler.Callback {
        b() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message == null || message.what != 3) {
                return false;
            }
            HMSLog.e("HuaweiApiClientImpl", "In connect, process time out");
            if (HuaweiApiClientImpl.this.f27221k.get() == 2) {
                HuaweiApiClientImpl.this.c(1);
                HuaweiApiClientImpl.this.b();
            }
            return true;
        }
    }

    /* loaded from: classes4.dex */
    class c extends IAIDLCallback.Stub {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultCallback f27238a;

        c(HuaweiApiClientImpl huaweiApiClientImpl, ResultCallback resultCallback) {
            this.f27238a = resultCallback;
        }

        @Override // com.huawei.hms.core.aidl.IAIDLCallback
        public void call(DataBuffer dataBuffer) {
            if (dataBuffer != null) {
                MessageCodec find = CodecLookup.find(dataBuffer.getProtocol());
                ResponseHeader responseHeader = new ResponseHeader();
                find.decode(dataBuffer.header, responseHeader);
                BundleResult bundleResult = new BundleResult(responseHeader.getStatusCode(), dataBuffer.getBody());
                HMSLog.i("HuaweiApiClientImpl", "Exit asyncRequest onResult");
                this.f27238a.onResult(bundleResult);
                return;
            }
            HMSLog.i("HuaweiApiClientImpl", "Exit asyncRequest onResult -1");
            this.f27238a.onResult(new BundleResult(-1, null));
        }
    }

    /* loaded from: classes4.dex */
    static class d extends PendingResultImpl<Status, IMessageEntity> {
        public d(ApiClient apiClient, String str, IMessageEntity iMessageEntity) {
            super(apiClient, str, iMessageEntity);
        }

        @Override // com.huawei.hms.support.api.PendingResultImpl
        public Status onComplete(IMessageEntity iMessageEntity) {
            return new Status(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class e implements ResultCallback<ResolveResult<ConnectResp>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ResolveResult f27240a;

            a(ResolveResult resolveResult) {
                this.f27240a = resolveResult;
            }

            @Override // java.lang.Runnable
            public void run() {
                HuaweiApiClientImpl.this.a(this.f27240a);
            }
        }

        private e() {
        }

        @Override // com.huawei.hms.support.api.client.ResultCallback
        /* renamed from: a */
        public void onResult(ResolveResult<ConnectResp> resolveResult) {
            new Handler(Looper.getMainLooper()).post(new a(resolveResult));
        }

        /* synthetic */ e(HuaweiApiClientImpl huaweiApiClientImpl, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class f implements ResultCallback<ResolveResult<DisconnectResp>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ResolveResult f27243a;

            a(ResolveResult resolveResult) {
                this.f27243a = resolveResult;
            }

            @Override // java.lang.Runnable
            public void run() {
                HuaweiApiClientImpl.this.b(this.f27243a);
            }
        }

        private f() {
        }

        @Override // com.huawei.hms.support.api.client.ResultCallback
        /* renamed from: a */
        public void onResult(ResolveResult<DisconnectResp> resolveResult) {
            new Handler(Looper.getMainLooper()).post(new a(resolveResult));
        }

        /* synthetic */ f(HuaweiApiClientImpl huaweiApiClientImpl, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class g implements ResultCallback<ResolveResult<JosGetNoticeResp>> {
        private g() {
        }

        @Override // com.huawei.hms.support.api.client.ResultCallback
        /* renamed from: a */
        public void onResult(ResolveResult<JosGetNoticeResp> resolveResult) {
            JosGetNoticeResp value;
            Intent noticeIntent;
            if (resolveResult == null || !resolveResult.getStatus().isSuccess() || (noticeIntent = (value = resolveResult.getValue()).getNoticeIntent()) == null || value.getStatusCode() != 0) {
                return;
            }
            HMSLog.i("HuaweiApiClientImpl", "get notice has intent.");
            Activity validActivity = Util.getValidActivity((Activity) HuaweiApiClientImpl.this.f27218h.get(), HuaweiApiClientImpl.this.getTopActivity());
            if (validActivity != null) {
                HuaweiApiClientImpl.this.f27220j = true;
                validActivity.startActivity(noticeIntent);
                return;
            }
            HMSLog.e("HuaweiApiClientImpl", "showNotice no valid activity!");
        }

        /* synthetic */ g(HuaweiApiClientImpl huaweiApiClientImpl, a aVar) {
            this();
        }
    }

    public HuaweiApiClientImpl(Context context) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f27229s = reentrantLock;
        this.f27230t = reentrantLock.newCondition();
        this.f27234x = null;
        this.f27235y = null;
        this.f27212b = context;
        String appId = Util.getAppId(context);
        this.f27213c = appId;
        this.f27214d = appId;
        this.f27215e = Util.getCpId(context);
    }

    private DisconnectInfo d() {
        ArrayList arrayList = new ArrayList();
        Map<Api<?>, Api.ApiOptions> map = this.f27224n;
        if (map != null) {
            for (Api<?> api : map.keySet()) {
                arrayList.add(api.getApiName());
            }
        }
        return new DisconnectInfo(this.f27222l, arrayList);
    }

    private int e() {
        int hmsVersion = Util.getHmsVersion(this.f27212b);
        if (hmsVersion == 0 || hmsVersion < 20503000) {
            int f10 = f();
            if (g()) {
                if (f10 < 20503000) {
                    return 20503000;
                }
                return f10;
            } else if (f10 < 20600000) {
                return 20600000;
            } else {
                return f10;
            }
        }
        return hmsVersion;
    }

    private int f() {
        Integer num;
        int intValue;
        Map<Api<?>, Api.ApiOptions> apiMap = getApiMap();
        int i9 = 0;
        if (apiMap == null) {
            return 0;
        }
        for (Api<?> api : apiMap.keySet()) {
            String apiName = api.getApiName();
            if (!TextUtils.isEmpty(apiName) && (num = HuaweiApiAvailability.getApiMap().get(apiName)) != null && (intValue = num.intValue()) > i9) {
                i9 = intValue;
            }
        }
        return i9;
    }

    private boolean g() {
        Map<Api<?>, Api.ApiOptions> map = this.f27224n;
        if (map != null) {
            for (Api<?> api : map.keySet()) {
                if (HuaweiApiAvailability.HMS_API_NAME_GAME.equals(api.getApiName())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private void h() {
        Handler handler = this.f27234x;
        if (handler != null) {
            handler.removeMessages(2);
        } else {
            this.f27234x = new Handler(Looper.getMainLooper(), new a());
        }
        this.f27234x.sendEmptyMessageDelayed(2, 5000L);
    }

    private void i() {
        synchronized (A) {
            Handler handler = this.f27235y;
            if (handler != null) {
                handler.removeMessages(3);
            } else {
                this.f27235y = new Handler(Looper.getMainLooper(), new b());
            }
            boolean sendEmptyMessageDelayed = this.f27235y.sendEmptyMessageDelayed(3, 3000L);
            HMSLog.d("HuaweiApiClientImpl", "sendEmptyMessageDelayed for onConnectionResult 3 seconds. the result is : " + sendEmptyMessageDelayed);
        }
    }

    private void j() {
        HMSLog.i("HuaweiApiClientImpl", "Enter sendConnectApiServceRequest.");
        ConnectService.connect(this, c()).setResultCallback(new e(this, null));
    }

    private void k() {
        ConnectService.disconnect(this, d()).setResultCallback(new f(this, null));
    }

    private void l() {
        HMSLog.i("HuaweiApiClientImpl", "Enter sendForceConnectApiServceRequest.");
        ConnectService.forceConnect(this, c()).setResultCallback(new e(this, null));
    }

    private void m() {
        if (this.f27220j) {
            HMSLog.i("HuaweiApiClientImpl", "Connect notice has been shown.");
        } else if (HuaweiApiAvailability.getInstance().isHuaweiMobileNoticeAvailable(this.f27212b) == 0) {
            ConnectService.getNotice(this, 0, "6.5.0.300").setResultCallback(new g(this, null));
        }
    }

    private void n() {
        Util.unBindServiceCatchException(this.f27212b, this);
        this.f27216f = null;
    }

    public int asyncRequest(Bundle bundle, String str, int i9, ResultCallback<BundleResult> resultCallback) {
        HMSLog.i("HuaweiApiClientImpl", "Enter asyncRequest.");
        if (resultCallback != null && str != null && bundle != null) {
            if (!innerIsConnected()) {
                HMSLog.e("HuaweiApiClientImpl", "client is unConnect.");
                return CommonCode.ErrorCode.CLIENT_API_INVALID;
            }
            DataBuffer dataBuffer = new DataBuffer(str, i9);
            MessageCodec find = CodecLookup.find(dataBuffer.getProtocol());
            dataBuffer.addBody(bundle);
            RequestHeader requestHeader = new RequestHeader(getAppID(), getPackageName(), 60500300, getSessionId());
            requestHeader.setApiNameList(getApiNameList());
            dataBuffer.header = find.encode(requestHeader, new Bundle());
            try {
                getService().asyncCall(dataBuffer, new c(this, resultCallback));
                return 0;
            } catch (RemoteException e10) {
                HMSLog.e("HuaweiApiClientImpl", "remote exception:" + e10.getMessage());
                return CommonCode.ErrorCode.INTERNAL_ERROR;
            }
        }
        HMSLog.e("HuaweiApiClientImpl", "arguments is invalid.");
        return CommonCode.ErrorCode.ARGUMENTS_INVALID;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void checkUpdate(Activity activity, CheckUpdatelistener checkUpdatelistener) {
        if (checkUpdatelistener == null) {
            HMSLog.e("HuaweiApiClientImpl", "listener is null!");
        } else {
            checkUpdatelistener.onResult(-1);
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void connect(Activity activity) {
        HMSLog.i("HuaweiApiClientImpl", "====== HMSSDK version: 60500300 ======");
        int i9 = this.f27221k.get();
        HMSLog.i("HuaweiApiClientImpl", "Enter connect, Connection Status: " + i9);
        if (i9 == 3 || i9 == 5 || i9 == 2 || i9 == 4) {
            return;
        }
        if (activity != null) {
            this.f27218h = new WeakReference<>(activity);
            this.f27219i = new WeakReference<>(activity);
        }
        this.f27214d = TextUtils.isEmpty(this.f27213c) ? Util.getAppId(this.f27212b) : this.f27213c;
        int e10 = e();
        HMSLog.i("HuaweiApiClientImpl", "connect minVersion:" + e10);
        HuaweiApiAvailability.setServicesVersionCode(e10);
        int isHuaweiMobileServicesAvailable = HuaweiMobileServicesUtil.isHuaweiMobileServicesAvailable(this.f27212b, e10);
        HMSLog.i("HuaweiApiClientImpl", "In connect, isHuaweiMobileServicesAvailable result: " + isHuaweiMobileServicesAvailable);
        this.f27227q = HMSPackageManager.getInstance(this.f27212b).getHmsMultiServiceVersion();
        if (isHuaweiMobileServicesAvailable == 0) {
            c(5);
            if (this.f27216f == null) {
                a();
                return;
            }
            c(2);
            j();
            i();
        } else if (this.f27233w != null) {
            b(isHuaweiMobileServicesAvailable);
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void connectForeground() {
        HMSLog.i("HuaweiApiClientImpl", "====== HMSSDK version: 60500300 ======");
        int i9 = this.f27221k.get();
        HMSLog.i("HuaweiApiClientImpl", "Enter forceConnect, Connection Status: " + i9);
        if (i9 == 3 || i9 == 5 || i9 == 2 || i9 == 4) {
            return;
        }
        this.f27214d = TextUtils.isEmpty(this.f27213c) ? Util.getAppId(this.f27212b) : this.f27213c;
        l();
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void disableLifeCycleManagement(Activity activity) {
        if (this.f27211a >= 0) {
            AutoLifecycleFragment.getInstance(activity).stopAutoManage(this.f27211a);
            return;
        }
        throw new IllegalStateException("disableLifeCycleManagement failed");
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public PendingResult<Status> discardAndReconnect() {
        return new d(this, null, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void disconnect() {
        int i9 = this.f27221k.get();
        HMSLog.i("HuaweiApiClientImpl", "Enter disconnect, Connection Status: " + i9);
        if (i9 == 2) {
            c(4);
        } else if (i9 == 3) {
            c(4);
            k();
        } else if (i9 != 5) {
        } else {
            a(2);
            c(4);
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public Map<Api<?>, Api.ApiOptions> getApiMap() {
        return this.f27224n;
    }

    @Override // com.huawei.hms.support.api.client.AidlApiClient
    public List<String> getApiNameList() {
        ArrayList arrayList = new ArrayList();
        Map<Api<?>, Api.ApiOptions> map = this.f27224n;
        if (map != null) {
            for (Api<?> api : map.keySet()) {
                arrayList.add(api.getApiName());
            }
        }
        return arrayList;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getAppID() {
        return this.f27214d;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public ConnectionResult getConnectionResult(Api<?> api) {
        if (isConnected()) {
            this.f27231u = null;
            return new ConnectionResult(0, (PendingIntent) null);
        }
        ConnectionResult connectionResult = this.f27231u;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, (PendingIntent) null);
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public Context getContext() {
        return this.f27212b;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getCpID() {
        return this.f27215e;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getPackageName() {
        return this.f27212b.getPackageName();
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public List<PermissionInfo> getPermissionInfos() {
        return this.f27223m;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public List<Scope> getScopes() {
        return this.f27222l;
    }

    @Override // com.huawei.hms.support.api.client.AidlApiClient
    public IAIDLInvoke getService() {
        return this.f27216f;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getSessionId() {
        return this.f27217g;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public final SubAppInfo getSubAppInfo() {
        return this.f27225o;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public Activity getTopActivity() {
        WeakReference<Activity> weakReference = this.f27219i;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getTransportName() {
        return IPCTransport.class.getName();
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean hasConnectedApi(Api<?> api) {
        return isConnected();
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean hasConnectionFailureListener(HuaweiApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Checker.checkNonNull(onConnectionFailedListener, "onConnectionFailedListener should not be null");
        synchronized (this.f27228r) {
            return this.f27233w == onConnectionFailedListener;
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean hasConnectionSuccessListener(HuaweiApiClient.ConnectionCallbacks connectionCallbacks) {
        Checker.checkNonNull(connectionCallbacks, "connectionCallbacksListener should not be null");
        synchronized (this.f27228r) {
            return this.f27232v == connectionCallbacks;
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public ConnectionResult holdUpConnect() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            this.f27229s.lock();
            try {
                connect((Activity) null);
                while (isConnecting()) {
                    this.f27230t.await();
                }
                if (isConnected()) {
                    this.f27231u = null;
                    return new ConnectionResult(0, (PendingIntent) null);
                }
                ConnectionResult connectionResult = this.f27231u;
                return connectionResult != null ? connectionResult : new ConnectionResult(13, (PendingIntent) null);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, (PendingIntent) null);
            } finally {
                this.f27229s.unlock();
            }
        }
        throw new IllegalStateException("blockingConnect must not be called on the UI thread");
    }

    @Override // com.huawei.hms.support.api.client.InnerApiClient
    public boolean innerIsConnected() {
        return this.f27221k.get() == 3 || this.f27221k.get() == 4;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient, com.huawei.hms.support.api.client.ApiClient
    public boolean isConnected() {
        if (this.f27227q == 0) {
            this.f27227q = HMSPackageManager.getInstance(this.f27212b).getHmsMultiServiceVersion();
        }
        if (this.f27227q < 20504000) {
            long currentTimeMillis = System.currentTimeMillis() - this.f27226p;
            if (currentTimeMillis > 0 && currentTimeMillis < 300000) {
                return innerIsConnected();
            }
            if (innerIsConnected()) {
                Status status = ConnectService.checkconnect(this, new CheckConnectInfo()).awaitOnAnyThread(2000L, TimeUnit.MILLISECONDS).getStatus();
                if (status.isSuccess()) {
                    this.f27226p = System.currentTimeMillis();
                    return true;
                }
                int statusCode = status.getStatusCode();
                HMSLog.i("HuaweiApiClientImpl", "isConnected is false, statuscode:" + statusCode);
                if (statusCode != 907135004) {
                    n();
                    c(1);
                    this.f27226p = System.currentTimeMillis();
                    return false;
                }
                return false;
            }
            return false;
        }
        return innerIsConnected();
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean isConnecting() {
        int i9 = this.f27221k.get();
        return i9 == 2 || i9 == 5;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void onPause(Activity activity) {
        HMSLog.i("HuaweiApiClientImpl", "onPause");
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void onResume(Activity activity) {
        if (activity != null) {
            HMSLog.i("HuaweiApiClientImpl", "onResume");
            this.f27219i = new WeakReference<>(activity);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HMSLog.i("HuaweiApiClientImpl", "HuaweiApiClientImpl Enter onServiceConnected.");
        a(2);
        this.f27216f = IAIDLInvoke.Stub.asInterface(iBinder);
        if (this.f27216f == null) {
            HMSLog.e("HuaweiApiClientImpl", "In onServiceConnected, mCoreService must not be null.");
            n();
            c(1);
            if (this.f27233w != null) {
                PendingIntent pendingIntent = null;
                WeakReference<Activity> weakReference = this.f27218h;
                if (weakReference != null && weakReference.get() != null) {
                    pendingIntent = HuaweiApiAvailability.getInstance().getResolveErrorPendingIntent(this.f27218h.get(), 10);
                }
                ConnectionResult connectionResult = new ConnectionResult(10, pendingIntent);
                this.f27233w.onConnectionFailed(connectionResult);
                this.f27231u = connectionResult;
            }
        } else if (this.f27221k.get() == 5) {
            c(2);
            j();
            i();
        } else if (this.f27221k.get() != 3) {
            n();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        HMSLog.i("HuaweiApiClientImpl", "Enter onServiceDisconnected.");
        this.f27216f = null;
        c(1);
        HuaweiApiClient.ConnectionCallbacks connectionCallbacks = this.f27232v;
        if (connectionCallbacks != null) {
            connectionCallbacks.onConnectionSuspended(1);
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void print(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void reconnect() {
        disconnect();
        connect((Activity) null);
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void removeConnectionFailureListener(HuaweiApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Checker.checkNonNull(onConnectionFailedListener, "onConnectionFailedListener should not be null");
        synchronized (this.f27228r) {
            if (this.f27233w != onConnectionFailedListener) {
                HMSLog.w("HuaweiApiClientImpl", "unregisterConnectionFailedListener: this onConnectionFailedListener has not been registered");
            } else {
                this.f27233w = null;
            }
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void removeConnectionSuccessListener(HuaweiApiClient.ConnectionCallbacks connectionCallbacks) {
        Checker.checkNonNull(connectionCallbacks, "connectionCallbacksListener should not be null");
        synchronized (this.f27228r) {
            if (this.f27232v != connectionCallbacks) {
                HMSLog.w("HuaweiApiClientImpl", "unregisterConnectionCallback: this connectionCallbacksListener has not been registered");
            } else {
                this.f27232v = null;
            }
        }
    }

    public void setApiMap(Map<Api<?>, Api.ApiOptions> map) {
        this.f27224n = map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setAutoLifecycleClientId(int i9) {
        this.f27211a = i9;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void setConnectionCallbacks(HuaweiApiClient.ConnectionCallbacks connectionCallbacks) {
        this.f27232v = connectionCallbacks;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void setConnectionFailedListener(HuaweiApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f27233w = onConnectionFailedListener;
    }

    public void setHasShowNotice(boolean z10) {
        this.f27220j = z10;
    }

    public void setPermissionInfos(List<PermissionInfo> list) {
        this.f27223m = list;
    }

    public void setScopes(List<Scope> list) {
        this.f27222l = list;
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public boolean setSubAppInfo(SubAppInfo subAppInfo) {
        HMSLog.i("HuaweiApiClientImpl", "Enter setSubAppInfo");
        if (subAppInfo == null) {
            HMSLog.e("HuaweiApiClientImpl", "subAppInfo is null");
            return false;
        }
        String subAppID = subAppInfo.getSubAppID();
        if (TextUtils.isEmpty(subAppID)) {
            HMSLog.e("HuaweiApiClientImpl", "subAppId is empty");
            return false;
        }
        if (subAppID.equals(TextUtils.isEmpty(this.f27213c) ? Util.getAppId(this.f27212b) : this.f27213c)) {
            HMSLog.e("HuaweiApiClientImpl", "subAppId is host appid");
            return false;
        }
        this.f27225o = new SubAppInfo(subAppInfo);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i9) {
        this.f27221k.set(i9);
        if (i9 == 1 || i9 == 3 || i9 == 2) {
            this.f27229s.lock();
            try {
                this.f27230t.signalAll();
            } finally {
                this.f27229s.unlock();
            }
        }
    }

    private void b(int i9) {
        PendingIntent pendingIntent;
        WeakReference<Activity> weakReference = this.f27218h;
        if (weakReference == null || weakReference.get() == null) {
            pendingIntent = null;
        } else {
            pendingIntent = HuaweiApiAvailability.getInstance().getResolveErrorPendingIntent(this.f27218h.get(), i9);
            HMSLog.i("HuaweiApiClientImpl", "connect 2.0 fail: " + i9);
        }
        ConnectionResult connectionResult = new ConnectionResult(i9, pendingIntent);
        this.f27233w.onConnectionFailed(connectionResult);
        this.f27231u = connectionResult;
    }

    private void a() {
        Intent intent = new Intent(HMSPackageManager.getInstance(this.f27212b).getServiceAction());
        HMSPackageManager.getInstance(this.f27212b).refreshForMultiService();
        intent.setPackage(HMSPackageManager.getInstance(this.f27212b).getHMSPackageNameForMultiService());
        synchronized (f27210z) {
            if (this.f27212b.bindService(intent, this, 1)) {
                h();
                return;
            }
            c(1);
            HMSLog.e("HuaweiApiClientImpl", "In connect, bind core service fail");
            b();
        }
    }

    private ConnectInfo c() {
        String packageSignature = new PackageManagerHelper(this.f27212b).getPackageSignature(this.f27212b.getPackageName());
        if (packageSignature == null) {
            packageSignature = "";
        }
        SubAppInfo subAppInfo = this.f27225o;
        return new ConnectInfo(getApiNameList(), this.f27222l, packageSignature, subAppInfo == null ? null : subAppInfo.getSubAppID());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        n();
        if (this.f27233w != null) {
            int i9 = UIUtil.isBackground(this.f27212b) ? 7 : 6;
            PendingIntent pendingIntent = null;
            WeakReference<Activity> weakReference = this.f27218h;
            if (weakReference != null && weakReference.get() != null) {
                pendingIntent = HuaweiApiAvailability.getInstance().getResolveErrorPendingIntent(this.f27218h.get(), i9);
            }
            ConnectionResult connectionResult = new ConnectionResult(i9, pendingIntent);
            this.f27233w.onConnectionFailed(connectionResult);
            this.f27231u = connectionResult;
        }
    }

    private void c(ResolveResult<ConnectResp> resolveResult) {
        if (resolveResult.getValue() != null) {
            ProtocolNegotiate.getInstance().negotiate(resolveResult.getValue().protocolVersion);
        }
        c(3);
        this.f27231u = null;
        HuaweiApiClient.ConnectionCallbacks connectionCallbacks = this.f27232v;
        if (connectionCallbacks != null) {
            connectionCallbacks.onConnected();
        }
        if (this.f27218h != null) {
            m();
        }
        for (Map.Entry<Api<?>, Api.ApiOptions> entry : getApiMap().entrySet()) {
            if (entry.getKey().getmConnetctPostList() != null && !entry.getKey().getmConnetctPostList().isEmpty()) {
                HMSLog.i("HuaweiApiClientImpl", "Enter onConnectionResult, get the ConnetctPostList ");
                for (ConnectionPostProcessor connectionPostProcessor : entry.getKey().getmConnetctPostList()) {
                    HMSLog.i("HuaweiApiClientImpl", "Enter onConnectionResult, processor.run");
                    connectionPostProcessor.run(this, this.f27218h);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ResolveResult<DisconnectResp> resolveResult) {
        HMSLog.i("HuaweiApiClientImpl", "Enter onDisconnectionResult, disconnect from server result: " + resolveResult.getStatus().getStatusCode());
        n();
        c(1);
    }

    private void a(int i9) {
        if (i9 == 2) {
            synchronized (f27210z) {
                Handler handler = this.f27234x;
                if (handler != null) {
                    handler.removeMessages(i9);
                    this.f27234x = null;
                }
            }
        }
        if (i9 == 3) {
            synchronized (A) {
                Handler handler2 = this.f27235y;
                if (handler2 != null) {
                    handler2.removeMessages(i9);
                    this.f27235y = null;
                }
            }
        }
        synchronized (f27210z) {
            Handler handler3 = this.f27234x;
            if (handler3 != null) {
                handler3.removeMessages(2);
                this.f27234x = null;
            }
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public ConnectionResult holdUpConnect(long j10, TimeUnit timeUnit) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            this.f27229s.lock();
            try {
                connect((Activity) null);
                long nanos = timeUnit.toNanos(j10);
                while (isConnecting()) {
                    if (nanos <= 0) {
                        disconnect();
                        return new ConnectionResult(14, (PendingIntent) null);
                    }
                    nanos = this.f27230t.awaitNanos(nanos);
                }
                if (isConnected()) {
                    this.f27231u = null;
                    return new ConnectionResult(0, (PendingIntent) null);
                }
                ConnectionResult connectionResult = this.f27231u;
                return connectionResult != null ? connectionResult : new ConnectionResult(13, (PendingIntent) null);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, (PendingIntent) null);
            } finally {
                this.f27229s.unlock();
            }
        }
        throw new IllegalStateException("blockingConnect must not be called on the UI thread");
    }

    @Override // com.huawei.hms.api.HuaweiApiClient
    public void connect(int i9) {
        connect((Activity) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ResolveResult<ConnectResp> resolveResult) {
        HMSLog.i("HuaweiApiClientImpl", "Enter onConnectionResult");
        if (this.f27216f != null && this.f27221k.get() == 2) {
            a(3);
            ConnectResp value = resolveResult.getValue();
            if (value != null) {
                this.f27217g = value.sessionId;
            }
            SubAppInfo subAppInfo = this.f27225o;
            PendingIntent pendingIntent = null;
            String subAppID = subAppInfo == null ? null : subAppInfo.getSubAppID();
            if (!TextUtils.isEmpty(subAppID)) {
                this.f27214d = subAppID;
            }
            int statusCode = resolveResult.getStatus().getStatusCode();
            HMSLog.i("HuaweiApiClientImpl", "Enter onConnectionResult, connect to server result: " + statusCode);
            if (Status.SUCCESS.equals(resolveResult.getStatus())) {
                c(resolveResult);
                return;
            } else if (resolveResult.getStatus() != null && resolveResult.getStatus().getStatusCode() == 1001) {
                n();
                c(1);
                HuaweiApiClient.ConnectionCallbacks connectionCallbacks = this.f27232v;
                if (connectionCallbacks != null) {
                    connectionCallbacks.onConnectionSuspended(3);
                    return;
                }
                return;
            } else {
                n();
                c(1);
                if (this.f27233w != null) {
                    WeakReference<Activity> weakReference = this.f27218h;
                    if (weakReference != null && weakReference.get() != null) {
                        pendingIntent = HuaweiApiAvailability.getInstance().getResolveErrorPendingIntent(this.f27218h.get(), statusCode);
                    }
                    ConnectionResult connectionResult = new ConnectionResult(statusCode, pendingIntent);
                    this.f27233w.onConnectionFailed(connectionResult);
                    this.f27231u = connectionResult;
                    return;
                }
                return;
            }
        }
        HMSLog.e("HuaweiApiClientImpl", "Invalid onConnectionResult");
    }
}
