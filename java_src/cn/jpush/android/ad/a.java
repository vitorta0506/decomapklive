package cn.jpush.android.ad;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jpush.android.af.f;
import cn.jpush.android.api.CallBackParams;
import cn.jpush.android.api.InAppSlotParams;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.helper.g;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.service.TagAliasReceiver;
import com.facebook.share.internal.ShareConstants;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static ConcurrentLinkedQueue<Long> f2845a = new ConcurrentLinkedQueue<>();

    private static int a(long j10) {
        if (f2845a.size() >= 10) {
            long longValue = j10 - f2845a.element().longValue();
            if (longValue < 0) {
                f2845a.clear();
                return 2;
            } else if (longValue <= 10000) {
                return 1;
            } else {
                while (f2845a.size() >= 10) {
                    f2845a.poll();
                }
            }
        }
        f2845a.offer(Long.valueOf(j10));
        return 0;
    }

    public static long a(Context context, String str, int i9, long j10) {
        Logger.d("TagAliasHelper", "action - onRecvTagAliasCallBack");
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt("code", JPushInterface.ErrorCode.UNKNOWN_ERROR);
            if (i9 == 0) {
                j10 = jSONObject.optLong(InAppSlotParams.SLOT_KEY.SEQ);
            }
            Intent intent = new Intent();
            if (i9 == 0) {
                intent.setAction(TagAliasReceiver.ACTION_TAG_ALIAS_CALLBACK);
            } else {
                String messageReceiverClass = JPushConstants.getMessageReceiverClass(context);
                if (!TextUtils.isEmpty(messageReceiverClass)) {
                    intent = new Intent(context, Class.forName(messageReceiverClass));
                }
                intent.setAction("cn.jpush.android.intent.RECEIVE_MESSAGE");
                if (i9 == 1) {
                    intent.putExtra(RemoteMessageConst.MSGTYPE, 1);
                } else {
                    intent.putExtra(RemoteMessageConst.MSGTYPE, 2);
                }
            }
            Intent intent2 = intent;
            intent2.addCategory(context.getPackageName());
            intent2.putExtra("proto_type", i9);
            intent2.setPackage(context.getPackageName());
            intent2.putExtra(TagAliasReceiver.KEY_TAGALIASOPERATOR_CALLBACKCODE, optInt);
            intent2.putExtra(TagAliasReceiver.KEY_TAGALIASOPERATOR_SEQID, j10);
            Intent a10 = b.a().a(context, j10, optInt, jSONObject, intent2);
            if (a10 != null) {
                context.sendBroadcast(a10, context.getPackageName() + JPushInterface.PUSH_MESSAGE_PERMISSION_POSTFIX);
            }
            return j10;
        } catch (Throwable unused) {
            Logger.w("TagAliasHelper", "tagalias msgContent:" + str);
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a(Context context, String str, long j10, int i9) {
        String jSONObject;
        if (c(i9)) {
            try {
                JSONObject a10 = a(i9);
                if (b(2, i9)) {
                    if (TextUtils.isEmpty(str)) {
                        Logger.ee("TagAliasHelper", "alias was empty. Give up action.");
                        a(context, 2, JPushInterface.ErrorCode.NULL_TAGANDALIAS, j10);
                        return null;
                    } else if (!a(context, 2, str, j10)) {
                        return null;
                    } else {
                        a10.put(PushConstants.SUB_ALIAS_STATUS_NAME, str);
                    }
                }
                jSONObject = a10.toString();
                Logger.d("TagAliasHelper", "alias str:" + jSONObject);
            } catch (Throwable th2) {
                Logger.w("TagAliasHelper", "alias exception:" + th2);
            }
            if (TextUtils.isEmpty(jSONObject)) {
                Logger.d("TagAliasHelper", "alias request action was empty");
                return null;
            }
            return jSONObject;
        }
        Logger.e("TagAliasHelper", "unsupport alias action type");
        a(context, 2, JPushInterface.ErrorCode.UNKNOWN_ERROR, j10);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v4, types: [org.json.JSONArray] */
    public static String a(Context context, List<String> list, long j10, int i9, int i10, int i11) {
        String jSONObject;
        if (i9 != 0) {
            try {
                JSONObject a10 = a(i9);
                if (a(1, i9)) {
                    if (list != null && !list.isEmpty()) {
                        HashSet hashSet = new HashSet(list);
                        if (!a(context, 1, hashSet, j10)) {
                            return null;
                        }
                        Object b10 = b(hashSet);
                        if (!b(context, b10, j10, 1)) {
                            return null;
                        }
                        if (i9 != 6) {
                            b10 = new JSONArray();
                            for (String str : list) {
                                b10.put(str);
                            }
                        } else if (TextUtils.isEmpty(b10)) {
                            Logger.ee("TagAliasHelper", "stags was empty. Give up action.");
                            a(context, 1, JPushInterface.ErrorCode.NULL_TAGANDALIAS, j10);
                            return null;
                        }
                        a10.put("tags", b10);
                    }
                    Logger.ee("TagAliasHelper", "tags was empty. Give up action.");
                    a(context, 1, JPushInterface.ErrorCode.NULL_TAGANDALIAS, j10);
                    return null;
                }
                if (i9 == 5) {
                    if (i11 == -1) {
                        i11 = 1;
                    }
                    a10.put("curr", i11);
                }
                jSONObject = a10.toString();
                Logger.d("TagAliasHelper", "tag str:" + jSONObject);
            } catch (Throwable th2) {
                Logger.w("TagAliasHelper", "tag exception:" + th2);
            }
            if (TextUtils.isEmpty(jSONObject)) {
                Logger.d("TagAliasHelper", "tag request action was empty");
                return null;
            }
            return jSONObject;
        }
        Logger.e("TagAliasHelper", "unsupport tag action type");
        a(context, 1, JPushInterface.ErrorCode.UNKNOWN_ERROR, j10);
        return null;
    }

    private static String a(Context context, List<String> list, String str, long j10) {
        String jSONObject;
        HashSet hashSet = list != null ? new HashSet(list) : null;
        if (str == null || a(context, 0, str, j10)) {
            if (hashSet == null || a(context, 0, hashSet, j10)) {
                String b10 = b(hashSet);
                if (b(context, b10, j10, 0)) {
                    if (b10 == null && str == null) {
                        Logger.ee("TagAliasHelper", "NULL alias and tags. Give up action.");
                        a(context, 0, JPushInterface.ErrorCode.NULL_TAGANDALIAS, j10);
                        return null;
                    }
                    Logger.dd("TagAliasHelper", "action:setAliasAndTags - alias:" + str + ", tags:" + b10);
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("platform", "a");
                        if (str != null) {
                            jSONObject2.put(PushConstants.SUB_ALIAS_STATUS_NAME, str);
                        }
                        if (hashSet != null) {
                            jSONObject2.put("tags", b10);
                        }
                        jSONObject = jSONObject2.toString();
                        Logger.d("TagAliasHelper", "tagalias str:" + jSONObject);
                    } catch (Throwable th2) {
                        Logger.w("TagAliasHelper", "tagalias exception:" + th2);
                        a(context, 0, JPushInterface.ErrorCode.UNKNOWN_ERROR, j10);
                    }
                    if (TextUtils.isEmpty(jSONObject)) {
                        Logger.d("TagAliasHelper", "tagalias request action was empty");
                        return null;
                    }
                    return jSONObject;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public static Set<String> a(Set<String> set) {
        if (set == null) {
            return null;
        }
        if (set.isEmpty()) {
            return set;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i9 = 0;
        for (String str : set) {
            if (TextUtils.isEmpty(str) || !f.a(str)) {
                Logger.ee("TagAliasHelper", "Invalid tag : " + str);
            } else {
                linkedHashSet.add(str);
                i9++;
                if (i9 >= 1000) {
                    Logger.ww("TagAliasHelper", "The lenght of tags maybe more than 1000.");
                    return linkedHashSet;
                }
            }
        }
        return linkedHashSet;
    }

    private static JSONObject a(int i9) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("platform", "a");
        jSONObject.put("op", b(i9));
        return jSONObject;
    }

    public static void a(Context context, int i9, int i10, long j10) {
        try {
            Intent intent = new Intent();
            intent.addCategory(context.getPackageName());
            intent.setPackage(context.getPackageName());
            if (i9 == 0) {
                intent.setAction(TagAliasReceiver.ACTION_TAG_ALIAS_CALLBACK);
            } else {
                intent.setAction("cn.jpush.android.intent.RECEIVE_MESSAGE");
                intent.setClass(context, Class.forName(JPushConstants.getMessageReceiverClass(context)));
                if (i9 == 1) {
                    intent.putExtra(RemoteMessageConst.MSGTYPE, 1);
                } else {
                    intent.putExtra(RemoteMessageConst.MSGTYPE, 2);
                }
            }
            intent.putExtra(TagAliasReceiver.KEY_TAGALIASOPERATOR_CALLBACKCODE, i10);
            intent.putExtra(TagAliasReceiver.KEY_TAGALIASOPERATOR_SEQID, j10);
            context.sendBroadcast(intent, context.getPackageName() + JPushInterface.PUSH_MESSAGE_PERMISSION_POSTFIX);
        } catch (Throwable th2) {
            Logger.ww("TagAliasHelper", "NotifyTagAliasError:" + th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, int i9, long j10, String str) {
        Logger.dd("TagAliasHelper", "tagalias:" + str);
        if (str == null) {
            Logger.w("TagAliasHelper", "tagaliasRequest was null");
            return;
        }
        int i10 = i9 == 0 ? 10 : i9 == 1 ? 28 : 29;
        JCoreHelper.sendRequest(context, JPushConstants.SDK_TYPE, i10, i9 == 0 ? 4 : i9 == 1 ? 1 : 2, j10, 20000L, cn.jpush.android.ac.c.a(JCoreHelper.getAppKey(context), i10, str));
    }

    public static void a(Context context, Bundle bundle) {
        int i9;
        int i10;
        String str;
        int i11;
        String str2;
        String str3;
        int i12;
        String string = bundle.getString(PushConstants.SUB_ALIAS_STATUS_NAME);
        ArrayList<String> stringArrayList = bundle.getStringArrayList("tags");
        long j10 = bundle.getLong("seq", 0L);
        try {
            i9 = Integer.parseInt(bundle.getString("proto_type"));
        } catch (Throwable th2) {
            Logger.w("TagAliasHelper", "load tag/alias proto type failed - error:" + th2);
            a(context, 0, JPushInterface.ErrorCode.UNKNOWN_ERROR, j10);
            i9 = 0;
        }
        try {
            i10 = Integer.parseInt(bundle.getString(ShareConstants.WEB_DIALOG_PARAM_ACTION_TYPE));
        } catch (Throwable th3) {
            Logger.w("TagAliasHelper", "load tag/alias action type failed - error:" + th3);
            a(context, i9, JPushInterface.ErrorCode.UNKNOWN_ERROR, j10);
            i10 = 0;
        }
        if (cn.jpush.android.cache.a.d(context)) {
            i12 = JPushInterface.ErrorCode.PUSH_STOPED;
        } else {
            int a10 = a(System.currentTimeMillis());
            if (a10 != 0) {
                Logger.w("TagAliasHelper", a10 == 1 ? "set tags/alias too soon,over 10 times in 10s" : "set tags/alias failed,time shaft error，please try again");
                a(context, i9, a10 == 1 ? JPushInterface.ErrorCode.INVOKE_TOO_SOON : JPushInterface.ErrorCode.INCORRECT_TIME, j10);
                return;
            } else if (!b.a().a(context, i9, j10)) {
                String str4 = null;
                if (i9 == 0) {
                    Logger.d("TagAliasHelper", "old tag/alias proto");
                    str2 = a(context, stringArrayList, string, j10);
                    str = PushConstants.SUB_ALIAS_STATUS_NAME;
                    i11 = 2;
                } else {
                    if (i9 == 1) {
                        str = PushConstants.SUB_ALIAS_STATUS_NAME;
                        i11 = 2;
                        str4 = a(context, stringArrayList, j10, i10, -1, -1);
                    } else {
                        str = PushConstants.SUB_ALIAS_STATUS_NAME;
                        i11 = 2;
                        if (i9 == 2) {
                            str4 = a(context, string, j10, i10);
                        }
                    }
                    str2 = str4;
                }
                if (str2 == null || !(i9 == 1 || i9 == i11)) {
                    str3 = str2;
                } else if (!b.a().a(i9)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i9 == 1 ? "tag" : str);
                    sb2.append(" is operatoring, please wait last operator complete");
                    Logger.w("TagAliasHelper", sb2.toString());
                    a(context, i9, i9 == 1 ? JPushInterface.ErrorCode.ERROR_CODE_TAG_OPERATORING : JPushInterface.ErrorCode.ERROR_CODE_ALIAS_OPERATORING, j10);
                    return;
                } else {
                    int i13 = i10;
                    str3 = str2;
                    b.a().a(i9, i13, j10, stringArrayList, string);
                }
                a(context, i9, j10, str3);
                return;
            } else {
                i12 = JPushInterface.ErrorCode.ERROR_CODE_SERVER_UNAVAILABLE;
            }
        }
        a(context, i9, i12, j10);
    }

    public static void a(Context context, String str, Set<String> set, CallBackParams callBackParams) {
        long a10 = g.a();
        if (callBackParams != null) {
            c.a().a(context, Long.valueOf(a10), callBackParams);
        }
        if (!(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        if (callBackParams != null && callBackParams.protoType == 0) {
            c.a().a(context);
        }
        Bundle bundle = new Bundle();
        bundle.putString(PushConstants.SUB_ALIAS_STATUS_NAME, str);
        bundle.putStringArrayList("tags", set != null ? new ArrayList<>(set) : null);
        bundle.putLong("seq", a10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(callBackParams != null ? callBackParams.protoType : 0);
        sb2.append("");
        bundle.putString("proto_type", sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(callBackParams != null ? callBackParams.action : 0);
        sb3.append("");
        bundle.putString(ShareConstants.WEB_DIALOG_PARAM_ACTION_TYPE, sb3.toString());
        JCoreHelper.runActionWithService(context, JPushConstants.SDK_TYPE, "tagalis", bundle);
    }

    private static boolean a(int i9, int i10) {
        return i9 == 1 && (i10 == 1 || i10 == 2 || i10 == 3 || i10 == 6);
    }

    private static boolean a(Context context, int i9, String str, long j10) {
        int b10 = f.b(str);
        if (b10 != 0) {
            Logger.dd("TagAliasHelper", "Invalid alias: " + str + ", will not set alias this time.");
            a(context, i9, b10, j10);
            return false;
        }
        return true;
    }

    private static boolean a(Context context, int i9, Set<String> set, long j10) {
        int a10 = f.a(set);
        if (a10 != 0) {
            Logger.dd("TagAliasHelper", "Invalid tags, will not set tags this time.");
            a(context, i9, a10, j10);
            return false;
        }
        return true;
    }

    private static boolean a(String str, boolean z10) {
        int length = !TextUtils.isEmpty(str) ? str.getBytes().length + 0 : 0;
        Logger.v("TagAliasHelper", "tags length:" + length);
        if (z10) {
            if (length > 5000) {
                return false;
            }
        } else if (length > 7000) {
            return false;
        }
        return true;
    }

    private static String b(int i9) {
        switch (i9) {
            case 1:
                return "add";
            case 2:
                return "set";
            case 3:
                return "del";
            case 4:
                return "clean";
            case 5:
                return "get";
            case 6:
                return "valid";
            default:
                return null;
        }
    }

    public static String b(Set<String> set) {
        String str = null;
        if (set == null) {
            return null;
        }
        if (set.isEmpty()) {
            return "";
        }
        int i9 = 0;
        for (String str2 : set) {
            if (TextUtils.isEmpty(str2) || !f.a(str2)) {
                Logger.ee("TagAliasHelper", "Invalid tag: " + str2);
            } else {
                if (str != null) {
                    str2 = str + "," + str2;
                }
                i9++;
                if (i9 >= 1000) {
                    return str2;
                }
                str = str2;
            }
        }
        return str;
    }

    private static boolean b(int i9, int i10) {
        return i9 == 2 && i10 == 2;
    }

    private static boolean b(Context context, String str, long j10, int i9) {
        if (str != null) {
            if (!a(str.replaceAll(",", ""), i9 != 0)) {
                a(context, i9, JPushInterface.ErrorCode.TOO_LONG_TAGALIAS, j10);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("The length of tags should be less than ");
                sb2.append(i9 != 0 ? 5000 : 7000);
                sb2.append(" bytes.");
                Logger.ww("TagAliasHelper", sb2.toString());
                return false;
            }
        }
        return true;
    }

    private static boolean c(int i9) {
        return i9 == 2 || i9 == 3 || i9 == 5;
    }
}
