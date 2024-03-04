package com.guochao.faceshow.aaspring.modulars.chat.activity;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.MediaFilesFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ChatStatusBean;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.chat.adapter.ChatMessageAdapter;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.VoiceRecordFragment;
import com.guochao.faceshow.aaspring.modulars.chat.utils.ChatLimitManager;
import com.guochao.faceshow.aaspring.modulars.chat.utils.d;
import com.guochao.faceshow.aaspring.modulars.chat.utils.e;
import com.guochao.faceshow.aaspring.modulars.chat.utils.f;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.PeopleCardViewHolder;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.gift.SendGiftCallBack;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.TranslateUtils;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMManager;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public abstract class BaseChatActivity extends BaseActivity implements VoiceRecordFragment.c, MediaFilesFragment.g, u8.b, f, e {
    static final int CAPTURE_IMAGE_ACTIVITY_REQUEST_CODE = 100;
    public static final int CHAT_DETAIL_REQUEST = 1001;
    static final int IMAGE_STORE = 200;
    static final String TAG = "ChatActivity";
    public static final String TAG_PROFILE_CUSTOM_CHAT_SET = "Tag_Profile_Custom_chatSet";
    private boolean isShowedLimitDialog;
    protected boolean isTranslateLanguage;
    Bitmap mChatBitmap;
    public ChatMessageAdapter mChatMessageAdapter;
    @BindView
    ViewGroup mChatPromt;
    public ChatStatusBean mChatStatusBean;
    public String mChatUserId;
    public String mChatUserName;
    public ConversationInfo mConversationInfo;
    boolean mFromNewMatch;
    protected j8.a mGiftAnimationDispatcher;
    String mKeyword;
    protected List<c> mOnPrefetchMessageListeners;
    @Nullable
    PeopleCardViewHolder mPeopleCardViewHolder;
    @Nullable
    protected V2TIMConversation mTIMConversation;
    boolean mHasSendMessage = false;
    protected boolean isTranslate = false;
    protected String otherLanguage = "us";
    boolean isfristData = true;
    private boolean isChatStatusRequesting = false;
    boolean mFirst = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<ChatStatusBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f16646a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class RunnableC0158a implements Runnable {
            RunnableC0158a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BaseChatActivity.this.scrollToEnd(false, false);
            }
        }

        a(boolean z10) {
            this.f16646a = z10;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            BaseChatActivity.this.isChatStatusRequesting = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<ChatStatusBean> aVar) {
            LogUtils.i(BaseChatActivity.TAG, "onFailure: ");
            BaseChatActivity baseChatActivity = BaseChatActivity.this;
            baseChatActivity.showError("接口出现错误 code:" + aVar.a() + "  \r\n msg:" + aVar.c());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable ChatStatusBean chatStatusBean, @NonNull FaceCastBaseResponse<ChatStatusBean> faceCastBaseResponse) {
            if (chatStatusBean == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            BaseChatActivity.this.mChatStatusBean = chatStatusBean;
            boolean z10 = true;
            if (chatStatusBean.getIsChat() == 4 || BaseChatActivity.this.mChatStatusBean.getIsChat() == 5) {
                if (BaseChatActivity.this.mChatStatusBean.getIsChat() == 4) {
                    BaseChatActivity.this.getCurrentUser().setRiskLevel(3);
                } else {
                    BaseChatActivity.this.getCurrentUser().setRiskLevel(1);
                }
                BaseChatActivity.this.isShowedLimitDialog = true;
                ChatLimitManager.getInstance().showLimitDialog((BaseActivity) BaseChatActivity.this.getActivity());
            }
            BaseChatActivity.this.setHasRead();
            ChatStatusBean chatStatusBean2 = BaseChatActivity.this.mChatStatusBean;
            if (chatStatusBean2 != null && !TextUtils.isEmpty(chatStatusBean2.getAutoTransFlag())) {
                if (BaseConfig.isChinese()) {
                    BaseChatActivity.this.isTranslate = false;
                } else {
                    BaseChatActivity baseChatActivity = BaseChatActivity.this;
                    baseChatActivity.isTranslate = "1".equals(baseChatActivity.mChatStatusBean.getAutoTransFlag());
                }
                if (!TextUtils.isEmpty(BaseChatActivity.this.mChatStatusBean.getPreferentialLang())) {
                    BaseChatActivity baseChatActivity2 = BaseChatActivity.this;
                    baseChatActivity2.otherLanguage = baseChatActivity2.mChatStatusBean.getPreferentialLang();
                    if (!TextUtils.isEmpty(TranslateUtils.getPhoneLanguage())) {
                        BaseChatActivity baseChatActivity3 = BaseChatActivity.this;
                        baseChatActivity3.isTranslateLanguage = !baseChatActivity3.otherLanguage.equals(TranslateUtils.getPhoneLanguage());
                    } else {
                        BaseChatActivity baseChatActivity4 = BaseChatActivity.this;
                        baseChatActivity4.isTranslateLanguage = !baseChatActivity4.otherLanguage.equals(TranslateUtils.getFaceCastAppLanguage());
                    }
                }
            }
            BaseChatActivity baseChatActivity5 = BaseChatActivity.this;
            if (baseChatActivity5.isfristData) {
                baseChatActivity5.notifyData(baseChatActivity5.otherLanguage, (baseChatActivity5.isTranslate && baseChatActivity5.isTranslateLanguage) ? false : false);
                BaseChatActivity.this.isfristData = false;
            }
            BaseChatActivity baseChatActivity6 = BaseChatActivity.this;
            SpUtils.setStr(baseChatActivity6, BaseChatActivity.this.getCurrentUser().getCurrentUserId() + BaseChatActivity.this.mChatUserId + "otherLanguage", BaseChatActivity.this.otherLanguage);
            BaseChatActivity baseChatActivity7 = BaseChatActivity.this;
            PeopleCardViewHolder peopleCardViewHolder = baseChatActivity7.mPeopleCardViewHolder;
            if (peopleCardViewHolder != null) {
                peopleCardViewHolder.j(baseChatActivity7.mChatStatusBean);
            }
            BaseChatActivity.this.initChatControl(false);
            if (this.f16646a && TextUtils.isEmpty(BaseChatActivity.this.mKeyword)) {
                new Handler().post(new RunnableC0158a());
            }
            BaseChatActivity baseChatActivity8 = BaseChatActivity.this;
            ConversationInfo conversationInfo = baseChatActivity8.mConversationInfo;
            if (conversationInfo != null && baseChatActivity8.mChatStatusBean != null) {
                if (conversationInfo.getConversationInfoDetail() != null && !TextUtils.isEmpty(BaseChatActivity.this.mChatStatusBean.getPreferentialLang())) {
                    BaseChatActivity.this.mConversationInfo.getConversationInfoDetail().setPreferentialLang(BaseChatActivity.this.mChatStatusBean.getPreferentialLang());
                }
                BaseChatActivity baseChatActivity9 = BaseChatActivity.this;
                baseChatActivity9.mConversationInfo.setAppointState(baseChatActivity9.mChatStatusBean.getAppointState());
                BaseChatActivity baseChatActivity10 = BaseChatActivity.this;
                baseChatActivity10.mConversationInfo.setImAudioAppointSwitch(baseChatActivity10.mChatStatusBean.getImAudioAppointSwitch());
                BaseChatActivity baseChatActivity11 = BaseChatActivity.this;
                baseChatActivity11.mConversationInfo.setImVideoAppointSwitch(baseChatActivity11.mChatStatusBean.getImVideoAppointSwitch());
            }
            BaseChatActivity.this.refreshEndIcon();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements V2TIMCallback {
        b() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void onPrefetchMessage(List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list);
    }

    private boolean dontRemove(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("6391517");
        arrayList.add("8875441");
        return arrayList.contains(str);
    }

    protected abstract void checkSendEnable();

    public void getChatStatus(boolean z10) {
        if (this.isChatStatusRequesting) {
            return;
        }
        this.isChatStatusRequesting = true;
        post("tokens/im/sendMsg/v2/checkStatus").v("accountId", this.mChatUserId).v("isIM", 1).M(new a(z10));
    }

    public void initChatControl(boolean z10) {
        ChatStatusBean chatStatusBean = this.mChatStatusBean;
        if (chatStatusBean == null) {
            return;
        }
        PeopleCardViewHolder peopleCardViewHolder = this.mPeopleCardViewHolder;
        if (peopleCardViewHolder != null) {
            peopleCardViewHolder.j(chatStatusBean);
        }
        if (this.mChatStatusBean.getIsShowAten() == 0) {
            this.mChatPromt.setVisibility(8);
        } else {
            this.mChatPromt.setVisibility(8);
        }
        setHeaderSpace();
        if (this.mChatStatusBean.getAttentStatus() != 1) {
            if (this.mChatStatusBean.getAttentStatus() == 2) {
                if (z10) {
                    showToast(R.string.chat_followed_prompt);
                }
            } else if (this.mChatStatusBean.getAttentStatus() == 3 && z10) {
                showToast(R.string.chat_follow_prompt);
            }
        }
        if (this.mChatStatusBean.getAttentStatus() == 4 && z10) {
            showToast(R.string.chat_friend_prompt);
        }
        checkSendEnable();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    public abstract void notifyData(String str, boolean z10);

    @Override // com.guochao.faceshow.aaspring.base.fragment.MediaFilesFragment.g
    public abstract /* synthetic */ void onCameraClick(View view);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        release();
        List<c> list = this.mOnPrefetchMessageListeners;
        if (list != null) {
            list.clear();
        }
        EventBus.getDefault().unregister(this);
        this.isShowedLimitDialog = false;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.MediaFilesFragment.g
    public abstract /* synthetic */ void onGalleryClick(View view);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        getChatStatus(this.mFirst);
        this.mFirst = false;
    }

    @Override // u8.b
    public /* synthetic */ void onSelectGift(ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List list, int i9, boolean z10, SendGiftCallBack sendGiftCallBack) {
        u8.a.b(this, resourceCategoryItem, resourceListItemBean, list, i9, z10, sendGiftCallBack);
    }

    @Override // u8.b
    public /* synthetic */ void onSelectGift(GiftFragment giftFragment, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List list, int i9, boolean z10, int i10, SendGiftCallBack sendGiftCallBack) {
        u8.a.c(this, giftFragment, resourceCategoryItem, resourceListItemBean, list, i9, z10, i10, sendGiftCallBack);
    }

    protected abstract void refreshEndIcon();

    public void registerOnPrefetchMessageListener(c cVar) {
        if (this.mOnPrefetchMessageListeners == null) {
            this.mOnPrefetchMessageListeners = new ArrayList();
        }
        if (this.mOnPrefetchMessageListeners.contains(cVar)) {
            return;
        }
        this.mOnPrefetchMessageListeners.add(cVar);
    }

    public void release() {
        ConversationInfo conversationInfo = this.mConversationInfo;
        if (conversationInfo != null) {
            if (conversationInfo.isNewConversation() && !this.mHasSendMessage && !this.mConversationInfo.getIsDraft()) {
                dontRemove(b8.e.g().getUserId());
            } else {
                if (!this.mConversationInfo.getIsDraft()) {
                    this.mConversationInfo.setNewConversation(false);
                }
                com.guochao.faceshow.aaspring.manager.im.b.l0().R0(true);
            }
        }
        this.mChatStatusBean = null;
        this.mPeopleCardViewHolder = null;
        if (!TextUtils.isEmpty(this.mChatUserId)) {
            com.guochao.faceshow.aaspring.manager.im.b.l0().H(this.mChatUserId);
        }
        this.mChatUserId = null;
        this.mChatUserName = null;
        d.a().c();
        this.mHasSendMessage = false;
        this.mConversationInfo = null;
    }

    public void scrollToEnd() {
        scrollToEnd(false);
    }

    public abstract void scrollToEnd(boolean z10, boolean z11);

    public void setHasRead(boolean z10) {
        V2TIMConversation v2TIMConversation = this.mTIMConversation;
        if (v2TIMConversation != null) {
            if (v2TIMConversation.getUnreadCount() > 0 || z10) {
                V2TIMManager.getMessageManager().markC2CMessageAsRead(this.mTIMConversation.getUserID(), new b());
            }
        }
    }

    public void setHeaderSpace() {
        PeopleCardViewHolder peopleCardViewHolder = this.mPeopleCardViewHolder;
        if (peopleCardViewHolder != null) {
            peopleCardViewHolder.l(findViewById(R.id.chat_prompt));
        }
    }

    public void showError(String str) {
    }

    public void unregisterOnPrefetchMessageListener(c cVar) {
        List<c> list = this.mOnPrefetchMessageListeners;
        if (list == null) {
            return;
        }
        list.remove(cVar);
    }

    public void scrollToEnd(boolean z10) {
        scrollToEnd(z10, true);
    }

    public void setHasRead() {
        setHasRead(false);
    }
}
