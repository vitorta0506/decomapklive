package com.guochao.faceshow.aaspring.modulars.live.watcher;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Optional;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.u;
import com.guochao.faceshow.aaspring.modulars.live.model.GrabGiftResult;
import com.guochao.faceshow.aaspring.modulars.live.model.GrabGiftUser;
import com.guochao.faceshow.aaspring.modulars.live.model.GrabGiftUserResult;
import com.guochao.faceshow.aaspring.modulars.live.model.TreasureMessage;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.InnerRecyclerView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.g;
import d9.e;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class BigGiftBoxFragment extends BaseLiveInfoFragment {

    /* renamed from: a  reason: collision with root package name */
    g f19950a;

    /* renamed from: c  reason: collision with root package name */
    boolean f19952c;

    /* renamed from: d  reason: collision with root package name */
    public TreasureMessage.BigGiftBox f19953d;

    /* renamed from: e  reason: collision with root package name */
    private int f19954e;
    @BindView
    TextView emptyUsers;

    /* renamed from: f  reason: collision with root package name */
    private boolean f19955f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f19957h;

    /* renamed from: i  reason: collision with root package name */
    private float f19958i;
    @BindView
    ImageView ivBoxOpen;
    @BindView
    View mBackButton;
    @BindView
    ImageView mCloseDialog;
    @BindView
    View mCountDownContainerView;
    @BindView
    TextView mFailTipsTextView;
    @BindView
    View mGrabResultView;
    @BindView
    View mOpenGiftView;
    @BindView
    InnerRecyclerView mRecyclerView;
    @BindView
    View mResultView;
    @BindView
    ImageView mShakeIconView;
    @BindView
    View mSuccessCountView;
    @BindView
    TextView mTextViewCountDown;
    @BindView
    TextView mTextViewDiamondCount;
    @BindView
    TextView mTipsTextView;
    @BindView
    View mViewShowUserList;

    /* renamed from: b  reason: collision with root package name */
    long f19951b = 10000;

    /* renamed from: g  reason: collision with root package name */
    private boolean f19956g = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class UserHolder extends BaseViewHolder {
        @BindView
        TextView bestLuck;
        @BindView
        ImageView iconSmallCoin;
        @BindView
        HeadPortraitView mAvatarView;
        @BindView
        TextView mCount;
        @BindView
        TextView mCountWeight;
        @BindView
        TextView mUserNameView;
        @BindView
        VipIndicatorView vipIndicator;

        public UserHolder(View view) {
            super(view);
        }
    }

    /* loaded from: classes3.dex */
    public class UserHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private UserHolder f19959b;

        @UiThread
        public UserHolder_ViewBinding(UserHolder userHolder, View view) {
            this.f19959b = userHolder;
            userHolder.mAvatarView = (HeadPortraitView) butterknife.internal.c.d(view, R.id.avatar_view, "field 'mAvatarView'", HeadPortraitView.class);
            userHolder.mUserNameView = (TextView) butterknife.internal.c.d(view, R.id.user_name, "field 'mUserNameView'", TextView.class);
            userHolder.mCount = (TextView) butterknife.internal.c.d(view, R.id.count, "field 'mCount'", TextView.class);
            userHolder.mCountWeight = (TextView) butterknife.internal.c.d(view, R.id.count_weight, "field 'mCountWeight'", TextView.class);
            userHolder.vipIndicator = (VipIndicatorView) butterknife.internal.c.d(view, R.id.vip_indicator, "field 'vipIndicator'", VipIndicatorView.class);
            userHolder.iconSmallCoin = (ImageView) butterknife.internal.c.d(view, R.id.icon_small_coin, "field 'iconSmallCoin'", ImageView.class);
            userHolder.bestLuck = (TextView) butterknife.internal.c.d(view, R.id.tv_best_luck, "field 'bestLuck'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            UserHolder userHolder = this.f19959b;
            if (userHolder != null) {
                this.f19959b = null;
                userHolder.mAvatarView = null;
                userHolder.mUserNameView = null;
                userHolder.mCount = null;
                userHolder.mCountWeight = null;
                userHolder.vipIndicator = null;
                userHolder.iconSmallCoin = null;
                userHolder.bestLuck = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends g {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.live.watcher.BigGiftBoxFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0193a implements e.a<Boolean> {
            C0193a() {
            }

            @Override // d9.e.a
            /* renamed from: b */
            public void a(int i9, String str, @Nullable Boolean bool) {
            }

            @Override // d9.e.a
            /* renamed from: c */
            public void onSuccess(@NonNull Boolean bool) {
                if (BigGiftBoxFragment.this.getActivity() == null || BigGiftBoxFragment.this.getView() == null) {
                    return;
                }
                BigGiftBoxFragment.this.Z1();
            }
        }

        a(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.guochao.faceshow.views.g
        public void onFinish() {
        }

        @Override // com.guochao.faceshow.views.g
        public void onTick(long j10) {
            if (BigGiftBoxFragment.this.getActivity() == null || BigGiftBoxFragment.this.getView() == null || BigGiftBoxFragment.this.b2(j10) > 5) {
                return;
            }
            BigGiftBoxFragment bigGiftBoxFragment = BigGiftBoxFragment.this;
            if (bigGiftBoxFragment.f19952c) {
                return;
            }
            bigGiftBoxFragment.f19952c = true;
            u.k(bigGiftBoxFragment.b2(j10), 0, (TextView) BigGiftBoxFragment.this.getView().findViewById(R.id.count_down_tips), new C0193a());
        }
    }

    /* loaded from: classes3.dex */
    class b extends com.guochao.faceshow.aaspring.base.http.callback.c<GrabGiftResult> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable GrabGiftResult grabGiftResult, @NonNull FaceCastBaseResponse<GrabGiftResult> faceCastBaseResponse) {
            if (grabGiftResult != null) {
                try {
                    boolean z10 = true;
                    if (BigGiftBoxFragment.this.f19953d.getBoxType() == 0) {
                        int parseInt = Integer.parseInt(grabGiftResult.getMoney());
                        BigGiftBoxFragment.this.ivBoxOpen.setImageResource(R.mipmap.icon_baoxiang_dakai);
                        BigGiftBoxFragment bigGiftBoxFragment = BigGiftBoxFragment.this;
                        if (!"1".equals(grabGiftResult.getIsSuccess()) && !"2".equals(grabGiftResult.getIsSuccess())) {
                            z10 = false;
                        }
                        bigGiftBoxFragment.a2(z10, parseInt, "0");
                        return;
                    }
                    if (grabGiftResult.getMoney().contains(".")) {
                        if (Float.parseFloat(grabGiftResult.getMoney()) > 0.0f) {
                            BigGiftBoxFragment.this.ivBoxOpen.setImageResource(R.mipmap.icon_happy_opened_full);
                        } else {
                            BigGiftBoxFragment.this.ivBoxOpen.setImageResource(R.mipmap.icon_happy_opened_empty);
                        }
                    } else if (Integer.parseInt(grabGiftResult.getMoney()) > 0) {
                        BigGiftBoxFragment.this.ivBoxOpen.setImageResource(R.mipmap.icon_happy_opened_full);
                    } else {
                        BigGiftBoxFragment.this.ivBoxOpen.setImageResource(R.mipmap.icon_happy_opened_empty);
                    }
                    BigGiftBoxFragment bigGiftBoxFragment2 = BigGiftBoxFragment.this;
                    if (!"1".equals(grabGiftResult.getIsSuccess()) && !"2".equals(grabGiftResult.getIsSuccess())) {
                        z10 = false;
                    }
                    bigGiftBoxFragment2.a2(z10, 0, grabGiftResult.getMoney());
                    return;
                } catch (Exception unused) {
                    BigGiftBoxFragment.this.a2(false, 0, "0");
                    return;
                }
            }
            BigGiftBoxFragment.this.a2(false, 0, "0");
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            BigGiftBoxFragment.this.f19955f = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<GrabGiftResult> aVar) {
            BigGiftBoxFragment.this.a2(false, 0, "0");
        }
    }

    /* loaded from: classes3.dex */
    class c extends com.guochao.faceshow.aaspring.base.http.callback.c<GrabGiftUserResult> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable GrabGiftUserResult grabGiftUserResult, @NonNull FaceCastBaseResponse<GrabGiftUserResult> faceCastBaseResponse) {
            BigGiftBoxFragment.this.mRecyclerView.setVisibility(0);
            BigGiftBoxFragment.this.mGrabResultView.setVisibility(4);
            BigGiftBoxFragment.this.mViewShowUserList.setVisibility(4);
            BigGiftBoxFragment.this.mFailTipsTextView.setVisibility(4);
            BigGiftBoxFragment.this.mBackButton.setVisibility(0);
            List<GrabGiftUser> arrayList = grabGiftUserResult == null ? new ArrayList<>() : grabGiftUserResult.getRecords();
            BigGiftBoxFragment.this.f19954e = grabGiftUserResult != null ? grabGiftUserResult.getStatus() : 0;
            if (BigGiftBoxFragment.this.f19953d.getBoxType() == 1) {
                if (BigGiftBoxFragment.this.f19958i > 0.0f) {
                    BigGiftBoxFragment.this.ivBoxOpen.setImageResource(R.mipmap.icon_happy_opened_full);
                } else {
                    BigGiftBoxFragment.this.ivBoxOpen.setImageResource(R.mipmap.icon_happy_opened_empty);
                }
            } else {
                BigGiftBoxFragment.this.ivBoxOpen.setImageResource(R.mipmap.icon_baoxiang_dakai);
            }
            BigGiftBoxFragment bigGiftBoxFragment = BigGiftBoxFragment.this;
            bigGiftBoxFragment.mRecyclerView.setAdapter(new d(arrayList));
            if (arrayList.isEmpty()) {
                onFailure(new g7.a<>(new Exception(""), -1));
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<GrabGiftUserResult> aVar) {
            BigGiftBoxFragment.this.emptyUsers.setVisibility(0);
            BigGiftBoxFragment.this.mTipsTextView.setVisibility(4);
            BigGiftBoxFragment.this.mViewShowUserList.setVisibility(4);
            BigGiftBoxFragment.this.mFailTipsTextView.setVisibility(4);
            BigGiftBoxFragment.this.mBackButton.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends RecyclerView.Adapter<UserHolder> {

        /* renamed from: a  reason: collision with root package name */
        private List<GrabGiftUser> f19964a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f19966a;

            a(int i9) {
                this.f19966a = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UserHomePageAct.start(BigGiftBoxFragment.this.getContext(), ((GrabGiftUser) d.this.f19964a.get(this.f19966a)).getUserId(), 1);
            }
        }

        public d(List<GrabGiftUser> list) {
            this.f19964a = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: b */
        public void onBindViewHolder(@NonNull UserHolder userHolder, int i9) {
            if (BigGiftBoxFragment.this.f19954e == 1 && this.f19964a.get(i9).getBestLuck() == 1) {
                if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
                    userHolder.bestLuck.setBackgroundResource(R.drawable.sharp_box_best_luck_ar);
                } else {
                    userHolder.bestLuck.setBackgroundResource(R.drawable.sharp_box_best_luck);
                }
                userHolder.bestLuck.setVisibility(0);
            } else {
                userHolder.bestLuck.setVisibility(8);
            }
            userHolder.mAvatarView.d(this.f19964a.get(i9));
            userHolder.mUserNameView.setText(this.f19964a.get(i9).getUserNickName());
            TextView textView = userHolder.mCount;
            Object[] objArr = new Object[1];
            objArr[0] = this.f19964a.get(i9).getHappyMoney() != null ? this.f19964a.get(i9).getHappyMoney() : this.f19964a.get(i9).getMoney();
            textView.setText(String.format("+%s", objArr));
            StringBuilder sb2 = new StringBuilder();
            for (GrabGiftUser grabGiftUser : this.f19964a) {
                Object[] objArr2 = new Object[1];
                objArr2[0] = grabGiftUser.getHappyMoney() != null ? grabGiftUser.getHappyMoney() : grabGiftUser.getMoney();
                String format = String.format("+%s", objArr2);
                if (sb2.length() < format.length()) {
                    sb2.setLength(0);
                    sb2.append(format);
                }
            }
            userHolder.mCountWeight.setText(sb2.toString());
            userHolder.iconSmallCoin.setImageResource(this.f19964a.get(i9).getHappyMoney() != null ? R.mipmap.icon_happy_coin : R.mipmap.icon_zb_zuanshi_small);
            if (this.f19964a.get(i9).getUserVipMsg() != null && this.f19964a.get(i9).getUserVipMsg().getIsVip() != 0) {
                userHolder.vipIndicator.setVisibility(0);
                userHolder.mUserNameView.setMaxWidth(DensityUtil.dp2px(100.0f));
                userHolder.vipIndicator.setVipLevel(this.f19964a.get(i9).getUserVipMsg().getIsVip());
            } else {
                userHolder.vipIndicator.setVisibility(8);
            }
            userHolder.itemView.setOnClickListener(new a(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* renamed from: c */
        public UserHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return new UserHolder(BigGiftBoxFragment.this.getLayoutInflater().inflate(R.layout.list_item_receive_big_gift_box_user_list, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f19964a.size();
        }
    }

    public static BigGiftBoxFragment W1(TreasureMessage.BigGiftBox bigGiftBox) {
        BigGiftBoxFragment bigGiftBoxFragment = new BigGiftBoxFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", bigGiftBox);
        bigGiftBoxFragment.setArguments(bundle);
        return bigGiftBoxFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X1(View view) {
        if (getParentFragment() instanceof BaseLiveRoomFragment) {
            ((BaseLiveRoomFragment) getParentFragment()).onBack();
        }
    }

    private void Y1(View view) {
        this.mShakeIconView.setImageResource(this.f19953d.getBoxType() == 1 ? R.mipmap.icon_happy_ready_open : R.mipmap.icon_baoxiang);
        ((ImageView) view.findViewById(R.id.success_icon)).setImageResource(this.f19953d.getBoxType() == 1 ? R.mipmap.icon_big_happy_coin : R.mipmap.icon_zb_zuanshi);
        this.ivBoxOpen.setImageResource(this.f19953d.getBoxType() == 1 ? R.mipmap.icon_happy_opened_empty : R.mipmap.icon_baoxiang_dakai);
        if (this.f19953d.getBoxType() == 1) {
            TextViewUtils.setGradientTextColor(this.mTextViewCountDown, R.color.happy_count_down_start, R.color.happy_count_down_end, 1);
        } else {
            TextViewUtils.setGradientTextColor(this.mTextViewCountDown, R.color.count_down_start, R.color.count_down_end, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a2(boolean z10, int i9, String str) {
        if (!TextUtils.isEmpty(str) && str.contains(".")) {
            this.f19958i = Math.max(i9, Float.parseFloat(str));
        } else {
            this.f19958i = Math.max(i9, Integer.parseInt(str));
        }
        if (this.f19956g) {
            return;
        }
        this.f19956g = true;
        this.f19957h = z10;
        this.mResultView.setVisibility(0);
        this.mGrabResultView.setVisibility(0);
        this.mCloseDialog.setVisibility(4);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mTipsTextView.getLayoutParams();
        if (z10) {
            TextView textView = this.mTextViewDiamondCount;
            Object[] objArr = new Object[1];
            objArr[0] = this.f19953d.getBoxType() == 1 ? str : Integer.valueOf(i9);
            textView.setText(String.format("+%s", objArr));
            this.mSuccessCountView.setVisibility(0);
            if (this.f19953d.getBoxType() == 1) {
                this.mTipsTextView.setText(getString(R.string.live_receive_happy_coin, str));
            } else {
                this.mTipsTextView.setText(getString(R.string.live_receive_giftbox_diamonds, Integer.valueOf(i9)));
            }
            this.mTipsTextView.setVisibility(0);
            this.emptyUsers.setVisibility(4);
            this.mFailTipsTextView.setVisibility(4);
            marginLayoutParams.topMargin = DensityUtil.dp2px(30.0f);
            marginLayoutParams.bottomMargin = DensityUtil.dp2px(20.0f);
            this.mRecyclerView.setVisibility(4);
        } else {
            this.mTipsTextView.setText(getString(R.string.live_receive_failed));
            marginLayoutParams.topMargin = DensityUtil.dp2px(-20.0f);
            this.mTipsTextView.setVisibility(4);
            this.mFailTipsTextView.setVisibility(0);
            marginLayoutParams.bottomMargin = 0;
            this.mRecyclerView.setVisibility(4);
            this.mSuccessCountView.setVisibility(4);
        }
        this.mTipsTextView.setLayoutParams(marginLayoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b2(long j10) {
        return (int) (((float) (j10 + 500)) / 1000.0f);
    }

    public void Z1() {
        this.mCloseDialog.setVisibility(0);
        this.mCountDownContainerView.setVisibility(0);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mShakeIconView, "scaleX", 0.1f, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mShakeIconView, "scaleY", 0.1f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(250L);
        animatorSet.start();
    }

    @OnClick
    @Optional
    public void back(View view) {
        if (this.mRecyclerView.getVisibility() == 0) {
            this.mRecyclerView.setVisibility(8);
            this.mGrabResultView.setVisibility(0);
            this.mViewShowUserList.setVisibility(0);
            if (this.f19957h) {
                this.mSuccessCountView.setVisibility(0);
                this.mTipsTextView.setVisibility(0);
                this.mFailTipsTextView.setVisibility(4);
            } else {
                this.mTipsTextView.setText(getString(R.string.live_receive_failed));
                this.mTipsTextView.setVisibility(4);
                this.mFailTipsTextView.setVisibility(0);
                this.mSuccessCountView.setVisibility(4);
            }
            view.setVisibility(4);
            this.emptyUsers.setVisibility(4);
        }
        if (this.f19953d.getBoxType() == 1) {
            if (this.f19958i > 0.0f) {
                this.ivBoxOpen.setImageResource(R.mipmap.icon_happy_opened_full);
            } else {
                this.ivBoxOpen.setImageResource(R.mipmap.icon_happy_opened_empty);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_big_gift_box;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.watcher.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BigGiftBoxFragment.this.X1(view2);
            }
        };
        view.findViewById(R.id.close).setOnClickListener(onClickListener);
        view.findViewById(R.id.close_dialog).setOnClickListener(onClickListener);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mCloseDialog.getLayoutParams();
        marginLayoutParams.topMargin = DensityUtil.dp2px(getContext(), 8.0f) + StatusBarHelper.getStatusbarHeight(getActivity());
        marginLayoutParams.setMarginEnd(DensityUtil.dp2px(getContext(), 10.0f));
        FontUtils.setFont(this.mTextViewDiamondCount, 2);
        ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).height = -1;
        long j10 = this.f19951b;
        if (j10 <= 1000) {
            Z1();
        } else {
            a aVar = new a(j10, 1000L);
            this.f19950a = aVar;
            aVar.start();
        }
        Y1(view);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        if (context instanceof BaseLiveActivity) {
            ((BaseLiveActivity) context).l0(this);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            TreasureMessage.BigGiftBox bigGiftBox = (TreasureMessage.BigGiftBox) getArguments().getParcelable("data");
            this.f19953d = bigGiftBox;
            if (bigGiftBox != null) {
                this.f19951b = bigGiftBox.getPhoneEndTime() - System.currentTimeMillis();
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        u.b(this.mShakeIconView);
        super.onDestroy();
        this.f19952c = false;
        g gVar = this.f19950a;
        if (gVar != null) {
            gVar.cancel();
            this.f19950a = null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (getActivity() instanceof BaseLiveActivity) {
            ((BaseLiveActivity) getActivity()).m0(this);
        }
    }

    @OnClick
    public void openGiftBox(View view) {
        if (DisableDoubleClickUtils.canClick(view) && !this.f19955f) {
            this.f19955f = true;
            u.a(this.mShakeIconView);
            post(this.f19953d.getBoxType() == 1 ? "tokens/live/treasure/happyGrab" : "tokens/live/treasure/grab").v("scene", Integer.valueOf(getCurrentLiveRoom().isVoiceRoom() ? 1 : 0)).v("treasureId", this.f19953d.getGiftBoxId()).v("liveId", getCurrentLiveRoom().getLiveRoomId()).M(new b());
        }
    }

    @OnClick
    public void showGiftUserList(View view) {
        post("tokens/live/treasure/detail").v("scene", Integer.valueOf(getCurrentLiveRoom().isVoiceRoom() ? 1 : 0)).v("treasureId", this.f19953d.getGiftBoxId()).v("liveId", getCurrentLiveRoom().getLiveRoomId()).M(new c());
    }
}
