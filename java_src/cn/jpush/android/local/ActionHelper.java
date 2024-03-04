package cn.jpush.android.local;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import cn.jiguang.api.JCoreManager;
import cn.jpush.android.af.e;
import cn.jpush.android.api.CallBackParams;
import cn.jpush.android.api.CustomMessage;
import cn.jpush.android.api.NotificationMessage;
import cn.jpush.android.api.TagAliasCallback;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.service.JPushMessageReceiver;
import java.util.Set;
/* loaded from: classes.dex */
public class ActionHelper {
    private static final String TAG = "ActionHelper";
    private static volatile ActionHelper actionHelper;
    private static final Object locker = new Object();
    private JPushAction jPushAction;
    private cn.jpush.android.ab.a loadedResource;

    /* loaded from: classes.dex */
    class a extends e {

        /* renamed from: b  reason: collision with root package name */
        private Context f3129b;

        /* renamed from: c  reason: collision with root package name */
        private String f3130c;

        /* renamed from: d  reason: collision with root package name */
        private Object f3131d;

        public a(Context context, String str, Object obj) {
            this.f3129b = context;
            this.f3130c = str;
            this.f3131d = obj;
            this.f2899f = "ActionHelper#Action";
        }

        @Override // cn.jpush.android.af.e
        public void a() {
            try {
                ActionHelper.this.initLoad(this.f3129b);
                ActionHelper.this.jPushAction.handleAction(this.f3129b, this.f3130c, this.f3131d);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    /* loaded from: classes.dex */
    class b extends e {

        /* renamed from: b  reason: collision with root package name */
        private Context f3133b;

        /* renamed from: c  reason: collision with root package name */
        private String f3134c;

        /* renamed from: d  reason: collision with root package name */
        private int f3135d;

        /* renamed from: e  reason: collision with root package name */
        private Set<String> f3136e;

        /* renamed from: g  reason: collision with root package name */
        private CallBackParams f3137g;

        public b(Context context, String str, Set<String> set, int i9, CallBackParams callBackParams) {
            this.f3137g = callBackParams;
            this.f3134c = str;
            this.f3135d = i9;
            this.f3133b = context;
            this.f3136e = set;
            this.f2899f = "ActionHelper#TagAliasAction";
        }

        @Override // cn.jpush.android.af.e
        public void a() {
            try {
                ActionHelper.this.initLoad(this.f3133b);
                ActionHelper.this.jPushAction.setAliasAndTags(this.f3133b, this.f3134c, this.f3136e, this.f3137g);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    private ActionHelper() {
        JCoreManager.onEvent(null, JPushConstants.SDK_TYPE, 13, TAG, null, new Object[0]);
    }

    public static ActionHelper getInstance() {
        if (actionHelper == null) {
            synchronized (locker) {
                if (actionHelper == null) {
                    actionHelper = new ActionHelper();
                }
            }
        }
        return actionHelper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void initLoad(Context context) {
        JPushAction jPushAction = this.jPushAction;
        if (jPushAction != null) {
            return;
        }
        if (jPushAction == null) {
            Logger.d(TAG, "load from local");
            this.jPushAction = new cn.jpush.android.l.a();
        }
    }

    public Object beforLogin(Context context, String str, int i9, String str2) {
        initLoad(context);
        JPushAction jPushAction = this.jPushAction;
        if (jPushAction != null) {
            return jPushAction.beforLogin(context, str, i9, str2);
        }
        return null;
    }

    public void doAction(Context context, String str, Object obj) {
        Logger.dd(TAG, "doAction:" + str);
        JCoreHelper.majorExecutor(context, TAG, new a(context, str, obj));
    }

    public void doSingleAction(Context context, String str, Object obj) {
        Logger.dd(TAG, "doSingleAction: " + str);
        JCoreHelper.futureExecutor(context, TAG, new a(context, str, obj));
    }

    public Class getClassInPlugin(String str) {
        return null;
    }

    public ProxyActivityAction getPopWinActivity(Context context) {
        initLoad(context);
        JPushAction jPushAction = this.jPushAction;
        if (jPushAction != null) {
            return jPushAction.getPopWinActivity(context);
        }
        return null;
    }

    public ProxyActivityAction getPushActivity(Context context) {
        initLoad(context);
        JPushAction jPushAction = this.jPushAction;
        if (jPushAction != null) {
            return jPushAction.getPushActivity(context);
        }
        return null;
    }

    public int getResourceID(Context context, String str, String str2, String str3) {
        return 0;
    }

    public String getSdkVersion(String str) {
        JPushAction jPushAction = this.jPushAction;
        return jPushAction != null ? jPushAction.getSdkVersion(str) : JPushConstants.SDK_VERSION_NAME;
    }

    public void handleNotificationIntent(Context context, Intent intent) {
        initLoad(context);
        JPushAction jPushAction = this.jPushAction;
        if (jPushAction != null) {
            jPushAction.handleNotificationIntent(context, intent);
        }
    }

    public boolean isSupportedCMD(String str, int i9) {
        JPushAction jPushAction = this.jPushAction;
        return jPushAction != null ? jPushAction.isSupportedCMD(str, i9) : i9 == 3 || i9 == 29 || i9 == 28 || i9 == 27 || i9 == 10 || i9 == 26 || i9 == 25 || i9 == 34 || i9 == 36 || i9 == 37;
    }

    public void onActivityLifeCallback(Activity activity, String str) {
        if (activity != null) {
            initLoad(activity.getApplicationContext());
            JPushAction jPushAction = this.jPushAction;
            if (jPushAction != null) {
                jPushAction.onActivityLifeCallback(activity, str);
            }
        }
    }

    public void onInAppMessageArrived(Context context, NotificationMessage notificationMessage) {
        initLoad(context);
        JPushAction jPushAction = this.jPushAction;
        if (jPushAction != null) {
            jPushAction.onInAppMessageArrived(context, notificationMessage);
        }
    }

    public void onInAppMessageClick(Context context, NotificationMessage notificationMessage) {
        initLoad(context);
        JPushAction jPushAction = this.jPushAction;
        if (jPushAction != null) {
            jPushAction.onInAppMessageClick(context, notificationMessage);
        }
    }

    public void onJPushMessageReceive(Context context, JPushMessageReceiver jPushMessageReceiver, Intent intent) {
        initLoad(context);
        JPushAction jPushAction = this.jPushAction;
        if (jPushAction != null) {
            jPushAction.onJPushMessageReceive(context, jPushMessageReceiver, intent);
        }
    }

    public void onMessage(Context context, CustomMessage customMessage) {
        initLoad(context);
        JPushAction jPushAction = this.jPushAction;
        if (jPushAction != null) {
            jPushAction.onMessage(context, customMessage);
        }
    }

    public void onMultiAction(Context context, Intent intent) {
        initLoad(context);
        JPushAction jPushAction = this.jPushAction;
        if (jPushAction != null) {
            jPushAction.onMultiAction(context, intent);
        }
    }

    public void onNotifyMessageArrived(Context context, NotificationMessage notificationMessage) {
        initLoad(context);
        JPushAction jPushAction = this.jPushAction;
        if (jPushAction != null) {
            jPushAction.onNotifyMessageArrived(context, notificationMessage);
        }
    }

    public void onNotifyMessageOpened(Context context, NotificationMessage notificationMessage) {
        initLoad(context);
        JPushAction jPushAction = this.jPushAction;
        if (jPushAction != null) {
            jPushAction.onNotifyMessageOpened(context, notificationMessage);
        }
    }

    public void onTagAliasResponse(Context context, long j10, int i9, Intent intent) {
        initLoad(context);
        JPushAction jPushAction = this.jPushAction;
        if (jPushAction != null) {
            jPushAction.onTagAliasResponse(context, j10, i9, intent);
        }
    }

    public void setAliasAndTagsWithCallBack(Context context, String str, Set<String> set, TagAliasCallback tagAliasCallback, int i9, int i10) {
        JCoreHelper.majorExecutor(context, TAG, new b(context, str, set, 0, new CallBackParams(str, set, tagAliasCallback, System.currentTimeMillis(), i9, i10)));
    }

    public void setAliasWithCallBack(Context context, int i9, String str, int i10, int i11) {
        JCoreHelper.majorExecutor(context, TAG, new b(context, str, null, i9, new CallBackParams(i9, str, System.currentTimeMillis(), i10, i11)));
    }

    public void setTagsWithCallBack(Context context, int i9, Set<String> set, int i10, int i11) {
        JCoreHelper.majorExecutor(context, TAG, new b(context, null, set, i9, new CallBackParams(i9, set, System.currentTimeMillis(), i10, i11)));
    }
}
