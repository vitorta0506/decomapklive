package com.guochao.faceshow.aaspring.modulars.onevone.history;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.AgeAndSexView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes3.dex */
public class OneVOneHistoryHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private OneVOneHistoryHolder f20955b;

    /* renamed from: c  reason: collision with root package name */
    private View f20956c;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ OneVOneHistoryHolder f20957a;

        a(OneVOneHistoryHolder oneVOneHistoryHolder) {
            this.f20957a = oneVOneHistoryHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20957a.onViewClicked(view);
        }
    }

    @UiThread
    public OneVOneHistoryHolder_ViewBinding(OneVOneHistoryHolder oneVOneHistoryHolder, View view) {
        this.f20955b = oneVOneHistoryHolder;
        View c10 = c.c(view, R.id.iv_header_img, "field 'ivHeaderImg' and method 'onViewClicked'");
        oneVOneHistoryHolder.ivHeaderImg = (HeadPortraitView) c.a(c10, R.id.iv_header_img, "field 'ivHeaderImg'", HeadPortraitView.class);
        this.f20956c = c10;
        c10.setOnClickListener(new a(oneVOneHistoryHolder));
        oneVOneHistoryHolder.userName = (TextView) c.d(view, R.id.user_name, "field 'userName'", TextView.class);
        oneVOneHistoryHolder.chatTime = (TextView) c.d(view, R.id.chat_time, "field 'chatTime'", TextView.class);
        oneVOneHistoryHolder.tvTotalTime = (TextView) c.d(view, R.id.tv_total_time, "field 'tvTotalTime'", TextView.class);
        oneVOneHistoryHolder.tvReceiveGift = (TextView) c.d(view, R.id.tv_receive_gift, "field 'tvReceiveGift'", TextView.class);
        oneVOneHistoryHolder.tvSendGift = (TextView) c.d(view, R.id.tv_send_gift, "field 'tvSendGift'", TextView.class);
        oneVOneHistoryHolder.tvMatchNum = (TextView) c.d(view, R.id.tv_match_num, "field 'tvMatchNum'", TextView.class);
        oneVOneHistoryHolder.userGenderAge = (AgeAndSexView) c.d(view, R.id.age_sex_view, "field 'userGenderAge'", AgeAndSexView.class);
        oneVOneHistoryHolder.levelView = (LevelView) c.d(view, R.id.level_view, "field 'levelView'", LevelView.class);
        oneVOneHistoryHolder.vipIndicatorView = (VipIndicatorView) c.d(view, R.id.vip_indicator, "field 'vipIndicatorView'", VipIndicatorView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        OneVOneHistoryHolder oneVOneHistoryHolder = this.f20955b;
        if (oneVOneHistoryHolder != null) {
            this.f20955b = null;
            oneVOneHistoryHolder.ivHeaderImg = null;
            oneVOneHistoryHolder.userName = null;
            oneVOneHistoryHolder.chatTime = null;
            oneVOneHistoryHolder.tvTotalTime = null;
            oneVOneHistoryHolder.tvReceiveGift = null;
            oneVOneHistoryHolder.tvSendGift = null;
            oneVOneHistoryHolder.tvMatchNum = null;
            oneVOneHistoryHolder.userGenderAge = null;
            oneVOneHistoryHolder.levelView = null;
            oneVOneHistoryHolder.vipIndicatorView = null;
            this.f20956c.setOnClickListener(null);
            this.f20956c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
