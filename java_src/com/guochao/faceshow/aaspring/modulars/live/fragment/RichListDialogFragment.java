package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.dialog.FaceCastDialog;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.RichListBaen;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.aaspring.views.q;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.tencent.ugc.UGCTransitionRules;
import java.util.List;
/* loaded from: classes3.dex */
public class RichListDialogFragment extends BaseRecyclerViewDialogFragment<RichListBaen, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private String f19320a;

    /* renamed from: b  reason: collision with root package name */
    private String f19321b;
    @BindView
    ImageView ivClose;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<RichListBaen>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f19322a;

        a(int i9) {
            this.f19322a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<RichListBaen>> aVar) {
            RichListDialogFragment.this.getRefreshableLayout().w();
            RichListDialogFragment.this.getRefreshableLayout().r();
            if (RichListDialogFragment.this.getItemCount() != 0) {
                RichListDialogFragment.this.notifyDataLoaded(true);
            } else {
                RichListDialogFragment.this.showEmptyViewNoText();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<RichListBaen> list, @NonNull FaceCastBaseResponse<List<RichListBaen>> faceCastBaseResponse) {
            RichListDialogFragment.this.getRefreshableLayout().w();
            RichListDialogFragment.this.getRefreshableLayout().r();
            if (list != null && list.size() > 0) {
                RichListDialogFragment.this.addDatas(list);
                RichListDialogFragment.this.notifyDataLoaded(true);
            } else if (this.f19322a == 1) {
                RichListDialogFragment.this.showEmptyViewNoText();
            } else {
                RichListDialogFragment.this.notifyDataLoaded(true);
            }
            RichListDialogFragment.this.hideFooterView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R1(View view) {
        dismiss();
    }

    public static RichListDialogFragment T1(FragmentManager fragmentManager, String str, String str2) {
        RichListDialogFragment richListDialogFragment = new RichListDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString("liveId", str);
        bundle.putString(Contants.USER_ID, str2);
        richListDialogFragment.setArguments(bundle);
        richListDialogFragment.show(fragmentManager, RichListDialogFragment.class.getSimpleName());
        return richListDialogFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.a
    /* renamed from: Q1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, RichListBaen richListBaen) {
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_rank);
        HeadPortraitView headPortraitView = (HeadPortraitView) baseViewHolder.getView(R.id.avatar_user);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.tv_nick_name);
        TextView textView3 = (TextView) baseViewHolder.getView(R.id.tv_diamond);
        VipIndicatorView vipIndicatorView = (VipIndicatorView) baseViewHolder.getView(R.id.vip_indicator);
        if (i9 == 0) {
            headPortraitView.o(50.0f, 1.375f, 0);
            textView.setBackgroundResource(R.mipmap.icon_zb_top1);
            textView.setText("");
            textView2.setTextSize(15.0f);
        } else if (i9 == 1) {
            headPortraitView.o(35.0f, 1.375f, 0);
            textView.setText("");
            textView.setBackgroundResource(R.mipmap.icon_zb_top2);
        } else if (i9 == 2) {
            headPortraitView.o(35.0f, 1.375f, 0);
            textView.setText("");
            textView.setBackgroundResource(R.mipmap.icon_zb_top3);
        } else {
            headPortraitView.o(35.0f, 1.375f, 0);
            textView.setBackground(null);
            textView.setText(String.valueOf(i9 + 1));
        }
        textView2.setText(richListBaen.getNickName());
        textView3.setText(String.valueOf(richListBaen.getDiamonds()));
        headPortraitView.f(richListBaen, true);
        if (richListBaen.getUserVipMsg() != null && richListBaen.getUserVipMsg().getIsVip() != 0) {
            vipIndicatorView.setVisibility(0);
            vipIndicatorView.setVipLevel(richListBaen.getUserVipMsg().getIsVip());
            return;
        }
        vipIndicatorView.setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment
    /* renamed from: S1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, RichListBaen richListBaen) {
        UserHomePageAct.start((Activity) getActivity(), richListBaen.getUserId(), 1);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_rich_list;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        q.c(new q.a() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.n
            @Override // com.guochao.faceshow.aaspring.views.q.a
            public final void a(Object obj) {
                RichListDialogFragment.this.R1((View) obj);
            }
        }, this.ivClose);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.c
    public void loadData(int i9) {
        post("tokens/live/newLive/getSeatRichList").v("liveId", this.f19320a).v("page", Integer.valueOf(i9)).v("limit", 10).v(Contants.USER_ID, this.f19321b).M(new a(i9));
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        if (getArguments() != null) {
            this.f19320a = getArguments().getString("liveId");
            this.f19321b = getArguments().getString(Contants.USER_ID);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setParamsHeight(-1);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        FaceCastDialog createCenterDialog = createCenterDialog();
        Window window = createCenterDialog.getWindow();
        if (window != null) {
            window.getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (Build.VERSION.SDK_INT >= 28) {
                attributes.layoutInDisplayCutoutMode = 1;
                window.setAttributes(attributes);
            }
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(getResources().getColor(R.color.color_app_primary));
        }
        return createCenterDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.item_rich_list, viewGroup, false));
    }
}
