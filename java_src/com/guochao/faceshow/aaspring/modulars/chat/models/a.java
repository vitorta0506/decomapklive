package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.content.Context;
import android.text.TextUtils;
import b8.e;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import com.google.gson.JsonObject;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.TXIMUtils;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMCustomElem;
import com.tencent.imsdk.v2.V2TIMElem;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class a implements MultiItemEntity, o7.a {
    public static final int ERROR_HAS_URL = 1004;
    public static final int ERROR_LEVEL_TOO_LOW = 1003;
    public static final int ERROR_NOT_CHAT_STATUS_YET = 1002;
    public static final int ERROR_SEND_BLACK = 1000;
    public static final int ERROR_SEND_TWO_MORE_COUNT = 1001;
    public static final Map<String, String> MESSAGE_TIPS_MULTI_LANGUAGE;
    protected static final String TAG = "Message";
    private int errorCode;
    boolean greetingMessage;
    boolean hasFriendMark;
    private boolean isLook;
    private boolean isNewMessage;
    private boolean isOriginal;
    private boolean isTranslate;
    private String mConversationId;
    private int mConversationType = 1;
    private boolean mHasShowedSearch;
    private String mSearchKeyword;
    int mStatus;
    public V2TIMMessage message;
    private String otherLanguage;
    private String translate;
    private int with;

    /* renamed from: com.guochao.faceshow.aaspring.modulars.chat.models.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0160a implements V2TIMCallback {
        C0160a() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
        }
    }

    static {
        HashMap hashMap = new HashMap();
        MESSAGE_TIPS_MULTI_LANGUAGE = hashMap;
        hashMap.put("en_emoji", "[Stickers]");
        hashMap.put("ar_emoji", "[ملصقات]");
        hashMap.put("de_emoji", "[Aufkleber]");
        hashMap.put("es_emoji", "[Pegatinas]");
        hashMap.put("fr_emoji", "[Autocollants]");
        hashMap.put("hi_emoji", "[स्टिकर]");
        hashMap.put("id_emoji", "[Stiker]");
        hashMap.put("it_emoji", "[Adesivi]");
        hashMap.put("ja_emoji", "[ステッカー]");
        hashMap.put("ko_emoji", "[스티커]");
        hashMap.put("pt_emoji", "[Adesivos]");
        hashMap.put("ru_emoji", "[Наклейки]");
        hashMap.put("th_emoji", "[สติ๊กเกอร์]");
        hashMap.put("tr_emoji", " [Çıkartmalar]");
        hashMap.put("vi_emoji", "[Hình dán]");
        hashMap.put("zh_emoji", "[贴纸]");
        hashMap.put("zhr_emoji", "[貼圖]");
        hashMap.put("en_voice", "[Audio]");
        hashMap.put("ar_voice", "[صوت]");
        hashMap.put("de_voice", "[Audio]");
        hashMap.put("es_voice", "[Audio]");
        hashMap.put("fr_voice", "[Audio]");
        hashMap.put("hi_voice", "[आवाज़]");
        hashMap.put("id_voice", "[Suara]");
        hashMap.put("it_voice", "[Audio]");
        hashMap.put("ja_voice", "[オーディオ]");
        hashMap.put("ko_voice", "[음성]");
        hashMap.put("pt_voice", "[Áudio]");
        hashMap.put("ru_voice", "[Аудио]");
        hashMap.put("th_voice", "[เสียง]");
        hashMap.put("tr_voice", "[Ses]");
        hashMap.put("vi_voice", "[giọng nói]");
        hashMap.put("zh_voice", "[语音]");
        hashMap.put("zhr_voice", "[語音]");
        hashMap.put("en_video", "[Video]");
        hashMap.put("ar_video", "[فيديو قصير]");
        hashMap.put("de_video", "[Kurzvideo]");
        hashMap.put("es_video", "[Video corto]");
        hashMap.put("fr_video", "[Courte vidéo]");
        hashMap.put("hi_video", "[छोटा वीडियो]");
        hashMap.put("id_video", "[video kecil]");
        hashMap.put("it_video", "[Breve video]");
        hashMap.put("ja_video", "[短いビデオ] ");
        hashMap.put("ko_video", "[짧은 비디오]");
        hashMap.put("pt_video", "[Vídeo curto]");
        hashMap.put("ru_video", "[Короткое видео]");
        hashMap.put("th_video", "[วิดีโอขนาดเล็ก]");
        hashMap.put("tr_video", "[Video]");
        hashMap.put("vi_video", "[video ngắn]");
        hashMap.put("zh_video", "[视频]");
        hashMap.put("zhr_video", "[小視頻]");
        hashMap.put("en_image", "[Image]");
        hashMap.put("ar_image", "[صورة]");
        hashMap.put("de_image", "[Bild]");
        hashMap.put("es_image", "[Imágenes]");
        hashMap.put("fr_image", "[Image]");
        hashMap.put("hi_image", "[चित्र]");
        hashMap.put("id_image", "[gambar]");
        hashMap.put("it_image", "[Immagine]");
        hashMap.put("ja_image", "[写真]");
        hashMap.put("ko_image", "[사진]");
        hashMap.put("pt_image", "[Imagem]");
        hashMap.put("ru_image", "[Образ]");
        hashMap.put("th_image", "[รูปภาพ]");
        hashMap.put("tr_image", "[Resim]");
        hashMap.put("vi_image", "[hình ảnh]");
        hashMap.put("zh_image", "[图片]");
        hashMap.put("zhr_image", "[圖片]");
        hashMap.put("en_gift", "[Gift]");
        hashMap.put("ar_gift", "[هدية]");
        hashMap.put("de_gift", "[Geschenk]");
        hashMap.put("es_gift", "[Regalo]");
        hashMap.put("fr_gift", "[Cadeau]");
        hashMap.put("hi_gift", "[उपहार]");
        hashMap.put("id_gift", "[hadiah]");
        hashMap.put("it_gift", "[Regalo]");
        hashMap.put("ja_gift", "[プレゼント]");
        hashMap.put("ko_gift", "[선물]");
        hashMap.put("pt_gift", "[Presente]");
        hashMap.put("ru_gift", "[Подарок]");
        hashMap.put("th_gift", "[ของขวัญ]");
        hashMap.put("tr_gift", "[Hediye]");
        hashMap.put("vi_gift", "[quà tặng]");
        hashMap.put("zh_gift", "[礼物]");
        hashMap.put("zhr_gift", "[禮物]");
    }

    public a(V2TIMMessage v2TIMMessage) {
        this.message = v2TIMMessage;
        checkGreeting();
    }

    private void checkGreeting() {
        V2TIMElem elem;
        byte[] data;
        if (BaseConfig.isChinese()) {
            return;
        }
        V2TIMMessage v2TIMMessage = this.message;
        if (v2TIMMessage != null && (elem = TXIMUtils.getElem(v2TIMMessage)) != null) {
            V2TIMElem nextElem = elem.getNextElem();
            if ((nextElem instanceof V2TIMCustomElem) && (data = ((V2TIMCustomElem) nextElem).getData()) != null) {
                JsonObject jsonObject = (JsonObject) GsonGetter.getGson().fromJson(new String(data), (Class<Object>) JsonObject.class);
                if (jsonObject.has(TXIMUtils.KEY_MSG_IS_FRIEND)) {
                    this.greetingMessage = "0".equals(jsonObject.get(TXIMUtils.KEY_MSG_IS_FRIEND).getAsString());
                    this.hasFriendMark = true;
                    return;
                }
            }
        }
        this.hasFriendMark = false;
    }

    public a copyOf() {
        a k10 = b.k(this.message);
        k10.setConversationId(getConversationId());
        k10.setConversationType(getConversationType());
        return k10;
    }

    public String getConversationId() {
        return this.mConversationId;
    }

    public int getConversationType() {
        return this.mConversationType;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    @Override // com.chad.library.adapter.base.entity.MultiItemEntity
    public int getItemType() {
        if (getStatus() == 6) {
            return isSelf() ? 9 : 10;
        }
        return getItemViewType();
    }

    public int getItemViewType() {
        return 0;
    }

    public V2TIMMessage getMessage() {
        return this.message;
    }

    public String getOtherLanguage() {
        return this.otherLanguage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getRevokeSummary() {
        if (getStatus() == 6) {
            if (isSelf()) {
                return BaseApplication.getInstance().getString(R.string.You_withdrew_a_message);
            }
            return BaseApplication.getInstance().getString(R.string.The_other_party_withdrew_a_message);
        }
        return null;
    }

    public String getSearchKeyword() {
        return this.mSearchKeyword;
    }

    public String getSender() {
        return this.message.getSender() == null ? "" : this.message.getSender();
    }

    public int getStatus() {
        V2TIMMessage v2TIMMessage;
        int i9 = this.mStatus;
        return (i9 != 0 || (v2TIMMessage = this.message) == null) ? i9 : v2TIMMessage.getStatus();
    }

    public String getSummary() {
        return getSummary(BaseApplication.getInstance());
    }

    public String getSummary(Context context) {
        return null;
    }

    public long getTimestamp() {
        V2TIMMessage v2TIMMessage = this.message;
        if (v2TIMMessage == null) {
            return 0L;
        }
        return v2TIMMessage.getTimestamp();
    }

    public String getTransformedOtherLanguage() {
        if (TextUtils.isEmpty(this.otherLanguage)) {
            return null;
        }
        return Language.INDONESIA.equalsIgnoreCase(this.otherLanguage) ? "id" : (Language.SIMPLE_CHINESE.equalsIgnoreCase(this.otherLanguage) || "zh-rcn".equalsIgnoreCase(this.otherLanguage)) ? Language.SIMPLE_CHINESE : ("zh-rhk".equalsIgnoreCase(this.otherLanguage) || "zh-rtw".equalsIgnoreCase(this.otherLanguage)) ? "zhr" : this.otherLanguage;
    }

    public String getTranslate() {
        return this.translate;
    }

    public String getTranslateFiles() {
        String sender;
        File file = new File(new File(FilePathProvider.getPrivateRootPathV2("im_files")), SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID));
        if (TextUtils.isEmpty(this.message.getGroupID())) {
            file = new File(file, "c2c");
        }
        if (isSelf()) {
            sender = e.g().getUserId();
        } else {
            sender = this.message.getSender();
        }
        if (TextUtils.isEmpty(sender)) {
            sender = "unknown";
        }
        File file2 = new File(new File(file, sender), "translate");
        if (!file2.exists()) {
            file2.mkdirs();
        }
        return file2.getAbsolutePath();
    }

    public int getWith() {
        return this.with;
    }

    public boolean isGreetingMessage() {
        if (BaseConfig.isChinese()) {
            return false;
        }
        return this.greetingMessage;
    }

    public boolean isHasFriendMark() {
        return this.hasFriendMark;
    }

    public boolean isHasShowedSearch() {
        return this.mHasShowedSearch;
    }

    public boolean isLook() {
        return this.isLook;
    }

    public boolean isNewMessage() {
        return this.isNewMessage;
    }

    public boolean isOnlineMessage() {
        return false;
    }

    public boolean isOriginal() {
        return this.isOriginal;
    }

    public boolean isRead() {
        if ((this instanceof TipsMessage) || this.message.isSelf()) {
            return true;
        }
        return this.message.isRead();
    }

    public boolean isSelf() {
        return this.message.isSelf();
    }

    public boolean isTranslate() {
        return this.isTranslate;
    }

    public void remove() {
        V2TIMManager.getMessageManager().deleteMessages(new ArrayList(Collections.singletonList(this.message)), new C0160a());
    }

    public void setConversationId(String str) {
        this.mConversationId = str;
    }

    public void setConversationType(int i9) {
        this.mConversationType = i9;
    }

    public void setErrorCode(int i9) {
        this.errorCode = i9;
    }

    public void setFriend(boolean z10) {
        TXIMUtils.setMessageFriendInfo(z10, this.message);
    }

    public void setGreetingMessage(boolean z10) {
        this.greetingMessage = z10;
    }

    public void setHasFriendMark(boolean z10) {
        this.hasFriendMark = z10;
    }

    public void setHasShowedSearch(boolean z10) {
        this.mHasShowedSearch = z10;
    }

    public void setLook(boolean z10) {
        this.isLook = z10;
    }

    public void setNewMessage(boolean z10) {
        this.isNewMessage = z10;
    }

    public void setOriginal(boolean z10) {
        this.isOriginal = z10;
    }

    public void setOtherLanguage(String str) {
        this.otherLanguage = str;
    }

    public void setSearchKeyword(String str) {
        this.mSearchKeyword = str;
    }

    public void setStatus(int i9) {
        this.mStatus = i9;
    }

    public void setTranslate(String str) {
        this.translate = str;
    }

    public void setWith(int i9) {
        this.with = i9;
    }

    public boolean shouldAddToServer() {
        return true;
    }

    public boolean showNotification() {
        return true;
    }

    public void setTranslate(boolean z10) {
        this.isTranslate = z10;
    }

    public a() {
    }
}
