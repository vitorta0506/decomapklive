package com.linecorp.linesdk;

import androidx.annotation.NonNull;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class SendMessageResponse {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private String f28060a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private Status f28061b;

    /* loaded from: classes4.dex */
    public enum Status {
        OK,
        DISCARDED
    }

    public SendMessageResponse(@NonNull String str, @NonNull Status status) {
        this.f28060a = str;
        this.f28061b = status;
    }

    @NonNull
    public static SendMessageResponse a(@NonNull JSONObject jSONObject) throws JSONException {
        Object obj = jSONObject.get("status");
        Status status = Status.OK;
        if (!obj.equals(status.name().toLowerCase())) {
            status = Status.DISCARDED;
        }
        return new SendMessageResponse(jSONObject.getString("to"), status);
    }

    public String toString() {
        return "SendMessageResponse{receiverId='" + this.f28060a + "', status='" + this.f28061b + "'}";
    }
}
