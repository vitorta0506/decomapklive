package com.guochao.faceshow.utils;

import android.app.Activity;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import org.json.JSONException;
import org.json.JSONObject;
@Deprecated
/* loaded from: classes4.dex */
public class ArequestCallBack<ResultType> {
    public AResult aresult;
    public String data;
    public boolean isError = false;
    public JSONObject objectData;

    @Deprecated
    public ArequestCallBack(Activity activity, Ahttp ahttp) {
    }

    private void checkAResult() {
        if (this.aresult == null) {
            this.aresult = new AResult();
        }
    }

    public void onCancelled() {
    }

    public <T> void onError(g7.a<T> aVar, boolean z10) {
    }

    public void onFinished() {
    }

    public void onSuccess(String str) {
        LogUtils.i("Response", str);
        try {
            this.aresult = (AResult) GsonGetter.getGson().fromJson(str, (Class<Object>) AResult.class);
            checkAResult();
            JSONObject jSONObject = new JSONObject(str);
            try {
                this.data = jSONObject.get("result").toString();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            try {
                this.objectData = jSONObject.getJSONObject("result");
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            if (1 != this.aresult.code) {
                this.isError = true;
            }
        } catch (Exception e12) {
            checkAResult();
            e12.printStackTrace();
        }
    }

    public void onSuccessV2(String str) {
        if (str != null && str.startsWith("{")) {
            onSuccess(str);
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code", 1);
            jSONObject.put("data", str);
            jSONObject.put("msg", "");
            onSuccess(jSONObject.toString());
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    @Deprecated
    public ArequestCallBack(Activity activity) {
    }

    public ArequestCallBack() {
    }
}
