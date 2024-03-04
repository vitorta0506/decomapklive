package com.guochao.faceshow.aaspring.modulars.chat.search.holder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class SearchIMUserHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private ConversationInfo f17242a;

    /* renamed from: b  reason: collision with root package name */
    private b f17243b;
    @BindView
    HeadPortraitView userAvatar;
    @BindView
    TextView userName;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SearchIMUserHolder.this.f17243b != null) {
                SearchIMUserHolder.this.f17243b.a(SearchIMUserHolder.this.f17242a);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(ConversationInfo conversationInfo);
    }

    public SearchIMUserHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_search_im_user, viewGroup, false));
        this.itemView.setOnClickListener(new a());
    }

    public void e(ConversationInfo conversationInfo, boolean z10, String str) {
        this.f17242a = conversationInfo;
        this.userName.setText(TextViewUtils.getSubStr(conversationInfo.getConversationInfoDetail().getNickName(), -1));
        SpanColorUtils.setSpannerString(this.userName, str, ContextCompat.getColor(this.itemView.getContext(), R.color.color_app_primary));
        this.userAvatar.f(conversationInfo.getConversationInfoDetail(), true);
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.user_avatar || id2 == R.id.user_name) {
            this.itemView.callOnClick();
        }
    }

    public void setOnItemClickListener(b bVar) {
        this.f17243b = bVar;
    }
}
