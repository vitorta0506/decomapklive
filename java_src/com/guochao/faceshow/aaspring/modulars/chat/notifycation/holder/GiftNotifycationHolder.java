package com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder;

import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.webkit.ProxyConfig;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.UserGiftNotifyBean;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import com.guochao.faceshow.aaspring.utils.TextDrawableUtil;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.TimeUtil;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3.dex */
public class GiftNotifycationHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private UserGiftNotifyBean.ListBean f17167a;
    @BindView
    ImageView bgVideo;
    @BindView
    TextView content;
    @BindView
    ImageView iconVideo;
    @BindView
    FrameLayout iconVideoLay;
    @BindView
    TextView timeHistory;
    @BindView
    HeadPortraitView userAvatar;
    @BindView
    TextView userName;
    @BindView
    LinearLayout userNameLay;

    /* loaded from: classes3.dex */
    class a extends SimpleObserver<Drawable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserGiftNotifyBean.ListBean f17168a;

        a(UserGiftNotifyBean.ListBean listBean) {
            this.f17168a = listBean;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        /* renamed from: a */
        public void onNext(Drawable drawable) {
            super.onNext(drawable);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("  ");
            int minimumWidth = drawable.getMinimumWidth();
            int minimumHeight = drawable.getMinimumHeight();
            GiftNotifycationHolder.this.content.measure(0, 0);
            float measuredHeight = (GiftNotifycationHolder.this.content.getMeasuredHeight() - GiftNotifycationHolder.this.content.getCompoundPaddingTop()) - GiftNotifycationHolder.this.content.getCompoundPaddingBottom();
            drawable.setBounds(0, 0, (int) ((minimumWidth * measuredHeight) / minimumHeight), (int) measuredHeight);
            spannableStringBuilder.setSpan(new SpanColorUtils.VerticalCenterSpan(drawable), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 17);
            if (!TextUtils.isEmpty(this.f17168a.getGiftName())) {
                spannableStringBuilder.append((CharSequence) this.f17168a.getGiftName()).append((CharSequence) ProxyConfig.MATCH_ALL_SCHEMES).append((CharSequence) String.valueOf(this.f17168a.getGiftNum()));
            } else {
                spannableStringBuilder.append((CharSequence) ProxyConfig.MATCH_ALL_SCHEMES).append((CharSequence) String.valueOf(this.f17168a.getGiftNum()));
            }
            GiftNotifycationHolder.this.content.setText(spannableStringBuilder);
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onError(Throwable th2) {
            super.onError(th2);
            TextView textView = GiftNotifycationHolder.this.content;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f17168a.getGiftName() == null ? "" : this.f17168a.getGiftName());
            sb2.append(ProxyConfig.MATCH_ALL_SCHEMES);
            sb2.append(this.f17168a.getGiftNum());
            textView.setText(sb2.toString());
        }
    }

    public GiftNotifycationHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_gift_notify, viewGroup, false));
    }

    public void c(UserGiftNotifyBean.ListBean listBean) {
        this.f17167a = listBean;
        this.userName.setText(TextViewUtils.getSubStr(listBean.getFromNickName(), -1));
        UserBean userBean = new UserBean();
        userBean.userId = listBean.getUserId();
        userBean.sex = listBean.getFromSex();
        userBean.img = listBean.getFromImg();
        userBean.countryFlag = listBean.getCountryFlag();
        userBean.setUserVipMsg(listBean.getUserVipMsg());
        this.userAvatar.d(userBean);
        if (TextUtils.isEmpty(listBean.getVideoImg())) {
            this.iconVideoLay.setVisibility(4);
        } else {
            this.iconVideoLay.setVisibility(0);
            BaseIMListActivity.d0(this.iconVideo, listBean.getVideoImg(), this.bgVideo);
        }
        if (TextUtils.isEmpty(listBean.getVideoUrl())) {
            this.iconVideo.setVisibility(8);
        } else {
            this.iconVideo.setVisibility(0);
        }
        long j10 = 0;
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            j10 = (System.currentTimeMillis() + i.u().s().getServerTimeDiff()) - simpleDateFormat.parse(listBean.getContentDate()).getTime();
        } catch (Exception unused) {
        }
        this.timeHistory.setText(TimeUtil.getGiftTime(this.userName.getContext(), j10));
        if (TextUtils.isEmpty(listBean.getGiftImg())) {
            TextView textView = this.content;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(listBean.getGiftName() == null ? "" : listBean.getGiftName());
            sb2.append(ProxyConfig.MATCH_ALL_SCHEMES);
            sb2.append(listBean.getGiftNum());
            textView.setText(sb2.toString());
            return;
        }
        TextDrawableUtil.urlToDrawable(this.itemView.getContext(), listBean.getGiftImg(), new a(listBean));
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.avatar_view /* 2131362045 */:
            case R.id.user_name /* 2131365317 */:
            case R.id.user_name_lay /* 2131365318 */:
                if (this.f17167a != null) {
                    UserHomePageAct.start(view.getContext(), this.f17167a.getUserId());
                    return;
                }
                return;
            default:
                return;
        }
    }
}
