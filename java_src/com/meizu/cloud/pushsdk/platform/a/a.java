package com.meizu.cloud.pushsdk.platform.a;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.c.a.c;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.util.MzSystemUtils;
import java.io.File;
import java.util.LinkedHashMap;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f28758a;

    /* renamed from: b  reason: collision with root package name */
    private String f28759b;

    /* renamed from: c  reason: collision with root package name */
    private String f28760c;

    /* renamed from: d  reason: collision with root package name */
    private String f28761d;

    /* renamed from: e  reason: collision with root package name */
    private String f28762e;

    /* renamed from: f  reason: collision with root package name */
    private String f28763f;

    /* renamed from: g  reason: collision with root package name */
    private String f28764g;

    /* renamed from: h  reason: collision with root package name */
    private String f28765h;

    /* renamed from: i  reason: collision with root package name */
    private String f28766i;

    /* renamed from: j  reason: collision with root package name */
    private String f28767j;

    /* renamed from: k  reason: collision with root package name */
    private String f28768k;

    /* renamed from: l  reason: collision with root package name */
    private String f28769l;

    /* renamed from: m  reason: collision with root package name */
    private String f28770m;

    /* renamed from: n  reason: collision with root package name */
    private String f28771n;

    /* renamed from: o  reason: collision with root package name */
    private String f28772o;

    public a(Context context) {
        this.f28758a = "https://api-push.meizu.com/garcia/api/client/";
        this.f28759b = this.f28758a + "message/registerPush";
        this.f28760c = this.f28758a + "message/unRegisterPush";
        this.f28761d = this.f28758a + "advance/unRegisterPush";
        this.f28762e = this.f28758a + "message/getRegisterSwitch";
        this.f28763f = this.f28758a + "message/changeRegisterSwitch";
        this.f28764g = this.f28758a + "message/changeAllSwitch";
        this.f28765h = this.f28758a + "message/subscribeTags";
        this.f28766i = this.f28758a + "message/unSubscribeTags";
        this.f28767j = this.f28758a + "message/unSubAllTags";
        this.f28768k = this.f28758a + "message/getSubTags";
        this.f28769l = this.f28758a + "message/subscribeAlias";
        this.f28770m = this.f28758a + "message/unSubscribeAlias";
        this.f28771n = this.f28758a + "message/getSubAlias";
        this.f28772o = this.f28758a + "advance/changeRegisterSwitch";
        com.meizu.cloud.pushsdk.c.a.a();
        if (MzSystemUtils.isOverseas()) {
            this.f28758a = "https://api-push.in.meizu.com/garcia/api/client/";
            this.f28759b = this.f28758a + "message/registerPush";
            this.f28760c = this.f28758a + "message/unRegisterPush";
            this.f28761d = this.f28758a + "advance/unRegisterPush";
            this.f28762e = this.f28758a + "message/getRegisterSwitch";
            this.f28763f = this.f28758a + "message/changeRegisterSwitch";
            this.f28764g = this.f28758a + "message/changeAllSwitch";
            this.f28765h = this.f28758a + "message/subscribeTags";
            this.f28766i = this.f28758a + "message/unSubscribeTags";
            this.f28767j = this.f28758a + "message/unSubAllTags";
            this.f28768k = this.f28758a + "message/getSubTags";
            this.f28769l = this.f28758a + "message/subscribeAlias";
            this.f28770m = this.f28758a + "message/unSubscribeAlias";
            this.f28771n = this.f28758a + "message/getSubAlias";
            this.f28772o = this.f28758a + "advance/changeRegisterSwitch";
        }
    }

    public c a(String str, String str2, String str3) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("appId", str);
        linkedHashMap.put("deviceId", str3);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.put("sign", com.meizu.cloud.pushsdk.platform.b.a(linkedHashMap, str2));
        DebugLogger.i("PushAPI", "register post map " + linkedHashMap2);
        return com.meizu.cloud.pushsdk.c.a.b(this.f28759b).a(linkedHashMap2).a().a();
    }

    public c a(String str, String str2, String str3, int i9, boolean z10) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("appId", str);
        linkedHashMap.put(PushConstants.KEY_PUSH_ID, str3);
        linkedHashMap.put("msgType", String.valueOf(i9));
        linkedHashMap.put("subSwitch", z10 ? "1" : "0");
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.put("sign", com.meizu.cloud.pushsdk.platform.b.a(linkedHashMap, str2));
        DebugLogger.i("PushAPI", this.f28763f + " switchPush post map " + linkedHashMap2);
        return com.meizu.cloud.pushsdk.c.a.b(this.f28763f).a(linkedHashMap2).a().a();
    }

    public c<String> a(String str, String str2, String str3, File file) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RemoteMessageConst.MSGID, str);
        linkedHashMap.put("deviceId", str2);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.put("sign", com.meizu.cloud.pushsdk.platform.b.a(linkedHashMap, "4a2ca769d79f4856bb3bd982d30de790"));
        if (!TextUtils.isEmpty(str3)) {
            linkedHashMap2.put("errorMsg", str3);
        }
        DebugLogger.i("PushAPI", "uploadLogFile post map " + linkedHashMap2);
        return com.meizu.cloud.pushsdk.c.a.c("https://api-push.meizu.com/garcia/api/client/log/upload").a(linkedHashMap2).a("logFile", file).a().a();
    }

    public c a(String str, String str2, String str3, String str4) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("appId", str);
        linkedHashMap.put(PushConstants.KEY_PUSH_ID, str3);
        linkedHashMap.put("tags", str4);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.put("sign", com.meizu.cloud.pushsdk.platform.b.a(linkedHashMap, str2));
        DebugLogger.i("PushAPI", "subScribeTags post map " + linkedHashMap2);
        return com.meizu.cloud.pushsdk.c.a.b(this.f28765h).a(linkedHashMap2).a().a();
    }

    public c a(String str, String str2, String str3, boolean z10) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("appId", str);
        linkedHashMap.put(PushConstants.KEY_PUSH_ID, str3);
        linkedHashMap.put("subSwitch", z10 ? "1" : "0");
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.put("sign", com.meizu.cloud.pushsdk.platform.b.a(linkedHashMap, str2));
        DebugLogger.i("PushAPI", this.f28764g + " switchPush post map " + linkedHashMap2);
        return com.meizu.cloud.pushsdk.c.a.b(this.f28764g).a(linkedHashMap2).a().a();
    }

    public c b(String str, String str2, String str3) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("appId", str);
        linkedHashMap.put("deviceId", str3);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.put("sign", com.meizu.cloud.pushsdk.platform.b.a(linkedHashMap, str2));
        DebugLogger.i("PushAPI", "unregister post map " + linkedHashMap2);
        return com.meizu.cloud.pushsdk.c.a.a(this.f28760c).a(linkedHashMap2).a().a();
    }

    public c b(String str, String str2, String str3, String str4) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("appId", str);
        linkedHashMap.put(PushConstants.KEY_PUSH_ID, str3);
        linkedHashMap.put("tags", str4);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.put("sign", com.meizu.cloud.pushsdk.platform.b.a(linkedHashMap, str2));
        DebugLogger.i("PushAPI", "subScribeTags post map " + linkedHashMap2);
        return com.meizu.cloud.pushsdk.c.a.b(this.f28766i).a(linkedHashMap2).a().a();
    }

    public c c(String str, String str2, String str3) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("appId", str);
        linkedHashMap.put(PushConstants.KEY_PUSH_ID, str3);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.put("sign", com.meizu.cloud.pushsdk.platform.b.a(linkedHashMap, str2));
        DebugLogger.i("PushAPI", "checkPush post map " + linkedHashMap2);
        return com.meizu.cloud.pushsdk.c.a.a(this.f28762e).a(linkedHashMap2).a().a();
    }

    public c c(String str, String str2, String str3, String str4) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("appId", str);
        linkedHashMap.put("appKey", str2);
        linkedHashMap.put(PushConstants.KEY_PUSH_ID, str3);
        linkedHashMap.put(PushConstants.SUB_ALIAS_STATUS_NAME, str4);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.put("sign", com.meizu.cloud.pushsdk.platform.b.a(linkedHashMap, str2));
        DebugLogger.i("PushAPI", "subScribeTags post map " + linkedHashMap2);
        return com.meizu.cloud.pushsdk.c.a.b(this.f28769l).a(linkedHashMap2).a().a();
    }

    public c d(String str, String str2, String str3) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("appId", str);
        linkedHashMap.put(PushConstants.KEY_PUSH_ID, str3);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.put("sign", com.meizu.cloud.pushsdk.platform.b.a(linkedHashMap, str2));
        DebugLogger.i("PushAPI", "subScribeAllTags post map " + linkedHashMap2);
        return com.meizu.cloud.pushsdk.c.a.b(this.f28767j).a(linkedHashMap2).a().a();
    }

    public c d(String str, String str2, String str3, String str4) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("appId", str);
        linkedHashMap.put(PushConstants.KEY_PUSH_ID, str3);
        linkedHashMap.put(PushConstants.SUB_ALIAS_STATUS_NAME, str4);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.put("sign", com.meizu.cloud.pushsdk.platform.b.a(linkedHashMap, str2));
        DebugLogger.i("PushAPI", "subScribeTags post map " + linkedHashMap2);
        return com.meizu.cloud.pushsdk.c.a.b(this.f28770m).a(linkedHashMap2).a().a();
    }

    public c e(String str, String str2, String str3) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("appId", str);
        linkedHashMap.put(PushConstants.KEY_PUSH_ID, str3);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.put("sign", com.meizu.cloud.pushsdk.platform.b.a(linkedHashMap, str2));
        DebugLogger.i("PushAPI", "checkPush post map " + linkedHashMap2);
        return com.meizu.cloud.pushsdk.c.a.a(this.f28768k).a(linkedHashMap2).a().a();
    }
}
