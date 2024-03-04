package cn.jpush.android.api;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class InAppSlotParams {

    /* renamed from: a  reason: collision with root package name */
    public int f2913a = 0;

    /* renamed from: b  reason: collision with root package name */
    public String f2914b = "";

    /* renamed from: c  reason: collision with root package name */
    public String f2915c = "";

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        InAppSlotParams f2916a = new InAppSlotParams();

        public InAppSlotParams build() {
            return this.f2916a;
        }

        public Builder setAdEvent(String str) {
            this.f2916a.f2915c = str;
            return this;
        }

        public Builder setAdSlot(String str) {
            this.f2916a.f2914b = str;
            return this;
        }

        public Builder setSequence(int i9) {
            this.f2916a.f2913a = i9;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public interface SLOT_KEY {
        public static final String EVENT = "event";
        public static final String SEQ = "sequence";
        public static final String SLOT = "slot";
    }

    public static Builder builder() {
        return new Builder();
    }

    public static InAppSlotParams parseJSONString(String str) {
        InAppSlotParams inAppSlotParams = new InAppSlotParams();
        try {
            JSONObject jSONObject = new JSONObject(str);
            inAppSlotParams.f2913a = jSONObject.optInt(SLOT_KEY.SEQ, 0);
            inAppSlotParams.f2914b = jSONObject.optString(SLOT_KEY.SLOT, "");
            inAppSlotParams.f2915c = jSONObject.optString("event", "");
        } catch (Throwable unused) {
        }
        return inAppSlotParams;
    }

    public String toJSONString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(SLOT_KEY.SEQ, this.f2913a);
            jSONObject.put(SLOT_KEY.SLOT, this.f2914b);
            jSONObject.put("event", this.f2915c);
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public String toString() {
        return "InAppSlotParams{sequence=" + this.f2913a + ", adSlot='" + this.f2914b + "', adEvent='" + this.f2915c + "'}";
    }
}
