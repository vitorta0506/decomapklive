package com.guochao.faceshow.aaspring.modulars.user.view;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import b8.e;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Optional;
import com.bumptech.glide.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.activity.LevelActivity;
import com.guochao.faceshow.utils.DensityUtil;
import p7.h;
import p7.i;
/* loaded from: classes3.dex */
public class UserCenterSexLevel {

    /* renamed from: a  reason: collision with root package name */
    private boolean f23253a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f23254b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f23255c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f23256d;

    /* renamed from: e  reason: collision with root package name */
    private View f23257e;

    /* renamed from: f  reason: collision with root package name */
    private i f23258f;
    @BindView
    ImageView mvpIV;
    @BindView
    TextView userAge;
    @BindView
    ImageView userGender;
    @BindView
    ViewGroup userGenderLay;
    @Nullable
    @BindView
    LevelView userLevel;
    @BindView
    VipIndicatorView vipLay;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements i {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GCUser f23259a;

        a(GCUser gCUser) {
            this.f23259a = gCUser;
        }

        @Override // p7.b
        public int getAge() {
            return this.f23259a.getAge();
        }

        @Override // p7.i, p7.h
        public String getCurrentUserId() {
            return this.f23259a.getUserId();
        }

        @Override // p7.i, p7.h, p7.c
        public int getGender() {
            return this.f23259a.getGender();
        }

        @Override // p7.e
        public int getLevel() {
            return this.f23259a.getLevel();
        }
    }

    public UserCenterSexLevel(View view) {
        this.f23253a = false;
        this.f23254b = true;
        this.f23255c = true;
        this.f23256d = true;
        this.f23257e = view;
        ButterKnife.c(this, view);
    }

    private void c(int i9, int i10, int i11) {
        boolean z10 = i10 > 0;
        if (i9 == 0) {
            this.userGender.setImageResource(R.mipmap.icon_ugc_female);
            this.userGenderLay.setVisibility(0);
            this.userGenderLay.setBackgroundResource(R.drawable.icon_user_center_female);
            LevelView levelView = this.userLevel;
            if (levelView != null) {
                ((ViewGroup.MarginLayoutParams) levelView.getLayoutParams()).setMarginStart(DensityUtil.dp2px(0.0f));
            }
        } else if (i9 != 1) {
            this.userGenderLay.setVisibility(8);
            this.userGender.setImageResource(R.mipmap.icon_ugc_unlimited_bg);
            this.userGenderLay.setBackgroundResource(R.drawable.icon_user_center_female);
            LevelView levelView2 = this.userLevel;
            if (levelView2 != null) {
                ((ViewGroup.MarginLayoutParams) levelView2.getLayoutParams()).setMarginStart(DensityUtil.dp2px(0.0f));
            }
        } else {
            this.userGender.setImageResource(R.mipmap.icon_ugc_male);
            this.userGenderLay.setVisibility(0);
            this.userGenderLay.setBackgroundResource(R.drawable.icon_user_center_male);
            LevelView levelView3 = this.userLevel;
            if (levelView3 != null) {
                ((ViewGroup.MarginLayoutParams) levelView3.getLayoutParams()).setMarginStart(DensityUtil.dp2px(0.0f));
            }
        }
        LevelView levelView4 = this.userLevel;
        if (levelView4 != null) {
            boolean z11 = this.f23254b;
            if (z11) {
                levelView4.e(i11, z11, this.f23253a);
            } else {
                levelView4.d(i11, z11, this.f23253a);
            }
        }
        if (!z10) {
            this.userAge.setVisibility(8);
            this.userGender.setVisibility(0);
            return;
        }
        this.userGender.setVisibility(0);
        this.userAge.setVisibility(0);
        this.userAge.setText(String.valueOf(i10));
    }

    public void a(@Nullable GCUser gCUser) {
        if (gCUser != null) {
            this.f23258f = new a(gCUser);
            c(gCUser.getGender(), gCUser.getAge(), gCUser.getLevel());
            if (this.f23255c) {
                this.vipLay.setVipLevel(gCUser.getVipLevel());
            }
            if (!this.f23256d || TextUtils.isEmpty(gCUser.getMvpUrl())) {
                return;
            }
            this.mvpIV.setVisibility(0);
            c.v(this.mvpIV).r(gCUser.getMvpUrl()).Q0(this.mvpIV);
        }
    }

    public void b() {
        this.userLevel.setVisibility(8);
    }

    public void d(i iVar) {
        this.f23258f = iVar;
        if (iVar != null) {
            c(iVar.getGender(), iVar.getAge(), iVar.getLevel());
        }
        boolean z10 = iVar instanceof h;
        if (z10 && this.f23255c) {
            h hVar = (h) iVar;
            if (hVar.getVipInfo() != null) {
                this.vipLay.setVipLevel(hVar.getVipInfo().getVipLevel());
            }
        }
        if (z10 && this.f23256d) {
            h hVar2 = (h) iVar;
            if (TextUtils.isEmpty(hVar2.getMVPUrl())) {
                return;
            }
            this.mvpIV.setVisibility(0);
            c.v(this.mvpIV).r(hVar2.getMVPUrl()).Q0(this.mvpIV);
        }
    }

    @OnClick
    @Optional
    public void onViewClicked() {
        if (this.f23258f == null || !e.g().c().getUserId().equals(this.f23258f.getCurrentUserId())) {
            return;
        }
        LevelActivity.start(this.f23257e.getContext());
    }

    public UserCenterSexLevel(View view, boolean z10) {
        this(view);
        this.f23253a = z10;
    }

    public UserCenterSexLevel(View view, boolean z10, boolean z11) {
        this(view, z10);
        this.f23254b = z11;
    }

    public UserCenterSexLevel(View view, boolean z10, boolean z11, boolean z12) {
        this(view);
        this.f23253a = z10;
        this.f23254b = z11;
        this.f23255c = z12;
    }

    public UserCenterSexLevel(View view, boolean z10, boolean z11, boolean z12, boolean z13) {
        this(view);
        this.f23253a = z10;
        this.f23254b = z11;
        this.f23255c = z12;
        this.f23256d = z13;
    }
}
