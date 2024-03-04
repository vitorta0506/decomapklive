package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import butterknife.ButterKnife;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.activity.MvpChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.adapter.ChatMessageAdapter;
import com.guochao.faceshow.aaspring.modulars.chat.models.TextMessage;
import com.guochao.faceshow.aaspring.utils.PopupMenu;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.guochao.faceshow.views.e;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMManager;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class BaseMessageViewHolder extends BaseViewHolder implements PopupMenu.OnMenuItemClickListener {
    public static final int MAX_SIZE = 175;
    public static final int MIN_SIZE = 120;
    public ChatMessageAdapter mAdapter;
    private View.OnClickListener mAvatarClick;
    ChatActivity mChatActivity;
    final Context mContext;
    public final ConversationInfo mConversationInfo;
    private int mMaxSize;
    public com.guochao.faceshow.aaspring.modulars.chat.models.a mMessage;
    private int mMinSize;
    private View.OnClickListener mOnClickListener;
    private View.OnLongClickListener mOnLongClickListener;
    private View.OnClickListener mRetryClickListener;
    V2TIMConversation mTIMConversation;
    UserBean mUserBean;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0164a implements e.a {
            C0164a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    dialog.dismiss();
                    BaseMessageViewHolder.this.resendMessage();
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(BaseMessageViewHolder.this.mContext, new C0164a());
            eVar.f(BaseMessageViewHolder.this.mContext.getString(R.string.chat_resend));
            eVar.show();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseMessageViewHolder baseMessageViewHolder = BaseMessageViewHolder.this;
            baseMessageViewHolder.onAvatarClick(view, baseMessageViewHolder.mMessage);
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseMessageViewHolder baseMessageViewHolder = BaseMessageViewHolder.this;
            baseMessageViewHolder.onMessageContentClick(view, baseMessageViewHolder.mMessage);
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnLongClickListener {
        d() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            BaseMessageViewHolder baseMessageViewHolder = BaseMessageViewHolder.this;
            baseMessageViewHolder.onMessageContentLongClick(view, baseMessageViewHolder.mMessage);
            return true;
        }
    }

    /* loaded from: classes3.dex */
    class e implements V2TIMCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.modulars.chat.models.a f17269a;

        e(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
            this.f17269a = aVar;
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
            if (i9 == 20016) {
                ToastUtils.showToast(BaseMessageViewHolder.this.mContext, (int) R.string.time_up_for_revoke);
            } else {
                Context context = BaseMessageViewHolder.this.mContext;
                ToastUtils.debugToast(context, "撤回返回失败码:" + i9 + "--请联系开发");
            }
            BaseMessageViewHolder.this.mAdapter.notifyDataSetChanged();
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            this.f17269a.setStatus(6);
            BaseMessageViewHolder.this.mAdapter.notifyDataSetChanged();
        }
    }

    /* loaded from: classes3.dex */
    public interface f {
        void onMediaMessageClick(BaseMessageViewHolder baseMessageViewHolder, int i9, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, View view);
    }

    public BaseMessageViewHolder(Context context, View view) {
        super(view);
        this.mRetryClickListener = new a();
        this.mAvatarClick = new b();
        this.mOnClickListener = new c();
        this.mOnLongClickListener = new d();
        ButterKnife.c(this, view);
        this.mContext = context;
        this.mConversationInfo = com.guochao.faceshow.aaspring.manager.im.b.l0().g0();
        this.mUserBean = b8.e.g().c();
        this.mMaxSize = DensityUtil.dp2px(context, 175.0f);
        this.mMinSize = DensityUtil.dp2px(context, 120.0f);
    }

    public void bindAdapter(ChatMessageAdapter chatMessageAdapter) {
        this.mAdapter = chatMessageAdapter;
        this.mTIMConversation = chatMessageAdapter.j();
    }

    public void bindChatActivity(ChatActivity chatActivity) {
        this.mChatActivity = chatActivity;
    }

    public void bindViews(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        ConversationInfo conversationInfo;
        this.mMessage = aVar2;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) getViewOrNull(R.id.flag_);
        if (aVar2.isSelf()) {
            boolean isPeerRead = aVar2.getMessage().isPeerRead();
            View viewOrNull = getViewOrNull(R.id.read);
            if (viewOrNull != null) {
                viewOrNull.setVisibility(8);
                if (isPeerRead) {
                    viewOrNull.setVisibility(0);
                } else {
                    viewOrNull.setVisibility(8);
                }
            }
            if (!TextUtils.isEmpty(this.mUserBean.getAvatar())) {
                hc.a.e((ImageView) getViewOrNull(R.id.im_avatar), this.mUserBean.getAvatar(), this.mUserBean.getGender());
            }
            if (normalCircleImageView != null && (conversationInfo = this.mConversationInfo) != null && conversationInfo.isMvpConversation()) {
                normalCircleImageView.setVisibility(8);
            } else {
                if (normalCircleImageView != null) {
                    if (this.mUserBean.getUserVipMsg() != null && !TextUtils.isEmpty(this.mUserBean.getVipInfo().getVipAvatarPendentUrl())) {
                        if (this.mUserBean.getVipInfo().getVipAvatarPendentType() != 1 && this.mUserBean.getVipInfo().getVipAvatarPendentType() != 2) {
                            normalCircleImageView.setBorderColor(Color.parseColor("#FFFFFF"));
                        } else {
                            normalCircleImageView.setBorderColor(Color.parseColor("#F4C954"));
                        }
                    } else {
                        normalCircleImageView.setBorderColor(Color.parseColor("#FFFFFF"));
                    }
                }
                hc.a.h(normalCircleImageView, this.mUserBean.countryFlag, R.mipmap.ic_earth);
            }
            View viewOrNull2 = getViewOrNull(R.id.sending);
            View viewOrNull3 = getViewOrNull(R.id.sendError);
            if (viewOrNull3 != null) {
                viewOrNull3.setOnClickListener(this.mRetryClickListener);
            }
            if (isErrorMsg()) {
                if (viewOrNull2 != null) {
                    viewOrNull2.setVisibility(4);
                }
                if (viewOrNull3 != null) {
                    viewOrNull3.setVisibility(0);
                }
                if (viewOrNull != null) {
                    viewOrNull.setVisibility(8);
                }
            } else if (viewOrNull2 != null && viewOrNull3 != null) {
                int status = aVar2.getStatus();
                if (status == 1) {
                    viewOrNull2.setVisibility(0);
                    viewOrNull3.setVisibility(4);
                    if (viewOrNull != null) {
                        viewOrNull.setVisibility(8);
                    }
                } else if (status == 2) {
                    viewOrNull2.setVisibility(4);
                    viewOrNull3.setVisibility(4);
                } else if (status != 3) {
                    viewOrNull2.setVisibility(4);
                    viewOrNull3.setVisibility(4);
                } else {
                    viewOrNull2.setVisibility(4);
                    viewOrNull3.setVisibility(0);
                    if (viewOrNull != null) {
                        viewOrNull.setVisibility(8);
                    }
                }
            }
        } else {
            ConversationInfo conversationInfo2 = this.mConversationInfo;
            if (conversationInfo2 != null && conversationInfo2.getConversationInfoDetail() != null) {
                if (!TextUtils.isEmpty(this.mConversationInfo.getConversationInfoDetail().getAvatar())) {
                    if (this.mConversationInfo.isMvpConversation()) {
                        hc.a.f((ImageView) getViewOrNull(R.id.im_avatar), this.mConversationInfo.getConversationInfoDetail().getAvatar(), this.mConversationInfo.getConversationInfoDetail().getGender(), true);
                    } else {
                        hc.a.e((ImageView) getViewOrNull(R.id.im_avatar), this.mConversationInfo.getConversationInfoDetail().getAvatar(), this.mConversationInfo.getConversationInfoDetail().getGender());
                    }
                }
                if (normalCircleImageView != null && this.mConversationInfo.isMvpConversation()) {
                    normalCircleImageView.setVisibility(8);
                } else {
                    if (normalCircleImageView != null) {
                        if (this.mUserBean.getUserVipMsg() != null && !TextUtils.isEmpty(this.mUserBean.getVipInfo().getVipAvatarPendentUrl())) {
                            if (this.mUserBean.getVipInfo().getVipAvatarPendentType() != 1 && this.mUserBean.getVipInfo().getVipAvatarPendentType() != 2) {
                                normalCircleImageView.setBorderColor(Color.parseColor("#FFFFFF"));
                            } else {
                                normalCircleImageView.setBorderColor(Color.parseColor("#F4C954"));
                            }
                        } else {
                            normalCircleImageView.setBorderColor(Color.parseColor("#FFFFFF"));
                        }
                    }
                    hc.a.h(normalCircleImageView, this.mConversationInfo.getConversationInfoDetail().getCountryFlag(), R.mipmap.ic_earth);
                }
            }
        }
        View viewOrNull4 = getViewOrNull(R.id.message_content);
        if (viewOrNull4 != null) {
            viewOrNull4.setOnClickListener(this.mOnClickListener);
            viewOrNull4.setOnLongClickListener(this.mOnLongClickListener);
        }
        View viewOrNull5 = getViewOrNull(R.id.im_avatar);
        if (viewOrNull5 != null) {
            viewOrNull5.setOnClickListener(this.mAvatarClick);
        }
        onBind(aVar, aVar2);
    }

    public void clearMessageContentBackground() {
        View viewOrNull = getViewOrNull(R.id.message_content);
        if (viewOrNull != null) {
            viewOrNull.setBackground(null);
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewOrNull.getLayoutParams();
        marginLayoutParams.setMargins(0, 0, 0, 0);
        viewOrNull.setLayoutParams(marginLayoutParams);
        viewOrNull.setPadding(0, 0, 0, 0);
    }

    public void deleteCurrentMessage() {
        this.mMessage.remove();
        try {
            this.mAdapter.remove(getAdapterPosition() - this.mAdapter.getHeaderLayoutCount());
            this.mAdapter.notifyDataSetChanged();
        } catch (Exception unused) {
        }
    }

    public boolean isErrorMsg() {
        int localCustomInt = this.mMessage.getMessage().getLocalCustomInt();
        return localCustomInt >= 1000 && localCustomInt < 1500;
    }

    public boolean isSelf() {
        return this.mMessage.isSelf();
    }

    public void makeViewSize(View view, int i9, int i10) {
        int max;
        int i11;
        if (i9 >= i10) {
            max = this.mMaxSize;
            if (i9 <= max) {
                int i12 = this.mMinSize;
                max = i9 < i12 ? i12 : Math.min(i9, max);
            }
            i11 = Math.max((int) (((max * 1.0d) / i9) * i10), this.mMinSize);
        } else {
            int i13 = this.mMaxSize;
            if (i10 <= i13) {
                int i14 = this.mMinSize;
                i13 = i10 < i14 ? i14 : Math.min(i10, i13);
            }
            int i15 = i13;
            max = Math.max((int) (((i13 * 1.0d) / i10) * i9), this.mMinSize);
            i11 = i15;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = max;
        layoutParams.height = i11;
        view.setLayoutParams(layoutParams);
    }

    public void onAvatarClick(View view, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (this.mContext instanceof MvpChatActivity) {
            return;
        }
        Intent intent = new Intent(this.mContext, UserHomePageAct.class);
        intent.putExtra(Contants.USER_ID, this.mMessage.getSender());
        this.mContext.startActivity(intent);
    }

    public abstract void onBind(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2);

    public List<PopupMenuItem> onCreatePopupMenus(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
    public void onItemClick(PopupMenuItem popupMenuItem, View view) {
    }

    public void onMessageContentClick(View view, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
    }

    public void onMessageContentLongClick(View view, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        List<PopupMenuItem> onCreatePopupMenus = onCreatePopupMenus(aVar);
        if (onCreatePopupMenus == null || onCreatePopupMenus.isEmpty()) {
            return;
        }
        PopupMenu popupMenu = new PopupMenu(this.mContext);
        popupMenu.setMenus(onCreatePopupMenus(aVar));
        popupMenu.setOnMenuItemClickListener(this);
        popupMenu.show(view);
    }

    void resendMessage() {
        com.guochao.faceshow.aaspring.modulars.chat.models.a copyOf = this.mMessage.copyOf();
        try {
            this.mAdapter.remove(getAdapterPosition() - this.mAdapter.getHeaderLayoutCount());
        } catch (Exception unused) {
        }
        this.mMessage.remove();
        if (copyOf.getMessage() != null) {
            copyOf.getMessage().setLocalCustomInt(0);
        }
        ChatActivity chatActivity = this.mChatActivity;
        if (chatActivity != null) {
            if (copyOf instanceof TextMessage) {
                chatActivity.sendText(((TextMessage) copyOf).getContent().toString(), false);
            } else {
                chatActivity.checkMessageBeforeSend(copyOf);
            }
        }
    }

    public void revokeCurrentMessage() {
        com.guochao.faceshow.aaspring.modulars.chat.models.a aVar = this.mMessage;
        V2TIMManager.getMessageManager().revokeMessage(aVar.getMessage(), new e(aVar));
    }
}
