package com.tencent.liteav.txcvodplayer.b;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcvodplayer.b.c;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    protected JSONObject f31562a;

    /* renamed from: b  reason: collision with root package name */
    public g f31563b;

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f31564a;

        /* renamed from: b  reason: collision with root package name */
        public String f31565b;

        /* renamed from: c  reason: collision with root package name */
        public List<Integer> f31566c;
    }

    public f(JSONObject jSONObject) {
        this.f31562a = jSONObject;
    }

    private g l() {
        try {
            JSONObject jSONObject = this.f31562a.getJSONObject("videoInfo").getJSONObject("masterPlayList");
            g gVar = new g();
            gVar.f31567a = jSONObject.getString("url");
            return gVar;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private String m() {
        try {
            return this.f31562a.getJSONObject("playerInfo").getString("defaultVideoClassification");
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private List<Integer> n() {
        List<a> k10 = k();
        String m10 = m();
        if (m10 == null || k10 == null) {
            return null;
        }
        for (a aVar : k10) {
            if (aVar.f31564a.equals(m10)) {
                return aVar.f31566c;
            }
        }
        return null;
    }

    public final String a() {
        if (this.f31563b == null) {
            this.f31563b = c();
        }
        g gVar = this.f31563b;
        if (gVar != null) {
            return gVar.f31567a;
        }
        return null;
    }

    public final int b() {
        if (this.f31563b == null) {
            this.f31563b = c();
        }
        g gVar = this.f31563b;
        if (gVar != null) {
            return gVar.f31571e;
        }
        return -1;
    }

    public final g c() {
        if (l() != null) {
            return l();
        }
        if (e().size() != 0) {
            List<Integer> n9 = n();
            if (n9 != null) {
                for (g gVar : e()) {
                    if (n9.contains(Integer.valueOf(gVar.f31575i))) {
                        return gVar;
                    }
                }
            }
            return e().get(0);
        }
        return f();
    }

    public final String d() {
        try {
            JSONObject jSONObject = this.f31562a.getJSONObject("coverInfo");
            if (jSONObject != null) {
                return jSONObject.getString("coverUrl");
            }
            return null;
        } catch (JSONException e10) {
            LiteavLog.e("TXPlayInfoResponse", "get cover url failed.", e10);
            return null;
        }
    }

    public final List<g> e() {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = this.f31562a.getJSONObject("videoInfo").getJSONArray("transcodeList");
            if (jSONArray != null) {
                for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i9);
                    g gVar = new g();
                    gVar.f31567a = jSONObject.getString("url");
                    gVar.f31571e = jSONObject.getInt("duration");
                    gVar.f31569c = jSONObject.getInt("width");
                    gVar.f31568b = jSONObject.getInt("height");
                    gVar.f31570d = Math.max(jSONObject.getInt("totalSize"), jSONObject.getInt("size"));
                    gVar.f31572f = jSONObject.getInt("bitrate");
                    gVar.f31575i = jSONObject.getInt("definition");
                    gVar.f31573g = jSONObject.getString("container");
                    gVar.f31574h = jSONObject.getString("templateName");
                    arrayList.add(gVar);
                }
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return arrayList;
    }

    public final g f() {
        try {
            JSONObject jSONObject = this.f31562a.getJSONObject("videoInfo").getJSONObject("sourceVideo");
            g gVar = new g();
            gVar.f31567a = jSONObject.getString("url");
            gVar.f31571e = jSONObject.getInt("duration");
            gVar.f31569c = jSONObject.getInt("width");
            gVar.f31568b = jSONObject.getInt("height");
            gVar.f31570d = Math.max(jSONObject.getInt("size"), jSONObject.getInt("totalSize"));
            gVar.f31572f = jSONObject.getInt("bitrate");
            return gVar;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public final String g() {
        try {
            JSONObject jSONObject = this.f31562a.getJSONObject("videoInfo").getJSONObject("basicInfo");
            if (jSONObject != null) {
                return jSONObject.getString("name");
            }
            return null;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public final String h() {
        try {
            JSONObject jSONObject = this.f31562a.getJSONObject("videoInfo").getJSONObject("basicInfo");
            if (jSONObject != null) {
                return jSONObject.getString("description");
            }
            return null;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public final c.b i() {
        JSONObject optJSONObject = this.f31562a.optJSONObject("imageSpriteInfo");
        if (optJSONObject != null) {
            try {
                JSONArray jSONArray = optJSONObject.getJSONArray("imageSpriteList");
                if (jSONArray != null) {
                    JSONObject jSONObject = jSONArray.getJSONObject(jSONArray.length() - 1);
                    c.b bVar = new c.b();
                    bVar.f31537b = jSONObject.getString("webVttUrl");
                    JSONArray jSONArray2 = jSONObject.getJSONArray("imageUrls");
                    ArrayList<String> arrayList = new ArrayList<>();
                    for (int i9 = 0; i9 < jSONArray2.length(); i9++) {
                        arrayList.add(jSONArray2.getString(i9));
                    }
                    bVar.f31536a = arrayList;
                    return bVar;
                }
                return null;
            } catch (JSONException unused) {
                LiteavLog.e("TXPlayInfoResponse", "v2 getImageSpriteInfo exception");
            }
        }
        return null;
    }

    public final List<c.C0326c> j() {
        JSONObject optJSONObject = this.f31562a.optJSONObject("keyFrameDescInfo");
        if (optJSONObject != null) {
            try {
                return a(optJSONObject);
            } catch (JSONException unused) {
                LiteavLog.e("TXPlayInfoResponse", "v2 parseKeyFrameDescInfo exception");
                return null;
            }
        }
        return null;
    }

    public final List<a> k() {
        try {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = this.f31562a.getJSONObject("playerInfo").getJSONArray("videoClassification");
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                a aVar = new a();
                aVar.f31564a = jSONArray.getJSONObject(i9).getString("id");
                aVar.f31565b = jSONArray.getJSONObject(i9).getString("name");
                aVar.f31566c = new ArrayList();
                JSONArray jSONArray2 = jSONArray.getJSONObject(i9).getJSONArray("definitionList");
                for (int i10 = 0; i10 < jSONArray2.length(); i10++) {
                    aVar.f31566c.add(Integer.valueOf(jSONArray2.getInt(i10)));
                }
                arrayList.add(aVar);
            }
            return arrayList;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private static List<c.C0326c> a(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray("keyFrameDescList");
        if (jSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                String string = jSONArray.getJSONObject(i9).getString("content");
                float f10 = (float) (jSONArray.getJSONObject(i9).getLong("timeOffset") / 1000.0d);
                c.C0326c c0326c = new c.C0326c();
                try {
                    c0326c.f31538a = URLDecoder.decode(string, "UTF-8");
                } catch (UnsupportedEncodingException e10) {
                    e10.printStackTrace();
                    c0326c.f31538a = "";
                }
                c0326c.f31539b = f10;
                arrayList.add(c0326c);
            }
            return arrayList;
        }
        return null;
    }
}
