package com.tencent.liteav.txcvodplayer.b;

import android.text.TextUtils;
import com.facebook.share.internal.ShareConstants;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcvodplayer.b.c;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public String f31501a;

    /* renamed from: b  reason: collision with root package name */
    public String f31502b;

    /* renamed from: c  reason: collision with root package name */
    public String f31503c;

    /* renamed from: d  reason: collision with root package name */
    int f31504d;

    /* renamed from: e  reason: collision with root package name */
    public int f31505e;

    /* renamed from: f  reason: collision with root package name */
    public List<c.d> f31506f;

    /* renamed from: g  reason: collision with root package name */
    String f31507g;

    /* renamed from: h  reason: collision with root package name */
    public String f31508h;

    /* renamed from: i  reason: collision with root package name */
    public c.b f31509i;

    /* renamed from: j  reason: collision with root package name */
    public List<c.C0326c> f31510j;

    /* renamed from: k  reason: collision with root package name */
    private JSONObject f31511k;

    /* renamed from: l  reason: collision with root package name */
    private String f31512l;

    /* renamed from: m  reason: collision with root package name */
    private List<a> f31513m;

    /* renamed from: n  reason: collision with root package name */
    private String f31514n;

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f31515a;

        /* renamed from: b  reason: collision with root package name */
        public String f31516b;
    }

    public b(JSONObject jSONObject) {
        this.f31511k = jSONObject;
        b();
    }

    private void a(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        this.f31506f = new ArrayList();
        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i9);
            c.d dVar = new c.d();
            int optInt = jSONObject.optInt("width");
            int optInt2 = jSONObject.optInt("height");
            dVar.f31541b = optInt;
            dVar.f31542c = optInt2;
            dVar.f31540a = jSONObject.optString("resolutionName");
            dVar.f31543d = jSONObject.optString("type");
            this.f31506f.add(dVar);
        }
    }

    private void b() {
        JSONObject optJSONObject;
        try {
            JSONObject jSONObject = this.f31511k.getJSONObject(ShareConstants.WEB_DIALOG_PARAM_MEDIA);
            if (jSONObject != null) {
                JSONObject optJSONObject2 = jSONObject.optJSONObject("basicInfo");
                if (optJSONObject2 != null) {
                    this.f31501a = optJSONObject2.optString("name");
                    String optString = optJSONObject2.optString("description");
                    this.f31502b = optString;
                    if (TextUtils.isEmpty(optString)) {
                        this.f31502b = this.f31501a;
                    }
                    this.f31503c = optJSONObject2.optString("coverUrl");
                    this.f31504d = optJSONObject2.optInt("duration");
                    this.f31505e = optJSONObject2.optInt("size");
                }
                String optString2 = jSONObject.optString("audioVideoType");
                if (TextUtils.equals(optString2, "AdaptiveDynamicStream")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("streamingInfo");
                    if (jSONObject2 != null) {
                        JSONObject optJSONObject3 = jSONObject2.optJSONObject("plainOutput");
                        if (optJSONObject3 != null) {
                            this.f31512l = optJSONObject3.optString("url");
                            a(optJSONObject3.optJSONArray("subStreams"));
                        }
                        JSONArray optJSONArray = jSONObject2.optJSONArray("drmOutput");
                        if (optJSONArray != null && optJSONArray.length() > 0) {
                            this.f31513m = new ArrayList();
                            for (int i9 = 0; i9 < optJSONArray.length(); i9++) {
                                JSONObject optJSONObject4 = optJSONArray.optJSONObject(i9);
                                String optString3 = optJSONObject4.optString("type");
                                String optString4 = optJSONObject4.optString("url");
                                a aVar = new a();
                                aVar.f31515a = optString3;
                                aVar.f31516b = optString4;
                                this.f31507g = optString3;
                                this.f31513m.add(aVar);
                                a(optJSONObject4.optJSONArray("subStreams"));
                            }
                        }
                        this.f31514n = jSONObject2.optString("drmToken");
                        this.f31508h = jSONObject2.optString("widevineLicenseUrl");
                    }
                } else if (TextUtils.equals(optString2, "Transcode")) {
                    JSONObject optJSONObject5 = jSONObject.optJSONObject("transcodeInfo");
                    if (optJSONObject5 != null) {
                        this.f31512l = optJSONObject5.optString("url");
                    }
                } else if (TextUtils.equals(optString2, "Original") && (optJSONObject = jSONObject.optJSONObject("originalInfo")) != null) {
                    this.f31512l = optJSONObject.optString("url");
                }
                JSONObject optJSONObject6 = jSONObject.optJSONObject("imageSpriteInfo");
                if (optJSONObject6 != null) {
                    c.b bVar = new c.b();
                    this.f31509i = bVar;
                    bVar.f31537b = optJSONObject6.getString("webVttUrl");
                    JSONArray optJSONArray2 = optJSONObject6.optJSONArray("imageUrls");
                    if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                        ArrayList<String> arrayList = new ArrayList<>();
                        for (int i10 = 0; i10 < optJSONArray2.length(); i10++) {
                            arrayList.add(optJSONArray2.getString(i10));
                        }
                        this.f31509i.f31536a = arrayList;
                    }
                }
                a(jSONObject);
            }
        } catch (JSONException e10) {
            LiteavLog.e("TXCPlayInfoParserV4", e10.getMessage());
        }
    }

    private void a(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("keyFrameDescInfo");
        if (optJSONObject != null) {
            this.f31510j = new ArrayList();
            JSONArray optJSONArray = optJSONObject.optJSONArray("keyFrameDescList");
            if (optJSONArray == null || optJSONArray.length() <= 0) {
                return;
            }
            for (int i9 = 0; i9 < optJSONArray.length(); i9++) {
                JSONObject jSONObject2 = null;
                try {
                    jSONObject2 = optJSONArray.getJSONObject(i9);
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
                c.C0326c c0326c = new c.C0326c();
                c0326c.f31539b = (float) jSONObject2.optLong("timeOffset");
                c0326c.f31538a = jSONObject2.optString("content");
                this.f31510j.add(c0326c);
            }
        }
    }

    public final String a(String str) {
        if ("plain".equalsIgnoreCase(str)) {
            return this.f31512l;
        }
        return b(str);
    }

    public final String a() {
        if (TextUtils.isEmpty(this.f31514n)) {
            return null;
        }
        return this.f31514n;
    }

    private String b(String str) {
        List<a> list = this.f31513m;
        if (list == null) {
            return null;
        }
        for (a aVar : list) {
            String str2 = aVar.f31515a;
            if (str2 != null && str2.equalsIgnoreCase(str)) {
                return aVar.f31516b;
            }
        }
        return null;
    }
}
