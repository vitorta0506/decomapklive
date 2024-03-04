package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.facebook.internal.security.CertificateUtil;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.ChatStatusBean;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.utils.ConversationUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.NewCircleImageView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMUserFullInfo;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class PeopleCardViewHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private Context f17287a;

    /* renamed from: b  reason: collision with root package name */
    View f17288b;

    /* renamed from: c  reason: collision with root package name */
    private String f17289c;

    /* renamed from: d  reason: collision with root package name */
    ConversationInfo f17290d;

    /* renamed from: e  reason: collision with root package name */
    int f17291e;

    /* renamed from: f  reason: collision with root package name */
    View.OnClickListener f17292f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements V2TIMValueCallback<List<V2TIMUserFullInfo>> {
        a() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(List<V2TIMUserFullInfo> list) {
            if (list.size() > 0) {
                V2TIMUserFullInfo v2TIMUserFullInfo = list.get(0);
                ConversationInfo conversationInfo = PeopleCardViewHolder.this.f17290d;
                if (conversationInfo == null) {
                    return;
                }
                if (conversationInfo.getConversationInfoDetail() == null) {
                    PeopleCardViewHolder.this.f17290d.setConversationInfoDetail(ConversationUtils.from(v2TIMUserFullInfo));
                    PeopleCardViewHolder.this.f();
                    PeopleCardViewHolder.this.i();
                }
                TextView textView = (TextView) PeopleCardViewHolder.this.f17288b.findViewById(R.id.signature);
                if (TextUtils.isEmpty(v2TIMUserFullInfo.getSelfSignature())) {
                    textView.setText(R.string.user_info_default_signature);
                } else {
                    textView.setText(v2TIMUserFullInfo.getSelfSignature());
                }
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(PeopleCardViewHolder.this.f17287a, UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, PeopleCardViewHolder.this.f17289c);
            PeopleCardViewHolder.this.f17287a.startActivity(intent);
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Space f17295a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f17296b;

        c(Space space, View view) {
            this.f17295a = space;
            this.f17296b = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewGroup.LayoutParams layoutParams = this.f17295a.getLayoutParams();
            if (this.f17296b.getVisibility() == 0) {
                int height = this.f17296b.getHeight();
                layoutParams.height = height;
                layoutParams.height = height + DensityUtil.dp2px(PeopleCardViewHolder.this.f17287a, 32.0f);
            } else {
                layoutParams.height = 0;
            }
            this.f17295a.setLayoutParams(layoutParams);
        }
    }

    public PeopleCardViewHolder(Context context, View view) {
        super(view);
        this.f17292f = new b();
        this.f17287a = context;
        this.f17288b = view;
        this.f17290d = com.guochao.faceshow.aaspring.manager.im.b.l0().g0();
    }

    private void h() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f17289c);
        V2TIMManager.getInstance().getUsersInfo(arrayList, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        VipIndicatorView vipIndicatorView = (VipIndicatorView) getView(R.id.vip_indicator_view);
        LinearLayout linearLayout = (LinearLayout) getView(R.id.user_gender_age);
        ImageView imageView = (ImageView) getView(R.id.user_gender);
        TextView textView = (TextView) getView(R.id.user_age);
        LevelView levelView = (LevelView) getView(R.id.user_level);
        LinearLayout linearLayout2 = (LinearLayout) getView(R.id.user_gender_age1);
        ImageView imageView2 = (ImageView) getView(R.id.user_gender1);
        TextView textView2 = (TextView) getView(R.id.user_age1);
        ImageView imageView3 = (ImageView) getView(R.id.mvpIV);
        ConversationInfo conversationInfo = this.f17290d;
        if (conversationInfo == null || conversationInfo.getConversationInfoDetail() == null) {
            return;
        }
        String str = this.f17290d.getConversationInfoDetail().mvpUrl;
        boolean z10 = !TextUtils.isEmpty(str);
        if (z10) {
            imageView3.setVisibility(0);
            com.bumptech.glide.c.v(imageView3).r(str).m().Q0(imageView3);
        } else {
            imageView3.setVisibility(8);
        }
        boolean z11 = this.f17290d.getConversationInfoDetail().getUserVipMsg() != null && this.f17290d.getConversationInfoDetail().getUserVipMsg().getIsVip() > 0;
        if (z11) {
            vipIndicatorView.setVisibility(0);
            vipIndicatorView.setVipLevel(this.f17290d.getConversationInfoDetail().getUserVipMsg().getIsVip());
            k(z10, true, this.f17290d.getConversationInfoDetail().getLevel());
        } else {
            vipIndicatorView.setVisibility(8);
            k(z10, false, this.f17290d.getConversationInfoDetail().getLevel());
        }
        boolean z12 = this.f17290d.getConversationInfoDetail().getAge() > 0;
        int gender = this.f17290d.getConversationInfoDetail().getGender();
        if (gender == 0) {
            imageView.setImageResource(R.mipmap.icon_ugc_female);
            linearLayout.setBackgroundResource(R.drawable.icon_user_center_female);
            imageView2.setImageResource(R.mipmap.icon_ugc_female);
            linearLayout2.setBackgroundResource(R.drawable.icon_user_center_female);
        } else if (gender != 1) {
            linearLayout.setVisibility(8);
            linearLayout2.setVisibility(8);
            imageView.setImageResource(R.mipmap.icon_ugc_unlimited_bg);
            linearLayout.setBackgroundResource(R.drawable.icon_user_center_none);
        } else {
            imageView.setImageResource(R.mipmap.icon_ugc_male);
            linearLayout.setBackgroundResource(R.drawable.icon_user_center_male);
            imageView2.setImageResource(R.mipmap.icon_ugc_male);
            linearLayout2.setBackgroundResource(R.drawable.icon_user_center_male);
        }
        if (!z12) {
            textView.setVisibility(8);
            imageView.setVisibility(8);
        } else {
            imageView.setVisibility(0);
            textView.setVisibility(0);
            textView2.setVisibility(0);
            textView.setText(String.valueOf(this.f17290d.getConversationInfoDetail().getAge()));
            textView2.setText(String.valueOf(this.f17290d.getConversationInfoDetail().getAge()));
        }
        if (z10 && z11) {
            linearLayout.setVisibility(8);
            linearLayout2.setVisibility(0);
            return;
        }
        linearLayout.setVisibility(0);
        linearLayout2.setVisibility(8);
    }

    private void k(boolean z10, boolean z11, int i9) {
        LevelView levelView = (LevelView) getView(R.id.user_level);
        LevelView levelView2 = (LevelView) getView(R.id.user_level1);
        TextView textView = (TextView) getView(R.id.fans_value);
        if (!z11 && !z10) {
            levelView.setVisibility(0);
            levelView.setLevel(i9);
            levelView2.setVisibility(8);
            return;
        }
        levelView.setVisibility(8);
        levelView2.setVisibility(0);
        levelView2.setLevel(i9);
        ((ViewGroup.MarginLayoutParams) textView.getLayoutParams()).setMargins(0, DensityUtil.dp2px(6.0f), 0, 0);
    }

    public void f() {
        ConversationInfo conversationInfo = this.f17290d;
        if (conversationInfo == null || conversationInfo.getConversationInfoDetail() == null) {
            return;
        }
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) this.f17288b.findViewById(R.id.user_info_address);
        hc.a.e((NewCircleImageView) this.f17288b.findViewById(R.id.avatar), this.f17290d.getConversationInfoDetail().getAvatar(), this.f17290d.getConversationInfoDetail().getGender());
        hc.a.h((ImageView) this.f17288b.findViewById(R.id.big_avatar), this.f17290d.getConversationInfoDetail().getAvatar(), R.mipmap.icon_im_person_card);
        TextViewUtils.setMaxEcplise((TextView) this.f17288b.findViewById(R.id.name), 8, this.f17290d.getConversationInfoDetail().getNickName());
        if (BaseConfig.isChinese()) {
            normalCircleImageView.setVisibility(8);
        } else {
            normalCircleImageView.setVisibility(0);
            if (this.f17290d.getConversationInfoDetail().getUserVipMsg() != null && this.f17290d.getConversationInfoDetail().getUserVipMsg().getIsVip() > 0) {
                normalCircleImageView.setBorderColor(ContextCompat.getColor(this.f17287a, R.color.color_vip_flag_color));
            } else {
                normalCircleImageView.setBorderColor(ContextCompat.getColor(this.f17287a, R.color.white));
            }
            hc.a.h(normalCircleImageView, this.f17290d.getConversationInfoDetail().getCountryFlag(), R.mipmap.ic_earth);
        }
        this.f17288b.findViewById(R.id.content).setOnClickListener(this.f17292f);
        this.f17288b.findViewById(R.id.avatar).setOnClickListener(this.f17292f);
    }

    public void g(String str) {
        this.f17289c = str;
        h();
        f();
    }

    public void j(ChatStatusBean chatStatusBean) {
        String str;
        if (chatStatusBean == null) {
            return;
        }
        this.f17291e = chatStatusBean.getAge();
        ConversationInfo conversationInfo = this.f17290d;
        if (conversationInfo != null && conversationInfo.getConversationInfoDetail() != null) {
            this.f17290d.getConversationInfoDetail().setAge(this.f17291e);
            i();
        }
        TextView textView = (TextView) this.f17288b.findViewById(R.id.fans_value);
        int fensiNum = chatStatusBean.getFensiNum();
        if (fensiNum <= 999) {
            str = this.f17287a.getString(R.string.fans) + ": " + fensiNum;
        } else if (fensiNum < 999999) {
            str = this.f17287a.getString(R.string.fans) + CertificateUtil.DELIMITER + (fensiNum / 1000) + "k";
        } else {
            str = this.f17287a.getString(R.string.fans) + CertificateUtil.DELIMITER + ((fensiNum / 1000) / 1000) + "m";
        }
        textView.setText(str);
    }

    public void l(View view) {
        Space space = (Space) getView(R.id.space);
        space.post(new c(space, view));
    }
}
