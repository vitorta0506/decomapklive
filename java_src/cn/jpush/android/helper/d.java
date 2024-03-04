package cn.jpush.android.helper;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jpush.android.api.InAppSlotParams;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.api.JPushMessage;
import cn.jpush.android.local.JPushConstants;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static ConcurrentLinkedQueue<Long> f3089a = new ConcurrentLinkedQueue<>();

    /* renamed from: c  reason: collision with root package name */
    private static final Object f3090c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static d f3091d;

    /* renamed from: b  reason: collision with root package name */
    private ConcurrentHashMap<Long, a> f3092b = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public int f3093a;

        /* renamed from: b  reason: collision with root package name */
        public String f3094b;

        public a(int i9, String str) {
            this.f3093a = i9;
            this.f3094b = str;
        }

        public String toString() {
            return "MobileBean{sequence=" + this.f3093a + ", mobileNumber='" + this.f3094b + "'}";
        }
    }

    private static int a(long j10) {
        if (f3089a.size() >= 3) {
            long longValue = j10 - f3089a.element().longValue();
            if (longValue < 0) {
                f3089a.clear();
                return 2;
            } else if (longValue <= 10000) {
                return 1;
            } else {
                while (f3089a.size() >= 3) {
                    f3089a.poll();
                }
            }
        }
        f3089a.offer(Long.valueOf(j10));
        return 0;
    }

    public static synchronized d a() {
        d dVar;
        synchronized (d.class) {
            if (f3091d == null) {
                synchronized (f3090c) {
                    if (f3091d == null) {
                        f3091d = new d();
                    }
                }
            }
            dVar = f3091d;
        }
        return dVar;
    }

    public JPushMessage a(Context context, Intent intent) {
        JPushMessage jPushMessage;
        Object th2;
        if (intent != null) {
            try {
                int intExtra = intent.getIntExtra(InAppSlotParams.SLOT_KEY.SEQ, -1);
                int intExtra2 = intent.getIntExtra("code", -1);
                String stringExtra = intent.getStringExtra("mobile");
                jPushMessage = new JPushMessage();
                try {
                    jPushMessage.setSequence(intExtra);
                    jPushMessage.setErrorCode(intExtra2);
                    jPushMessage.setMobileNumber(stringExtra);
                } catch (Throwable th3) {
                    th2 = th3;
                    Logger.w("MobileNumberHelper", "parese mobile number response to JPushMessage failed, error:" + th2);
                    return jPushMessage;
                }
            } catch (Throwable th4) {
                jPushMessage = null;
                th2 = th4;
            }
            return jPushMessage;
        }
        return null;
    }

    public void a(Context context, int i9, int i10, String str) {
        try {
            Logger.d("MobileNumberHelper", "Action - onResult,sequence:" + i9 + ",code:" + i10 + ",mobileNumber:" + str);
            String messageReceiverClass = JPushConstants.getMessageReceiverClass(context);
            Intent intent = new Intent();
            if (TextUtils.isEmpty(messageReceiverClass)) {
                Logger.d("MobileNumberHelper", "not found messageReceiver");
            } else {
                intent = new Intent(context, Class.forName(messageReceiverClass));
                intent.setAction("mobile_result");
                intent.putExtra(InAppSlotParams.SLOT_KEY.SEQ, i9);
                intent.putExtra("code", i10);
                intent.putExtra("mobile", str);
            }
            context.sendBroadcast(intent);
        } catch (Throwable th2) {
            Logger.ww("MobileNumberHelper", "onResult error:" + th2);
        }
    }

    public void a(Context context, int i9, String str) {
        Logger.dd("MobileNumberHelper", "action - setMobileNubmer, sequence:" + i9 + ",mobileNumber:" + str);
        Bundle bundle = new Bundle();
        bundle.putInt(InAppSlotParams.SLOT_KEY.SEQ, i9);
        bundle.putString("mobile", str);
        JCoreHelper.runActionWithService(context, JPushConstants.SDK_TYPE, "set_mobile", bundle);
    }

    public void a(Context context, long j10, int i9) {
        if (this.f3092b.size() != 0) {
            a remove = this.f3092b.remove(Long.valueOf(j10));
            Logger.d("MobileNumberHelper", "mobileBean:" + remove);
            if (remove == null) {
                Logger.d("MobileNumberHelper", "#unexcepted, do not find mobile number request cache");
                return;
            }
            if (i9 == 0) {
                cn.jpush.android.cache.a.a(context, remove.f3094b);
            } else if (i9 == 11) {
                i9 = JPushInterface.ErrorCode.ERROR_CODE_INTERNEL_SERVER_ERROR;
            } else if (i9 == 10) {
                i9 = JPushInterface.ErrorCode.ERROR_CODE_INVALID_MOBILENUMBER;
            }
            a(context, remove.f3093a, i9, remove.f3094b);
        }
    }

    public void a(Context context, Bundle bundle) {
        if (bundle == null) {
            Logger.ww("MobileNumberHelper", "[setMobileNum] bundle is bull");
            return;
        }
        int i9 = bundle.getInt(InAppSlotParams.SLOT_KEY.SEQ, 0);
        String string = bundle.getString("mobile");
        String e10 = cn.jpush.android.cache.a.e(context);
        Logger.dd("MobileNumberHelper", "action:setMobileNum sequence:" + i9 + ",mobileNumber:" + string + ",lastMobileNumber:" + e10);
        if (e10 != null && TextUtils.equals(string, e10)) {
            Logger.dd("MobileNumberHelper", "already set this mobile number");
            a(context, i9, JPushInterface.ErrorCode.SUCCESS, string);
        } else if (cn.jpush.android.cache.a.b(context) == 1) {
            a(context, i9, JPushInterface.ErrorCode.PUSH_STOPED, string);
        } else {
            if (e10 != null) {
                cn.jpush.android.cache.a.a(context, (String) null);
            }
            int a10 = a(System.currentTimeMillis());
            if (a10 != 0) {
                Logger.w("MobileNumberHelper", a10 == 1 ? "set mobile number too soon,over 3 times in 10s" : "set mobile number failed,time shaft error，please try again");
                a(context, i9, a10 == 1 ? JPushInterface.ErrorCode.INVOKE_TOO_SOON : JPushInterface.ErrorCode.INCORRECT_TIME, string);
                return;
            }
            int c10 = cn.jpush.android.af.f.c(string);
            if (c10 == 0) {
                byte[] a11 = cn.jpush.android.ac.c.a(string);
                long a12 = g.a();
                this.f3092b.put(Long.valueOf(a12), new a(i9, string));
                JCoreHelper.sendRequest(context, JPushConstants.SDK_TYPE, 26, 1, a12, 0L, a11);
                return;
            }
            Logger.dd("MobileNumberHelper", "Invalid mobile number: " + string + ", will not set mobile number this time.");
            a(context, i9, c10, string);
        }
    }
}
