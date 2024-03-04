package com.guochao.faceshow.aaspring.modulars.chat.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import b8.e;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.ChatControllerFragment;
import com.guochao.faceshow.aaspring.modulars.chat.models.CustomMessage;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.TimeUtil;
import com.tencent.imsdk.v2.V2TIMConversation;
import java.util.Collection;
import java.util.List;
/* loaded from: classes3.dex */
public class ChatMessageAdapter extends BaseMultiItemQuickAdapter<com.guochao.faceshow.aaspring.modulars.chat.models.a, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private V2TIMConversation f16868a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f16869b;

    /* renamed from: c  reason: collision with root package name */
    private final String f16870c;

    /* renamed from: d  reason: collision with root package name */
    LayoutInflater f16871d;

    /* renamed from: e  reason: collision with root package name */
    UserBean f16872e;

    /* renamed from: f  reason: collision with root package name */
    private ChatControllerFragment f16873f;

    /* renamed from: g  reason: collision with root package name */
    private a f16874g;

    /* loaded from: classes3.dex */
    public interface a {
        void a(boolean z10);
    }

    public ChatMessageAdapter(Context context, String str, List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list) {
        super(list);
        this.f16869b = context;
        this.f16870c = str;
        this.f16871d = LayoutInflater.from(context);
        this.f16872e = e.g().c();
    }

    private void n(BaseViewHolder baseViewHolder, CustomMessage customMessage, int i9) {
        if (!CustomMessage.Type.C2C_SEND_FSX1.equals(customMessage.type) || TextUtils.isEmpty(customMessage.getC2cPrivateChatMsgTips())) {
            return;
        }
        TextView textView = (TextView) baseViewHolder.getViewOrNull(R.id.tv_msg_content);
        if (customMessage.isSelf()) {
            textView.setText(customMessage.getC2cPrivateChatMsgTips());
        } else if (this.f16869b.getString(R.string.send_gift_prompt).equals(customMessage.getC2cPrivateChatMsgTips())) {
            textView.setText(this.f16869b.getString(R.string.privacy_prompt));
        } else {
            textView.setText(customMessage.getC2cPrivateChatMsgTips());
        }
    }

    public void e(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (aVar != null) {
            addData((ChatMessageAdapter) aVar);
        }
    }

    public void f(int i9, List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list) {
        addData(i9, (Collection) list);
    }

    public void g(List<com.guochao.faceshow.aaspring.modulars.chat.models.a> list) {
        addData((Collection) list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: h */
    public void convert(BaseViewHolder baseViewHolder, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        int adapterPosition = baseViewHolder.getAdapterPosition();
        TextView textView = (TextView) baseViewHolder.getViewOrNull(R.id.tv_msg_content);
        if (textView != null) {
            if (aVar.getItemType() == 10) {
                textView.setText(R.string.The_other_party_withdrew_a_message);
                return;
            } else if (aVar.getItemType() == 9) {
                textView.setText(R.string.You_withdrew_a_message);
                return;
            }
        }
        TextView textView2 = (TextView) baseViewHolder.getViewOrNull(R.id.time);
        if (textView2 != null) {
            if (adapterPosition >= getHeaderLayoutCount() + 1) {
                com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2 = (com.guochao.faceshow.aaspring.modulars.chat.models.a) getItem((adapterPosition - getHeaderLayoutCount()) - 1);
                if (aVar2 == null) {
                    textView2.setVisibility(0);
                    textView2.setText(TimeUtil.getGiftTime(this.f16869b, System.currentTimeMillis() - (aVar.getMessage().getTimestamp() * 1000)));
                } else if (aVar.getMessage().getTimestamp() - aVar2.getMessage().getTimestamp() > 300) {
                    textView2.setVisibility(0);
                    textView2.setText(TimeUtil.getGiftTime(this.f16869b, System.currentTimeMillis() - (aVar.getMessage().getTimestamp() * 1000)));
                } else {
                    textView2.setVisibility(8);
                }
            } else {
                textView2.setVisibility(0);
                textView2.setText(TimeUtil.getGiftTime(this.f16869b, System.currentTimeMillis() - (aVar.getMessage().getTimestamp() * 1000)));
            }
        }
        View viewOrNull = baseViewHolder.getViewOrNull(R.id.message_content);
        if (viewOrNull != null) {
            viewOrNull.setOnClickListener(null);
        }
        if (baseViewHolder instanceof BaseMessageViewHolder) {
            ((BaseMessageViewHolder) baseViewHolder).bindViews(null, aVar);
        }
        if (aVar instanceof CustomMessage) {
            n(baseViewHolder, (CustomMessage) aVar, baseViewHolder.getAdapterPosition());
        }
    }

    public ChatControllerFragment i() {
        return this.f16873f;
    }

    public V2TIMConversation j() {
        return this.f16868a;
    }

    public void k() {
        notifyDataSetChanged();
        a aVar = this.f16874g;
        if (aVar != null) {
            aVar.a(getData().isEmpty());
        }
    }

    public void l(ChatControllerFragment chatControllerFragment) {
        this.f16873f = chatControllerFragment;
    }

    public void m(V2TIMConversation v2TIMConversation) {
        this.f16868a = v2TIMConversation;
    }

    @Override // com.chad.library.adapter.base.BaseMultiItemQuickAdapter, com.chad.library.adapter.base.BaseQuickAdapter
    protected BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i9) {
        BaseViewHolder e10 = i8.a.e(this.f16869b, this.f16871d, viewGroup, i9);
        if (e10 instanceof BaseMessageViewHolder) {
            BaseMessageViewHolder baseMessageViewHolder = (BaseMessageViewHolder) e10;
            baseMessageViewHolder.bindAdapter(this);
            baseMessageViewHolder.bindChatActivity((ChatActivity) this.f16869b);
        }
        return e10;
    }

    public void setOnCheckDataListener(a aVar) {
        this.f16874g = aVar;
    }
}
