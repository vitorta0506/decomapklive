package cn.jpush.android.v;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jpush.android.api.InAppSlotParams;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.api.JPushMessage;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import com.tencent.imsdk.BaseConstants;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static e f3405a;

    /* renamed from: b  reason: collision with root package name */
    private int f3406b = 1;

    /* renamed from: c  reason: collision with root package name */
    private long f3407c = 30000;

    /* renamed from: d  reason: collision with root package name */
    private int f3408d = 0;

    /* renamed from: e  reason: collision with root package name */
    private long f3409e = 0;

    /* renamed from: f  reason: collision with root package name */
    private ConcurrentHashMap<Long, Integer> f3410f = new ConcurrentHashMap<>();

    public static e a() {
        if (f3405a == null) {
            synchronized (e.class) {
                if (f3405a == null) {
                    f3405a = new e();
                }
            }
        }
        return f3405a;
    }

    private void a(Context context, int i9, int i10) {
        if (context == null) {
            try {
                context = JPushConstants.mApplicationContext;
            } catch (Throwable th2) {
                Logger.w("InAppPullTaskHelper", "send pull result to user by broadcast, code: " + i10 + ", error: " + th2.getMessage());
                return;
            }
        }
        if (context != null) {
            String messageReceiverClass = JPushConstants.getMessageReceiverClass(context);
            Intent intent = new Intent();
            if (TextUtils.isEmpty(messageReceiverClass)) {
                Logger.d("InAppPullTaskHelper", "not found messageReceiver");
            } else {
                intent = new Intent(context, Class.forName(messageReceiverClass));
                intent.setAction("in_app_pull_result");
                intent.putExtra(InAppSlotParams.SLOT_KEY.SEQ, i9);
                intent.putExtra("code", i10);
            }
            context.sendBroadcast(intent);
        }
    }

    private void a(Context context, long j10, int i9) {
        if (this.f3410f.size() > 0) {
            Integer remove = this.f3410f.remove(Long.valueOf(j10));
            Logger.d("InAppPullTaskHelper", "sequence:" + remove + ", code: " + i9);
            if (remove == null) {
                Logger.d("InAppPullTaskHelper", "#unexcepted, do not find in app request cache");
                return;
            }
            if (i9 != 0) {
                switch (i9) {
                    case 8001:
                        i9 = 6029;
                        break;
                    case 8002:
                        i9 = 6030;
                        break;
                    case BaseConstants.ERR_SDK_IMAGE_CONVERT_ERROR /* 8003 */:
                        i9 = 6032;
                        break;
                    case 8004:
                        i9 = 6033;
                        break;
                    case BaseConstants.ERR_MERGER_MSG_LAYERS_OVER_LIMIT /* 8005 */:
                        i9 = 6034;
                        break;
                }
            } else {
                i9 = BaseConstants.ERR_OUT_OF_MEMORY;
            }
            a(context, remove.intValue(), i9);
        }
    }

    public JPushMessage a(Context context, Intent intent) {
        JPushMessage jPushMessage = new JPushMessage();
        if (intent != null) {
            try {
                Logger.d("InAppPullTaskHelper", "[parseInAppResponse2JPushMessage] process: " + cn.jpush.android.af.a.d(context));
                int intExtra = intent.getIntExtra(InAppSlotParams.SLOT_KEY.SEQ, -1);
                int intExtra2 = intent.getIntExtra("code", -1);
                jPushMessage.setSequence(intExtra);
                jPushMessage.setErrorCode(intExtra2);
            } catch (Throwable th2) {
                Logger.w("InAppPullTaskHelper", "parese in app response to JPushMessage failed, error:" + th2);
            }
        }
        return jPushMessage;
    }

    public void a(Context context, long j10, int i9, int i10, long j11) {
        try {
            if (i9 != JPushInterface.ErrorCode.TIMEOUT) {
                this.f3406b = Math.max(i10, 0);
                this.f3407c = Math.max(j11, 0L) * 1000;
                Logger.d("InAppPullTaskHelper", "[onPullInAppCallBack],reqId:" + j10 + ",code:" + i9 + ",reqLmtCount:" + this.f3406b + ", reqTimeInterval:" + this.f3407c);
            }
            a(context, j10, i9);
        } catch (Throwable th2) {
            Logger.ww("InAppPullTaskHelper", "[onPullInAppCallBack] error:" + th2);
        }
    }

    public synchronized void a(Context context, Bundle bundle) {
        int i9;
        try {
        } catch (Throwable th2) {
            Logger.w("InAppPullTaskHelper", "pull in app data in service process failed. " + th2.getMessage());
        }
        if (bundle == null) {
            Logger.ww("InAppPullTaskHelper", "[pullInAppMessage] bundle is bull");
            return;
        }
        int i10 = bundle.getInt(InAppSlotParams.SLOT_KEY.SEQ, 0);
        int i11 = bundle.getInt("type", 0);
        String string = bundle.getString("AdPositionKey", "");
        String str = " ";
        if (JPushConstants.SDK_VERSION_CODE >= 420) {
            InAppSlotParams parseJSONString = InAppSlotParams.parseJSONString(bundle.getString("inapp_param", ""));
            if (!TextUtils.isEmpty(parseJSONString.f2914b) && !string.equals(parseJSONString.f2914b)) {
                string = parseJSONString.f2914b;
            }
            str = !TextUtils.isEmpty(parseJSONString.f2915c) ? parseJSONString.f2915c : " ";
            int i12 = parseJSONString.f2913a;
            if (i12 > 0) {
                i10 = i12;
            }
        }
        if (TextUtils.isEmpty(string)) {
            string = " ";
        }
        if (cn.jpush.android.cache.a.b(context) == 1) {
            a(context, i10, JPushInterface.ErrorCode.PUSH_STOPED);
        } else if (cn.jpush.android.t.d.d(context)) {
            Logger.d("InAppPullTaskHelper", "can not pull in-message in black page");
            a(context, i10, 6035);
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.f3409e > this.f3407c) {
                this.f3408d = 0;
            }
            if (this.f3408d >= this.f3406b) {
                Logger.w("InAppPullTaskHelper", "in app message request limit, limit code: " + this.f3406b + ", hasReqCount: " + this.f3408d + ", srvTimeInterval: " + this.f3407c + ", reqTimeInterval: " + (currentTimeMillis - this.f3409e));
                a(context, i10, 6031);
                return;
            }
            long a10 = cn.jpush.android.helper.g.a();
            String f10 = c.f(context);
            String a11 = cn.jpush.android.t.d.a();
            if (TextUtils.isEmpty(a11)) {
                a11 = " ";
            }
            String str2 = string + "$$" + a11 + "$$" + str;
            Logger.d("InAppPullTaskHelper", "start request in-app message, reqCount: " + this.f3406b + ", reqTimeInterval: " + this.f3407c + ", hasReqCount: " + this.f3408d + ", cmd: 34, ver: 4, type: " + i11 + ", adPositionKey: " + string + ", devInfo: " + f10 + ", adInfo: " + str2);
            this.f3410f.put(Long.valueOf(a10), Integer.valueOf(i10));
            JCoreHelper.sendRequest(context, JPushConstants.SDK_TYPE, 34, 4, a10, 20000L, cn.jpush.android.ac.c.a(i11, str2, f10));
            if (currentTimeMillis - this.f3409e > this.f3407c) {
                i9 = 1;
            } else {
                i9 = this.f3408d + 1;
                this.f3408d = i9;
            }
            this.f3408d = i9;
            this.f3409e = currentTimeMillis;
            Logger.d("InAppPullTaskHelper", "after user request count: " + this.f3408d + ", userReqTime: " + this.f3409e);
        }
    }
}
