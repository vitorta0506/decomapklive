package com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.webkit.ProxyConfig;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.AuthorityNotifyBean;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import com.guochao.faceshow.aaspring.utils.TextDrawableUtil;
import com.guochao.faceshow.utils.TimeUtil;
import com.guochao.faceshow.views.NormalCircleImageView;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3.dex */
public class AuthorityViewHolder extends BaseViewHolder {
    @BindView
    NormalCircleImageView iconItem;
    @BindView
    TextView primaryTitle;
    @BindView
    TextView secondaryTitle;
    @BindView
    TextView timeHistory;
    @BindView
    TextView unReadNum;

    /* loaded from: classes3.dex */
    class a extends SimpleObserver<Drawable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AuthorityNotifyBean f17135a;

        a(AuthorityNotifyBean authorityNotifyBean) {
            this.f17135a = authorityNotifyBean;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        /* renamed from: a */
        public void onNext(Drawable drawable) {
            super.onNext(drawable);
            SpanColorUtils.appendSpannerDrawable(AuthorityViewHolder.this.secondaryTitle, drawable);
            if (!TextUtils.isEmpty(this.f17135a.getGiftName())) {
                AuthorityViewHolder.this.secondaryTitle.append(this.f17135a.getGiftName());
            }
            AuthorityViewHolder.this.secondaryTitle.append(ProxyConfig.MATCH_ALL_SCHEMES);
            AuthorityViewHolder.this.secondaryTitle.append(String.valueOf(this.f17135a.getGiftNum()));
        }
    }

    public AuthorityViewHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_authority_notifycation, viewGroup, false));
    }

    private void c(AuthorityNotifyBean authorityNotifyBean, BaseActivity baseActivity) {
        long j10;
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            j10 = (System.currentTimeMillis() + i.u().s().getServerTimeDiff()) - simpleDateFormat.parse(authorityNotifyBean.getContentDate()).getTime();
        } catch (Exception unused) {
            j10 = 0;
        }
        this.timeHistory.setText(TimeUtil.getIMTime(baseActivity, j10));
    }

    public void d(int i9, AuthorityNotifyBean authorityNotifyBean) {
        int i10;
        if (authorityNotifyBean == null) {
            return;
        }
        BaseActivity baseActivity = (BaseActivity) this.itemView.getContext();
        this.secondaryTitle.setText("");
        try {
            i10 = Integer.parseInt(authorityNotifyBean.getMessageType());
        } catch (Exception unused) {
            i10 = 1;
        }
        if (i10 == 1) {
            this.iconItem.setImageResource(R.mipmap.icon_im_activity);
            this.primaryTitle.setText(baseActivity.getString(R.string.Activity_reminders));
            this.secondaryTitle.append(TextUtils.isEmpty(authorityNotifyBean.getContent()) ? "" : authorityNotifyBean.getContent());
            this.secondaryTitle.setVisibility(0);
            this.timeHistory.setVisibility(0);
        } else if (i10 == 2) {
            this.iconItem.setImageResource(R.mipmap.icon_im_system);
            this.primaryTitle.setText(baseActivity.getString(R.string.System_Reminder));
            this.secondaryTitle.append(TextUtils.isEmpty(authorityNotifyBean.getContent()) ? "" : authorityNotifyBean.getContent());
            this.secondaryTitle.setVisibility(0);
            this.timeHistory.setVisibility(0);
        } else if (i10 == 3) {
            this.iconItem.setImageResource(R.mipmap.icon_im_gift);
            this.primaryTitle.setText(baseActivity.getString(R.string.Gift_Reminder));
            if (TextUtils.isEmpty(authorityNotifyBean.getGiftImg())) {
                if (!TextUtils.isEmpty(authorityNotifyBean.getGiftName())) {
                    this.secondaryTitle.append(authorityNotifyBean.getGiftName());
                    this.secondaryTitle.append(ProxyConfig.MATCH_ALL_SCHEMES);
                    this.secondaryTitle.append(String.valueOf(authorityNotifyBean.getGiftNum()));
                }
            } else {
                TextDrawableUtil.urlToDrawable(this.itemView.getContext(), authorityNotifyBean.getGiftImg(), new a(authorityNotifyBean));
            }
            this.secondaryTitle.setVisibility(0);
            this.timeHistory.setVisibility(0);
        } else if (i10 == 4) {
            this.iconItem.setImageResource(R.mipmap.icon_im_help);
            this.primaryTitle.setText(baseActivity.getString(R.string.Feedback_and_help));
            this.secondaryTitle.append(TextUtils.isEmpty(authorityNotifyBean.getContent()) ? "" : authorityNotifyBean.getContent());
            this.secondaryTitle.setVisibility(8);
            this.timeHistory.setVisibility(0);
        }
        if (TextUtils.isEmpty(this.secondaryTitle.getText().toString())) {
            this.secondaryTitle.setVisibility(8);
        }
        if (authorityNotifyBean.getUnreadCount() <= 0) {
            this.unReadNum.setVisibility(4);
        } else {
            this.unReadNum.setText(authorityNotifyBean.getUnreadCount() > 99 ? "99+" : String.valueOf(authorityNotifyBean.getUnreadCount()));
            this.unReadNum.setVisibility(0);
        }
        if (authorityNotifyBean.getMsgTimestamp() == null || authorityNotifyBean.getMsgTimestamp().longValue() <= 0) {
            return;
        }
        try {
            this.timeHistory.setText(TimeUtil.getIMTime(baseActivity, (System.currentTimeMillis() + i.u().s().getServerTimeDiff()) - authorityNotifyBean.getMsgTimestamp().longValue()));
        } catch (Exception unused2) {
            c(authorityNotifyBean, baseActivity);
        }
    }

    public void e() {
        f();
    }

    public void f() {
        this.unReadNum.setText("0");
        this.unReadNum.setVisibility(4);
    }
}
