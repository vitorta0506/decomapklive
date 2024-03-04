package cn.jpush.android.ad;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import cn.jpush.android.api.CallBackParams;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.api.JPushMessage;
import cn.jpush.android.api.TagAliasCallback;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.service.TagAliasReceiver;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static volatile c f2859a;

    /* renamed from: d  reason: collision with root package name */
    private static final Object f2860d = new Object();

    /* renamed from: b  reason: collision with root package name */
    private TagAliasReceiver f2861b;

    /* renamed from: c  reason: collision with root package name */
    private ConcurrentHashMap<Long, CallBackParams> f2862c = new ConcurrentHashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private AtomicBoolean f2863e = new AtomicBoolean(false);

    private c() {
    }

    public static c a() {
        if (f2859a == null) {
            synchronized (f2860d) {
                if (f2859a == null) {
                    f2859a = new c();
                }
            }
        }
        return f2859a;
    }

    private String a(CallBackParams callBackParams) {
        if (callBackParams == null) {
            Logger.w("TagAliasOperator", "callBack was null");
            return null;
        }
        try {
            Set<String> set = callBackParams.tags;
            if (set != null && set.size() > 0) {
                return (String) callBackParams.tags.toArray()[0];
            }
        } catch (Throwable th2) {
            Logger.d("TagAliasOperator", "get origin check tag failed, error:" + th2);
        }
        return null;
    }

    private void a(Context context, int i9, long j10) {
        String str;
        if (i9 == JPushInterface.ErrorCode.TIMEOUT) {
            str = "action - onTimeout rid:" + j10;
        } else {
            str = "action - on send data over limit";
        }
        Logger.v("TagAliasOperator", str);
        CallBackParams a10 = a(j10);
        if (a10 != null) {
            b(j10);
            a(context, a10, i9, false);
            return;
        }
        Logger.w("TagAliasOperator", "tagalias callback is null; rid=" + j10);
    }

    private void a(Context context, int i9, long j10, Intent intent) {
        String str;
        Logger.v("TagAliasOperator", "SetAliasAndTags finish : errorCode:" + i9 + " rid:" + j10);
        CallBackParams a10 = a(j10);
        if (a10 == null) {
            Logger.w("TagAliasOperator", "tagalias callback is null; rid=" + j10);
            return;
        }
        a().b(j10);
        boolean z10 = false;
        if (intent != null) {
            try {
                int i10 = a10.action;
                if (i10 == 5) {
                    int i11 = a10.protoType;
                    if (i11 == 1) {
                        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("tags");
                        if (stringArrayListExtra != null) {
                            a10.tags = new HashSet(stringArrayListExtra);
                            str = "all tags was loaded, value:" + a10.tags;
                        }
                    } else if (i11 == 2) {
                        a10.alias = intent.getStringExtra(PushConstants.SUB_ALIAS_STATUS_NAME);
                        str = "alias was loaded, value:" + a10.tags;
                    }
                    Logger.d("TagAliasOperator", str);
                } else if (i10 == 6) {
                    z10 = intent.getBooleanExtra("validated", false);
                }
            } catch (Throwable th2) {
                Logger.d("TagAliasOperator", "get tag or alias failed - error:" + th2);
            }
        }
        a(context, a10, i9, z10);
    }

    private void a(Context context, CallBackParams callBackParams, int i9, boolean z10) {
        Logger.d("TagAliasOperator", "action - invokeUserCallback, errorCode:" + i9 + ",callBack:" + callBackParams);
        if (callBackParams.protoType != 0) {
            Logger.w("TagAliasOperator", "new proto type do not call user callback");
            return;
        }
        TagAliasCallback tagAliasCallback = callBackParams.tagAliasCallBack;
        if (tagAliasCallback != null) {
            tagAliasCallback.gotResult(i9, callBackParams.alias, callBackParams.tags);
        }
    }

    private void c(Context context) {
        ConcurrentHashMap<Long, CallBackParams> concurrentHashMap = this.f2862c;
        if (concurrentHashMap == null || concurrentHashMap.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Long, CallBackParams> entry : this.f2862c.entrySet()) {
            if (entry.getValue().isTimeOut(20000L)) {
                arrayList.add(entry.getKey());
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Long l10 = (Long) it.next();
            Logger.w("TagAliasOperator", "cleanTimeOutCallback timeout rid:" + l10);
            a(context, JPushInterface.ErrorCode.TIMEOUT, l10.longValue());
        }
    }

    public CallBackParams a(long j10) {
        return this.f2862c.get(Long.valueOf(j10));
    }

    public JPushMessage a(Context context, Intent intent) {
        String str;
        long longExtra = intent.getLongExtra(TagAliasReceiver.KEY_TAGALIASOPERATOR_SEQID, -1L);
        boolean z10 = false;
        int intExtra = intent.getIntExtra(TagAliasReceiver.KEY_TAGALIASOPERATOR_CALLBACKCODE, 0);
        Logger.v("TagAliasOperator", "parseTagAliasResponse2JPushMessage, errorCode:" + intExtra + " rid:" + longExtra);
        CallBackParams a10 = a(longExtra);
        if (a10 == null) {
            Logger.w("TagAliasOperator", "tagalias callback is null; rid=" + longExtra);
            return null;
        }
        a().b(longExtra);
        if (intExtra == 0) {
            try {
                int i9 = a10.action;
                if (i9 == 5) {
                    int i10 = a10.protoType;
                    if (i10 == 1) {
                        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("tags");
                        if (stringArrayListExtra != null) {
                            a10.tags = new HashSet(stringArrayListExtra);
                            str = "all tags was loaded, value:" + a10.tags;
                        }
                    } else if (i10 == 2) {
                        a10.alias = intent.getStringExtra(PushConstants.SUB_ALIAS_STATUS_NAME);
                        str = "alias was loaded, value:" + a10.tags;
                    }
                    Logger.d("TagAliasOperator", str);
                } else if (i9 == 6) {
                    z10 = intent.getBooleanExtra("validated", false);
                }
            } catch (Throwable th2) {
                Logger.d("TagAliasOperator", "get tag or alias failed - error:" + th2);
            }
        }
        JPushMessage jPushMessage = new JPushMessage();
        jPushMessage.setErrorCode(intExtra);
        jPushMessage.setSequence(a10.sequence);
        if (a10.protoType != 1) {
            jPushMessage.setAlias(a10.alias);
        } else if (a10.action == 6) {
            jPushMessage.setCheckTag(a(a10));
            jPushMessage.setTagCheckStateResult(z10);
            jPushMessage.setTagCheckOperator(true);
        } else {
            jPushMessage.setTags(a10.tags);
        }
        return jPushMessage;
    }

    public synchronized void a(Context context) {
        if (this.f2863e.get()) {
            Logger.d("TagAliasOperator", "tag alias callback register is called");
        } else {
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addCategory(context.getPackageName());
                intentFilter.addAction(TagAliasReceiver.ACTION_TAG_ALIAS_TIMEOUT);
                intentFilter.addAction(TagAliasReceiver.ACTION_TAG_ALIAS_CALLBACK);
                if (this.f2861b == null) {
                    this.f2861b = new TagAliasReceiver();
                }
                TagAliasReceiver tagAliasReceiver = this.f2861b;
                context.registerReceiver(tagAliasReceiver, intentFilter, context.getPackageName() + JPushInterface.PUSH_MESSAGE_PERMISSION_POSTFIX, null);
                this.f2863e.set(true);
            } catch (Exception e10) {
                Logger.e("TagAliasOperator", "setTagAndAlias e:" + e10.getMessage());
            }
        }
    }

    public void a(Context context, long j10, int i9, Intent intent) {
        Logger.v("TagAliasOperator", "action - onTagAliasResponse rid:" + j10 + " tagAliasCallbacks :" + a().b());
        if (TagAliasReceiver.ACTION_TAG_ALIAS_TIMEOUT.equals(intent.getAction())) {
            a(context, i9, j10);
        } else {
            a(context, i9, j10, intent);
        }
        b(context);
    }

    public void a(Context context, Long l10, CallBackParams callBackParams) {
        c(context);
        this.f2862c.put(l10, callBackParams);
    }

    public ConcurrentHashMap<Long, CallBackParams> b() {
        return this.f2862c;
    }

    public void b(long j10) {
        this.f2862c.remove(Long.valueOf(j10));
    }

    public synchronized void b(Context context) {
        String str;
        String str2;
        ConcurrentHashMap<Long, CallBackParams> concurrentHashMap;
        String str3;
        String str4;
        c(context);
        if (this.f2863e.get() && (concurrentHashMap = this.f2862c) != null && concurrentHashMap.isEmpty()) {
            try {
                TagAliasReceiver tagAliasReceiver = this.f2861b;
                if (tagAliasReceiver != null) {
                    context.unregisterReceiver(tagAliasReceiver);
                    this.f2861b = null;
                }
            } catch (IllegalArgumentException e10) {
                e = e10;
                str3 = "TagAliasOperator";
                str4 = "Receiver not registered, cannot call unregisterReceiver";
                Logger.ww(str3, str4, e);
                this.f2863e.set(false);
                str = "TagAliasOperator";
                str2 = "unRegister tag alias callback";
                Logger.v(str, str2);
            } catch (Exception e11) {
                e = e11;
                str3 = "TagAliasOperator";
                str4 = "other exception";
                Logger.ww(str3, str4, e);
                this.f2863e.set(false);
                str = "TagAliasOperator";
                str2 = "unRegister tag alias callback";
                Logger.v(str, str2);
            }
            this.f2863e.set(false);
            str = "TagAliasOperator";
            str2 = "unRegister tag alias callback";
        } else {
            str = "TagAliasOperator";
            str2 = "tagAliasCallbacks is not empty";
        }
        Logger.v(str, str2);
    }
}
