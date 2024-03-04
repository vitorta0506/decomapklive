package cn.jpush.android.ad;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.service.TagAliasReceiver;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile b f2846a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f2847b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private ConcurrentHashMap<Long, a> f2848c = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public int f2849a;

        /* renamed from: b  reason: collision with root package name */
        public int f2850b;

        /* renamed from: c  reason: collision with root package name */
        public long f2851c;

        /* renamed from: d  reason: collision with root package name */
        public ArrayList<String> f2852d;

        /* renamed from: e  reason: collision with root package name */
        public String f2853e;

        /* renamed from: f  reason: collision with root package name */
        public int f2854f = -1;

        /* renamed from: g  reason: collision with root package name */
        public int f2855g = -1;

        /* renamed from: h  reason: collision with root package name */
        public int f2856h = 0;

        /* renamed from: i  reason: collision with root package name */
        public int f2857i;

        public a(int i9, int i10, long j10, ArrayList<String> arrayList, String str) {
            this.f2857i = 0;
            this.f2849a = i9;
            this.f2850b = i10;
            this.f2851c = j10;
            this.f2852d = arrayList;
            if (i9 == 1 && arrayList == null) {
                this.f2852d = new ArrayList<>();
            }
            this.f2853e = str;
            this.f2857i = 1;
        }

        public String toString() {
            return "TagAliasCacheBean{protoType=" + this.f2849a + ", actionType=" + this.f2850b + ", seqID=" + this.f2851c + ", tags=" + this.f2852d + ", alias='" + this.f2853e + "', totalPage=" + this.f2854f + ", currPage=" + this.f2855g + ", retryCount=" + this.f2856h + '}';
        }
    }

    private a a(JSONObject jSONObject, a aVar) {
        Logger.d("TagAliasNewProtoRetryHelper", "action - onUpdateCacheNode,responseJson:" + jSONObject + ",tagAliasCacheNode:" + aVar);
        if (aVar == null) {
            Logger.w("TagAliasNewProtoRetryHelper", "tagAliasCacheNode was null");
            return null;
        }
        if (TextUtils.equals(jSONObject.optString("op"), "get")) {
            if (aVar.f2849a == 1) {
                try {
                    JSONArray optJSONArray = jSONObject.optJSONArray("tags");
                    if (optJSONArray != null && optJSONArray.length() != 0) {
                        ArrayList arrayList = new ArrayList();
                        for (int i9 = 0; i9 < optJSONArray.length(); i9++) {
                            arrayList.add(optJSONArray.getString(i9));
                        }
                        if (arrayList.size() > 0) {
                            aVar.f2852d.addAll(arrayList);
                        }
                    }
                } catch (Throwable th2) {
                    Logger.e("TagAliasNewProtoRetryHelper", "parse tag list failed - error:" + th2);
                }
            } else {
                String optString = jSONObject.optString(PushConstants.SUB_ALIAS_STATUS_NAME);
                if (optString != null) {
                    aVar.f2853e = optString;
                }
            }
        }
        return aVar;
    }

    public static b a() {
        if (f2846a == null) {
            synchronized (f2847b) {
                if (f2846a == null) {
                    f2846a = new b();
                }
            }
        }
        return f2846a;
    }

    private boolean a(Context context, int i9, a aVar) {
        int i10;
        Logger.d("TagAliasNewProtoRetryHelper", "action - CheckAndSendAgain, errorCode:" + i9 + ",tagAliasCacheNode:" + aVar);
        if (i9 == 1 && (i10 = aVar.f2856h) == 0) {
            aVar.f2856h = i10 + 1;
            if (a(context, aVar.f2849a, aVar.f2851c)) {
                return true;
            }
            return b(context, aVar);
        }
        return false;
    }

    private boolean a(Context context, a aVar) {
        String str;
        if (aVar == null) {
            str = "tagAlias cache was null";
        } else {
            Logger.d("TagAliasNewProtoRetryHelper", "action - onTagAliasResponse, tagAliasCacheNode:" + aVar);
            if (aVar.f2855g < aVar.f2854f) {
                return true;
            }
            str = "all tags info was loaded";
        }
        Logger.d("TagAliasNewProtoRetryHelper", str);
        return false;
    }

    private boolean b(Context context, a aVar) {
        String a10;
        String str;
        Logger.d("TagAliasNewProtoRetryHelper", "action - onSendAgain, tagAliasCacheNode:" + aVar);
        if (aVar == null) {
            Logger.w("TagAliasNewProtoRetryHelper", "onSendAgain - tagAliasCacheNode was null");
            return false;
        }
        int i9 = aVar.f2849a;
        if (i9 == 1) {
            a10 = cn.jpush.android.ad.a.a(context, aVar.f2852d, aVar.f2851c, aVar.f2850b, aVar.f2854f, aVar.f2855g);
        } else if (i9 != 2) {
            Logger.d("TagAliasNewProtoRetryHelper", "unsupport proto type");
            return false;
        } else {
            a10 = cn.jpush.android.ad.a.a(context, aVar.f2853e, aVar.f2851c, i9);
        }
        if (a10 != null) {
            if (aVar.f2856h > 200) {
                this.f2848c.remove(Long.valueOf(aVar.f2851c));
                cn.jpush.android.ad.a.a(context, aVar.f2849a, JPushInterface.ErrorCode.ERROR_CODE_TOO_BUSY, aVar.f2851c);
                str = "same tag/alias request times greate than 200";
            } else {
                cn.jpush.android.ad.a.a(context, aVar.f2849a, aVar.f2851c, a10);
                aVar.f2856h++;
                this.f2848c.put(Long.valueOf(aVar.f2851c), aVar);
                str = "send request success";
            }
            Logger.d("TagAliasNewProtoRetryHelper", str);
            return true;
        }
        return false;
    }

    public int a(int i9, int i10) {
        if (i9 == 0) {
            return i10;
        }
        if (i10 == 17) {
            try {
                return JPushInterface.ErrorCode.ERROR_CODE_ALIAS_LIMIT;
            } catch (Throwable unused) {
                return JPushInterface.ErrorCode.ERROR_CODE_INVALIDREQ;
            }
        } else if (i10 != 100) {
            switch (i10) {
                case 1:
                case 2:
                    return JPushInterface.ErrorCode.ERROR_CODE_TOO_BUSY;
                case 3:
                    return JPushInterface.ErrorCode.ERROR_CODE_BLACKLIST;
                case 4:
                    return JPushInterface.ErrorCode.ERROR_CODE_INVALIDUSER;
                case 5:
                    return JPushInterface.ErrorCode.ERROR_CODE_INVALIDREQ;
                case 6:
                    return JPushInterface.ErrorCode.ERROR_CODE_INTERNEL_SERVER_ERROR;
                case 7:
                case 8:
                    return JPushInterface.ErrorCode.ERROR_CODE_GET_FAILED;
                case 9:
                    return JPushInterface.ErrorCode.ERROR_CODE_TOO_MANY_TAGS;
                default:
                    return i10;
            }
        } else {
            return JPushInterface.ErrorCode.ERROR_CODE_SERVER_UNAVAILABLE;
        }
    }

    public int a(long j10) {
        Logger.d("TagAliasNewProtoRetryHelper", "action - onTagAliasTimeOut :" + j10);
        a remove = this.f2848c.remove(Long.valueOf(j10));
        Logger.d("TagAliasNewProtoRetryHelper", "onTagAliasTimeOut,removed cachenode:" + remove);
        if (remove != null) {
            return remove.f2849a;
        }
        return 0;
    }

    public Intent a(Context context, long j10, int i9, JSONObject jSONObject, Intent intent) {
        String str;
        String str2;
        Logger.d("TagAliasNewProtoRetryHelper", "action - onTagAliasResponse, seqID:" + j10 + ",errorCode:" + i9 + ",intent:" + intent);
        a aVar = this.f2848c.get(Long.valueOf(j10));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("tagAliasCacheNode:");
        sb2.append(aVar);
        Logger.d("TagAliasNewProtoRetryHelper", sb2.toString());
        this.f2848c.remove(Long.valueOf(j10));
        if (jSONObject == null) {
            Logger.w("TagAliasNewProtoRetryHelper", "responseJson was null");
            return intent;
        } else if (aVar == null) {
            Logger.w("TagAliasNewProtoRetryHelper", "tagAliasCacheNode was null");
            return intent;
        } else {
            if (!a(context, i9, aVar)) {
                if (i9 != 0) {
                    if (i9 == 100) {
                        long optLong = jSONObject.optLong("wait", -1L);
                        Logger.ww("TagAliasNewProtoRetryHelper", "set tag/alias action will freeze " + optLong + " seconds");
                        if (optLong > 0) {
                            cn.jpush.android.cache.a.a(context, optLong);
                        }
                    }
                    int a10 = a(aVar.f2849a, i9);
                    intent.putExtra(TagAliasReceiver.KEY_TAGALIASOPERATOR_CALLBACKCODE, a10);
                    Logger.d("TagAliasNewProtoRetryHelper", "mapped errorCode:" + a10);
                    return intent;
                }
                aVar.f2856h = 0;
                if (aVar.f2850b == 5) {
                    aVar.f2854f = jSONObject.optInt("total", -1);
                    aVar.f2855g = jSONObject.optInt("curr", -1);
                    a(jSONObject, aVar);
                }
                if (a(context, aVar)) {
                    aVar.f2855g++;
                    Logger.d("TagAliasNewProtoRetryHelper", "load next page, currpage:" + aVar.f2855g + ",totalPage:" + aVar.f2854f);
                    if (a(context, aVar.f2849a, aVar.f2851c)) {
                        return null;
                    }
                    str2 = b(context, aVar) ? "get next page request was sended" : "get next page request was sended";
                }
                int i10 = aVar.f2850b;
                if (i10 == 5) {
                    int i11 = aVar.f2849a;
                    if (i11 == 1) {
                        if (aVar.f2852d.size() > 0) {
                            intent.putStringArrayListExtra("tags", aVar.f2852d);
                        }
                    } else if (i11 == 2 && (str = aVar.f2853e) != null) {
                        intent.putExtra(PushConstants.SUB_ALIAS_STATUS_NAME, str);
                    }
                } else if (i10 == 6) {
                    if (aVar.f2849a == 1) {
                        intent.putExtra("validated", jSONObject.optBoolean("validated", false));
                    } else {
                        Logger.w("TagAliasNewProtoRetryHelper", "unsupport  proto type");
                    }
                }
                return intent;
            }
            str2 = "retry action was sended";
            Logger.d("TagAliasNewProtoRetryHelper", str2);
            return null;
        }
    }

    public void a(int i9, int i10, long j10, ArrayList<String> arrayList, String str) {
        a aVar = new a(i9, i10, j10, arrayList, str);
        Logger.d("TagAliasNewProtoRetryHelper", "action - createNewCacheNode, tagAliasCacheNode:" + aVar);
        this.f2848c.put(Long.valueOf(j10), aVar);
    }

    public boolean a(int i9) {
        ConcurrentHashMap<Long, a> concurrentHashMap = this.f2848c;
        if (concurrentHashMap == null || concurrentHashMap.isEmpty()) {
            return true;
        }
        for (Map.Entry<Long, a> entry : this.f2848c.entrySet()) {
            a value = entry.getValue();
            if (value != null && value.f2849a == i9) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(Context context, int i9, long j10) {
        if ((i9 == 1 || i9 == 2) && cn.jpush.android.cache.a.j(context)) {
            Logger.w("TagAliasNewProtoRetryHelper", "tag/alias action was freezed");
            cn.jpush.android.ad.a.a(context, i9, JPushInterface.ErrorCode.ERROR_CODE_SERVER_UNAVAILABLE, j10);
            return true;
        }
        return false;
    }
}
