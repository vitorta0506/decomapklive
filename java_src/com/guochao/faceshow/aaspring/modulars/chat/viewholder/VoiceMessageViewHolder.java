package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.media.MediaPlayer;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.beans.VoiceHasPlayedCustom;
import com.guochao.faceshow.aaspring.modulars.chat.models.VoiceMessage;
import com.guochao.faceshow.aaspring.modulars.chat.utils.d;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.component.live.activity.FakeLiveChatActivity;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.MD5Utils;
import com.tencent.imsdk.v2.V2TIMCompleteCallback;
import com.tencent.imsdk.v2.V2TIMDownloadCallback;
import com.tencent.imsdk.v2.V2TIMElem;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMSoundElem;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class VoiceMessageViewHolder extends BaseMessageViewHolder implements d.a {

    /* renamed from: a  reason: collision with root package name */
    VoiceMessage f17349a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements V2TIMValueCallback<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VoiceMessage f17350a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.modulars.chat.models.a f17351b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ V2TIMSoundElem f17352c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.modulars.chat.viewholder.VoiceMessageViewHolder$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0166a implements V2TIMDownloadCallback {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ File f17354a;

            C0166a(File file) {
                this.f17354a = file;
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, String str) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMDownloadCallback
            public void onProgress(V2TIMElem.V2ProgressInfo v2ProgressInfo) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
                a aVar = a.this;
                VoiceMessageViewHolder.this.e(aVar.f17351b, this.f17354a);
            }
        }

        a(VoiceMessage voiceMessage, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, V2TIMSoundElem v2TIMSoundElem) {
            this.f17350a = voiceMessage;
            this.f17351b = aVar;
            this.f17352c = v2TIMSoundElem;
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(String str) {
            String mD5String = MD5Utils.getMD5String(str);
            this.f17350a.setVoiceFileUrl(str);
            File file = new File(this.f17350a.getBaseDir("voice", "original"), mD5String);
            if (file.exists()) {
                VoiceMessageViewHolder.this.e(this.f17351b, file);
            } else {
                this.f17352c.downloadSound(file.getAbsolutePath(), new C0166a(file));
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements V2TIMDownloadCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.modulars.chat.models.a f17356a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ File f17357b;

        b(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, File file) {
            this.f17356a = aVar;
            this.f17357b = file;
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMDownloadCallback
        public void onProgress(V2TIMElem.V2ProgressInfo v2ProgressInfo) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            VoiceMessageViewHolder.this.e(this.f17356a, this.f17357b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements V2TIMCompleteCallback<V2TIMMessage> {
        c() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCompleteCallback
        /* renamed from: a */
        public void onComplete(int i9, String str, V2TIMMessage v2TIMMessage) {
            View viewOrNull = VoiceMessageViewHolder.this.getViewOrNull(R.id.voice_unplayed);
            if (viewOrNull != null) {
                viewOrNull.setVisibility(8);
            }
        }
    }

    public VoiceMessageViewHolder(Context context, View view) {
        super(context, view);
    }

    private void d(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        V2TIMSoundElem v2TIMSoundElem;
        VoiceMessage voiceMessage = (VoiceMessage) aVar;
        try {
            v2TIMSoundElem = voiceMessage.getMessage().getSoundElem();
        } catch (Exception unused) {
            v2TIMSoundElem = null;
        }
        if (v2TIMSoundElem == null) {
            return;
        }
        if (v2TIMSoundElem.getUUID() == null) {
            if (!TextUtils.isEmpty(voiceMessage.getVoiceFileUrl())) {
                File file = new File(voiceMessage.getBaseDir("voice", "original"), MD5Utils.getMD5String(voiceMessage.getVoiceFileUrl()));
                if (file.exists()) {
                    e(aVar, file);
                    return;
                }
            }
            v2TIMSoundElem.getUrl(new a(voiceMessage, aVar, v2TIMSoundElem));
            return;
        }
        File file2 = new File(voiceMessage.getBaseDir("voice", "original"), v2TIMSoundElem.getUUID());
        if (file2.exists()) {
            e(aVar, file2);
        } else {
            v2TIMSoundElem.downloadSound(file2.getAbsolutePath(), new b(aVar, file2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, File file) {
        d a10 = d.a();
        a10.b(file);
        a10.setOnPlayListener(this.f17349a.getOnPlayListener());
        VoiceHasPlayedCustom voiceHasPlayedCustom = new VoiceHasPlayedCustom();
        voiceHasPlayedCustom.setHasPlayed(1);
        aVar.getMessage().setCloudCustomData(GsonGetter.getGson().toJson(voiceHasPlayedCustom));
        V2TIMManager.getMessageManager().modifyMessage(aVar.getMessage(), new c());
    }

    private void f(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        AnimationDrawable animationDrawable;
        ImageView imageView = (ImageView) getView(R.id.message_anim);
        if (aVar.isSelf()) {
            animationDrawable = (AnimationDrawable) this.mContext.getResources().getDrawable(R.drawable.animation_im_voice_indicator_send);
        } else {
            animationDrawable = (AnimationDrawable) this.mContext.getResources().getDrawable(R.drawable.animation_im_voice_indicator_receive);
        }
        imageView.setImageDrawable(animationDrawable);
        animationDrawable.start();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.utils.d.a
    public void a(MediaPlayer mediaPlayer) {
        this.f17349a.setPlaying(true);
        f(this.f17349a);
        setIsRecyclable(false);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.utils.d.a
    public void b(MediaPlayer mediaPlayer) {
        this.f17349a.setPlaying(false);
        ImageView imageView = (ImageView) getView(R.id.message_anim);
        if (this.f17349a.isSelf()) {
            imageView.setImageResource(R.mipmap.icon_im_yuyin_send);
        } else {
            imageView.setImageResource(R.mipmap.icon_im_yuyin_recieve);
        }
        setIsRecyclable(true);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onBind(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        VoiceMessage voiceMessage = (VoiceMessage) aVar2;
        this.f17349a = voiceMessage;
        voiceMessage.bindHolder(this);
        ((TextView) getView(R.id.duration)).setText(voiceMessage.getDuration() + "''");
        View view = getView(R.id.voice_content);
        int i9 = (int) (((double) this.mContext.getResources().getDisplayMetrics().widthPixels) * 0.6d);
        int min = Math.min(((int) (((double) (((long) i9) * voiceMessage.getDuration())) / 60.0d)) + ((int) (((double) this.mContext.getResources().getDisplayMetrics().widthPixels) * 0.1d)), i9) + DensityUtil.dp2px(this.mContext, 24.0f);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = min;
        view.setLayoutParams(layoutParams);
        if (!this.f17349a.isPlaying()) {
            ImageView imageView = (ImageView) getView(R.id.message_anim);
            if (aVar2.isSelf()) {
                imageView.setImageResource(R.mipmap.icon_im_yuyin_send);
            } else {
                imageView.setImageResource(R.mipmap.icon_im_yuyin_recieve);
            }
        } else {
            f(this.f17349a);
        }
        VoiceHasPlayedCustom voiceHasPlayedCustom = (VoiceHasPlayedCustom) GsonGetter.getGson().fromJson(this.f17349a.message.getCloudCustomData(), (Class<Object>) VoiceHasPlayedCustom.class);
        View viewOrNull = getViewOrNull(R.id.voice_unplayed);
        if (viewOrNull != null) {
            if (voiceHasPlayedCustom != null && voiceHasPlayedCustom.getHasPlayed() == 1) {
                viewOrNull.setVisibility(8);
            } else {
                viewOrNull.setVisibility(0);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public List<PopupMenuItem> onCreatePopupMenus(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PopupMenuItem(1, this.mContext.getString(R.string.delete)));
        if (isSelf() && aVar.getStatus() == 2) {
            arrayList.add(new PopupMenuItem(2, this.mContext.getString(R.string.chat_pullback)));
        }
        return arrayList;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder, com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
    public void onItemClick(PopupMenuItem popupMenuItem, View view) {
        super.onItemClick(popupMenuItem, view);
        int id2 = popupMenuItem.getId();
        if (id2 == 1) {
            deleteCurrentMessage();
        } else if (id2 != 2) {
        } else {
            revokeCurrentMessage();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onMessageContentClick(View view, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if ((view.getContext() instanceof FakeLiveChatActivity) && (UserStateHolder.isLivingInMic() || UserStateHolder.isLiving())) {
            ToastUtils.showToast((int) R.string.cannot_play_audio_message_when_living);
            return;
        }
        super.onMessageContentClick(view, aVar);
        d(aVar);
    }
}
