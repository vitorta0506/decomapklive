package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.content.Context;
import android.text.TextUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.TranslateUtils;
import com.tencent.imsdk.v2.V2TIMCustomElem;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.nio.charset.StandardCharsets;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class TextMessage extends a implements d, c {
    CharSequence mContent;
    private boolean oneDay;
    private boolean sayHi;

    public TextMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
        this.sayHi = false;
        this.oneDay = false;
        this.mContent = parseContent(v2TIMMessage);
    }

    public static TextMessage from(String str) {
        return new TextMessage(V2TIMManager.getMessageManager().createTextMessage(str));
    }

    public CharSequence getContent() {
        return this.mContent;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public int getItemViewType() {
        return isSelf() ? !TextUtils.isEmpty(TranslateUtils.getPhoneLanguage()) ? (TextUtils.isEmpty(getOtherLanguage()) || getOtherLanguage().equals(TranslateUtils.getPhoneLanguage()) || BaseConfig.isChinese()) ? 1 : 17 : (TextUtils.isEmpty(TranslateUtils.getFaceCastAppLanguage()) || TextUtils.isEmpty(getOtherLanguage()) || getOtherLanguage().equals(TranslateUtils.getFaceCastAppLanguage()) || BaseConfig.isChinese()) ? 1 : 17 : !TextUtils.isEmpty(TranslateUtils.getPhoneLanguage()) ? (TextUtils.isEmpty(getOtherLanguage()) || getOtherLanguage().equals(TranslateUtils.getPhoneLanguage()) || BaseConfig.isChinese()) ? 2 : 18 : (TextUtils.isEmpty(TranslateUtils.getFaceCastAppLanguage()) || TextUtils.isEmpty(getOtherLanguage()) || getOtherLanguage().equals(TranslateUtils.getFaceCastAppLanguage()) || BaseConfig.isChinese()) ? 2 : 18;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public String getSummary(Context context) {
        String revokeSummary = getRevokeSummary();
        return revokeSummary != null ? revokeSummary : getContent().toString();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.c
    public boolean isOneDay() {
        return this.oneDay;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.d
    public boolean isSayHi() {
        return this.sayHi;
    }

    public CharSequence parseContent(V2TIMMessage v2TIMMessage) {
        return v2TIMMessage.getTextElem().getText();
    }

    public CharSequence parseOneDay(V2TIMMessage v2TIMMessage) {
        V2TIMCustomElem customElem = v2TIMMessage.getCustomElem();
        if (customElem != null) {
            try {
                return new JSONObject(new String(customElem.getData(), StandardCharsets.UTF_8)).getString("content");
            } catch (JSONException e10) {
                e10.printStackTrace();
                return "";
            }
        }
        return "";
    }

    public CharSequence parseSayHi(V2TIMMessage v2TIMMessage) {
        V2TIMCustomElem customElem = v2TIMMessage.getCustomElem();
        if (customElem != null) {
            try {
                return new JSONObject(new String(customElem.getData(), StandardCharsets.UTF_8)).getString("msgText");
            } catch (JSONException e10) {
                e10.printStackTrace();
                return "";
            }
        }
        return "";
    }

    public TextMessage(V2TIMMessage v2TIMMessage, boolean z10) {
        super(v2TIMMessage);
        this.oneDay = false;
        this.sayHi = z10;
        if (z10) {
            this.mContent = parseSayHi(v2TIMMessage);
        } else {
            this.mContent = parseContent(v2TIMMessage);
        }
    }

    public TextMessage(V2TIMMessage v2TIMMessage, boolean z10, boolean z11) {
        super(v2TIMMessage);
        this.sayHi = false;
        this.oneDay = z11;
        if (z11) {
            this.mContent = parseOneDay(v2TIMMessage);
        } else {
            this.mContent = parseContent(v2TIMMessage);
        }
    }
}
