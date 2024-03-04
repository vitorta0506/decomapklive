package com.guochao.faceshow.aaspring.beans;

import com.guochao.faceshow.promotion.data.PromotionData;
import com.guochao.faceshow.utils.GsonGetter;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class UpdateActivityBean {
    private String result;
    private String type_id;

    public static void removeActivityCache(String str) {
        PromotionData.PromotionResult promotionResult;
        try {
            String str2 = (String) new JSONObject(str).get("removeActivityId");
            PromotionData j10 = c8.b.k().j();
            if (j10 != null && (promotionResult = j10.result) != null && promotionResult.getLive() != null && !j10.result.getLive().isEmpty()) {
                Iterator<PromotionData.ResultItem> it = j10.result.getLive().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    PromotionData.ResultItem next = it.next();
                    if (next != null && String.valueOf(next.f26120id).equalsIgnoreCase(str2)) {
                        j10.result.getFullScreenLive().clear();
                        j10.result.getNormalLive().clear();
                        j10.result.getLive().remove(next);
                        break;
                    }
                }
            }
            c8.b.k().x(j10);
            c8.b.k().s();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void addActivityCache() {
        PromotionData promotionData;
        PromotionData.PromotionResult promotionResult;
        try {
            if (this.result != null && (promotionData = (PromotionData) GsonGetter.getGson().fromJson(this.result, (Class<Object>) PromotionData.class)) != null && (promotionResult = promotionData.result) != null && promotionResult.getLive() != null && !promotionData.result.getLive().isEmpty()) {
                PromotionData.ResultItem resultItem = promotionData.result.getLive().get(0);
                if (!c8.b.k().n() && !c8.b.k().m()) {
                    c8.b.k().x(promotionData);
                    return;
                }
                PromotionData j10 = c8.b.k().j();
                for (PromotionData.ResultItem resultItem2 : j10.result.getLive()) {
                    if (resultItem.f26120id == resultItem2.f26120id) {
                        return;
                    }
                }
                j10.result.getLive().add(resultItem);
                j10.result.getFullScreenLive().clear();
                j10.result.getNormalLive().clear();
                c8.b.k().x(j10);
                c8.b.k().s();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String getResult() {
        return this.result;
    }

    public String getType_id() {
        return this.type_id;
    }

    public void setResult(String str) {
        this.result = str;
    }

    public void setType_id(String str) {
        this.type_id = str;
    }
}
