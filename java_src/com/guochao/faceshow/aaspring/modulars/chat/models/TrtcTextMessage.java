package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.modulars.translate.a;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class TrtcTextMessage extends CustomMessage {
    private static HashMap<String, String> sTranslated = new HashMap<>();
    private String content;
    private String translatedContent;

    /* loaded from: classes3.dex */
    class a implements a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f17050a;

        a(b bVar) {
            this.f17050a = bVar;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.translate.a.c
        public void onResponse(@Nullable List<String> list) {
            if (list == null || list.isEmpty()) {
                return;
            }
            TrtcTextMessage.sTranslated.put(TrtcTextMessage.this.message.getMsgID(), list.get(0));
            TrtcTextMessage.this.translatedContent = list.get(0);
            this.f17050a.a(list.get(0), TrtcTextMessage.this);
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(String str, TrtcTextMessage trtcTextMessage);
    }

    public TrtcTextMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
    }

    public static TrtcTextMessage from(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("call_type", 3);
            jSONObject.put("content", str);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return new TrtcTextMessage(V2TIMManager.getMessageManager().createCustomMessage(jSONObject.toString().getBytes(StandardCharsets.UTF_8)));
    }

    public String getContent() {
        return this.content;
    }

    public String getTranslatedContent() {
        return this.translatedContent;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public boolean isOnlineMessage() {
        return true;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.CustomMessage
    public boolean parsePrivateChatSendGiftMsg(byte[] bArr) {
        try {
            this.content = new JSONObject(new String(bArr)).optString("content");
            return true;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return true;
        }
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void translate(b bVar) {
        if (!TextUtils.isEmpty(this.translatedContent)) {
            bVar.a(this.translatedContent, this);
            return;
        }
        if (sTranslated.containsKey(this.message.getMsgID())) {
            String str = sTranslated.get(this.message.getMsgID());
            if (!TextUtils.isEmpty(str)) {
                bVar.a(str, this);
                return;
            }
        }
        com.guochao.faceshow.aaspring.modulars.translate.a.a().g(new ArrayList(Collections.singleton(this.content)), isSelf() ? getOtherLanguage() : com.guochao.faceshow.aaspring.modulars.translate.a.a().b(), new a(bVar));
    }
}
