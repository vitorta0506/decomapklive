package com.guochao.faceshow.aaspring.modulars.chat.search.holder;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import b8.e;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.SearchChatRecordResult;
import com.guochao.faceshow.aaspring.manager.im.b;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.TimeUtil;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes3.dex */
public class SearchIMHistoryHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    Context f17231a;
    @BindView
    TextView chatRecord;
    @BindView
    TextView timeHistory;
    @BindView
    NormalCircleImageView userAvatar;
    @BindView
    View userDivider;
    @BindView
    NormalCircleImageView userFlag;
    @BindView
    TextView userName;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchChatRecordResult f17232a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f17233b;

        a(SearchChatRecordResult searchChatRecordResult, String str) {
            this.f17232a = searchChatRecordResult;
            this.f17233b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchChatRecordResult searchChatRecordResult = this.f17232a;
            if (searchChatRecordResult == null || searchChatRecordResult.getConversationInfo() == null) {
                return;
            }
            b.l0().e(this.f17232a.getConversationInfo(), this.f17232a.getMatchMessages().get(0));
            Context context = view.getContext();
            Intent putExtra = new Intent(view.getContext(), ChatActivity.class).putExtra("search", this.f17233b);
            Context context2 = SearchIMHistoryHolder.this.f17231a;
            context.startActivity(putExtra.putExtra("otherLanguage", SpUtils.getStr(context2, e.g().c().getUserId() + this.f17232a.getConversationInfo().getConversationId() + "otherLanguage")));
        }
    }

    public SearchIMHistoryHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_search_im_history, viewGroup, false));
        this.f17231a = viewGroup.getContext();
    }

    public void c(SearchChatRecordResult searchChatRecordResult, boolean z10, String str) {
        this.userDivider.setVisibility(4);
        if (BaseConfig.isChinese()) {
            this.userFlag.setVisibility(8);
        } else {
            this.userFlag.setVisibility(0);
        }
        if (searchChatRecordResult.getConversationInfo().getConversationInfoDetail() != null) {
            this.userName.setText(TextViewUtils.getSubStr(searchChatRecordResult.getConversationInfo().getConversationInfoDetail().getNickName(), -1));
        }
        this.chatRecord.setText((searchChatRecordResult.getMatchMessages() == null || searchChatRecordResult.getMatchMessages().isEmpty()) ? "" : com.guochao.faceshow.aaspring.modulars.chat.models.b.k(searchChatRecordResult.getMatchMessages().get(0)).getSummary());
        SpanColorUtils.setCutSpannerString(this.chatRecord, str, ContextCompat.getColor(this.itemView.getContext(), R.color.color_app_primary), 6);
        if (searchChatRecordResult.getConversationInfo().getConversationInfoDetail() != null) {
            hc.a.e(this.userAvatar, searchChatRecordResult.getConversationInfo().getConversationInfoDetail().getAvatar(), searchChatRecordResult.getConversationInfo().getConversationInfoDetail().getGender());
            if (!BaseConfig.isChinese()) {
                hc.a.h(this.userFlag, searchChatRecordResult.getConversationInfo().getConversationInfoDetail().getCountryFlag(), R.mipmap.ic_earth);
            }
        }
        this.timeHistory.setText(TimeUtil.getIMTime(this.f17231a, (searchChatRecordResult.getMatchMessages() == null || searchChatRecordResult.getMatchMessages().isEmpty()) ? 0L : System.currentTimeMillis() - (searchChatRecordResult.getMatchMessages().get(0).getTimestamp() * 1000)));
        this.itemView.setOnClickListener(new a(searchChatRecordResult, str));
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.user_avatar || id2 == R.id.user_name) {
            this.itemView.callOnClick();
        }
    }
}
