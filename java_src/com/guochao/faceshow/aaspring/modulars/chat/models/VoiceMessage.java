package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.content.Context;
import android.media.MediaPlayer;
import android.text.TextUtils;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.chat.utils.d;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.VoiceMessageViewHolder;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3.dex */
public class VoiceMessage extends MediaMessage {
    private static final String TAG = "VoiceMessage";
    private boolean mIsPlaying;
    d.a mOnPlayListener;
    private String mVoiceFileUrl;
    WeakReference<VoiceMessageViewHolder> mVoiceMessageViewHolderWeakReference;

    /* loaded from: classes3.dex */
    class a implements d.a {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.utils.d.a
        public void a(MediaPlayer mediaPlayer) {
            WeakReference<VoiceMessageViewHolder> weakReference = VoiceMessage.this.mVoiceMessageViewHolderWeakReference;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            VoiceMessage.this.mVoiceMessageViewHolderWeakReference.get().a(mediaPlayer);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.utils.d.a
        public void b(MediaPlayer mediaPlayer) {
            WeakReference<VoiceMessageViewHolder> weakReference = VoiceMessage.this.mVoiceMessageViewHolderWeakReference;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            VoiceMessage.this.mVoiceMessageViewHolderWeakReference.get().b(mediaPlayer);
        }
    }

    public VoiceMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
    }

    public static VoiceMessage from(long j10, String str) {
        return new VoiceMessage(V2TIMManager.getMessageManager().createSoundMessage(str, (int) (j10 / 1000)));
    }

    public void bindHolder(VoiceMessageViewHolder voiceMessageViewHolder) {
        this.mVoiceMessageViewHolderWeakReference = new WeakReference<>(voiceMessageViewHolder);
    }

    public long getDuration() {
        V2TIMMessage v2TIMMessage = this.message;
        if (v2TIMMessage == null || v2TIMMessage.getSoundElem() == null) {
            return 0L;
        }
        return this.message.getSoundElem().getDuration();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public int getItemViewType() {
        return isSelf() ? 11 : 12;
    }

    public d.a getOnPlayListener() {
        if (this.mOnPlayListener == null) {
            this.mOnPlayListener = new a();
        }
        return this.mOnPlayListener;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public String getSummary(Context context) {
        String revokeSummary = getRevokeSummary();
        if (revokeSummary != null) {
            return revokeSummary;
        }
        if (TextUtils.isEmpty(getTransformedOtherLanguage())) {
            return context.getString(R.string.summary_voice);
        }
        String str = getTransformedOtherLanguage() + "_voice";
        Map<String, String> map = com.guochao.faceshow.aaspring.modulars.chat.models.a.MESSAGE_TIPS_MULTI_LANGUAGE;
        if (map.containsKey(str)) {
            String str2 = map.get(str);
            if (!TextUtils.isEmpty(str2)) {
                return str2;
            }
        }
        return context.getString(R.string.summary_voice);
    }

    public String getVoiceFileUrl() {
        return this.mVoiceFileUrl;
    }

    public boolean isPlaying() {
        return this.mIsPlaying;
    }

    public void setOnPlayListener(d.a aVar) {
        this.mOnPlayListener = aVar;
    }

    public void setPlaying(boolean z10) {
        this.mIsPlaying = z10;
    }

    public void setVoiceFileUrl(String str) {
        this.mVoiceFileUrl = str;
    }
}
