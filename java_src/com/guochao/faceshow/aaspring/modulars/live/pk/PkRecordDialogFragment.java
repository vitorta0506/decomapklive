package com.guochao.faceshow.aaspring.modulars.live.pk;

import android.app.Dialog;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.beans.PkRecord;
import com.guochao.faceshow.aaspring.beans.PkRecordData;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.TimeUtil;
/* loaded from: classes3.dex */
public class PkRecordDialogFragment extends BaseRecyclerViewDialogFragment<PkRecord, BaseViewHolder> {
    @BindView
    LinearLayout llContent;
    @BindView
    TextView pkSession;
    @BindView
    TextView pkWin;
    @BindView
    TextView pkWinRate;

    /* loaded from: classes3.dex */
    class a extends c<PkRecordData> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f19707a;

        a(int i9) {
            this.f19707a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable PkRecordData pkRecordData, @NonNull FaceCastBaseResponse<PkRecordData> faceCastBaseResponse) {
            String str;
            if (pkRecordData == null) {
                PkRecordDialogFragment.this.showEmptyViewNoText();
                return;
            }
            PkRecordDialogFragment.this.pkSession.setText(TextUtils.isEmpty(pkRecordData.getPkCount()) ? "0" : pkRecordData.getPkCount());
            PkRecordDialogFragment.this.pkWin.setText(TextUtils.isEmpty(pkRecordData.getWinTimes()) ? "0" : pkRecordData.getWinTimes());
            TextView textView = PkRecordDialogFragment.this.pkWinRate;
            if (TextUtils.isEmpty(pkRecordData.getWinRoute())) {
                str = "0%";
            } else {
                str = pkRecordData.getWinRoute() + "%";
            }
            textView.setText(str);
            if (pkRecordData.getPkList() == null) {
                PkRecordDialogFragment.this.showEmptyViewNoText();
                PkRecordDialogFragment.this.notifyDataLoaded(true);
                return;
            }
            if (this.f19707a == 1 && pkRecordData.getPkList().size() == 0) {
                PkRecordDialogFragment.this.showEmptyViewNoText();
            }
            if (this.f19707a == 1) {
                PkRecordDialogFragment.this.clearAll();
                PkRecordDialogFragment.this.addDatas(pkRecordData.getPkList());
            } else {
                PkRecordDialogFragment.this.addDatas(pkRecordData.getPkList());
            }
            PkRecordDialogFragment.this.notifyDataLoaded(true);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<PkRecordData> aVar) {
            PkRecordDialogFragment.this.showEmptyViewNoText();
            PkRecordDialogFragment.this.notifyDataLoaded(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PkRecord f19709a;

        b(PkRecord pkRecord) {
            this.f19709a = pkRecord;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserHomePageAct.start(PkRecordDialogFragment.this.getContext(), this.f19709a.getRightUserId(), 1);
        }
    }

    public static PkRecordDialogFragment R1(FragmentManager fragmentManager) {
        PkRecordDialogFragment pkRecordDialogFragment = new PkRecordDialogFragment();
        pkRecordDialogFragment.setArguments(new Bundle());
        pkRecordDialogFragment.show(fragmentManager, PkRecordDialogFragment.class.getSimpleName());
        return pkRecordDialogFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.a
    /* renamed from: P1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, PkRecord pkRecord) {
        HeadPortraitView headPortraitView = (HeadPortraitView) baseViewHolder.getView(R.id.avatar_my_user);
        HeadPortraitView headPortraitView2 = (HeadPortraitView) baseViewHolder.getView(R.id.avatar_side_user);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_pk_result);
        ((TextView) baseViewHolder.getView(R.id.tv_my_fb_number)).setText(pkRecord.getLeftFcoin());
        ((TextView) baseViewHolder.getView(R.id.tv_side_fb_number)).setText(pkRecord.getRightFcoin());
        ((TextView) baseViewHolder.getView(R.id.tv_pk_time)).setText(TimeUtil.getUgcTime(getActivity(), Long.parseLong(pkRecord.getPkTime())));
        if ("1".equals(pkRecord.getIsWin())) {
            imageView.setImageResource(R.mipmap.pk_jl_win);
        } else if ("2".equals(pkRecord.getIsWin())) {
            imageView.setImageResource(R.mipmap.pk_jl_lose);
        } else {
            imageView.setImageResource(R.mipmap.pk_jl_tie);
        }
        IM_User iM_User = new IM_User();
        iM_User.setUser_id(pkRecord.getLeftUserId());
        iM_User.setImg(pkRecord.getLeftImg());
        iM_User.setCountryLogo(pkRecord.getLeftLogo());
        iM_User.setAvatar(pkRecord.getLeftAvatar());
        iM_User.setUserVipMsg(pkRecord.getLeftVipMsg());
        headPortraitView.d(iM_User);
        IM_User iM_User2 = new IM_User();
        iM_User2.setUser_id(pkRecord.getRightUserId());
        iM_User2.setImg(pkRecord.getRightImg());
        iM_User2.setCountryLogo(pkRecord.getRightLogo());
        iM_User2.setAvatar(pkRecord.getRightAvatar());
        iM_User2.setUserVipMsg(pkRecord.getRightVipMsg());
        headPortraitView2.d(iM_User2);
        headPortraitView2.setOnClickListener(new b(pkRecord));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment
    /* renamed from: Q1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, PkRecord pkRecord) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_pk_record;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.c
    public void loadData(int i9) {
        post("tokens/live/pk/getPkRecordList").v("currPage", Integer.valueOf(i9)).v("pageSize", 20).M(new a(i9));
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createBottomDialog();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (getDialog() == null || getDialog().getWindow() == null) {
            return;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getDialog().getWindow().getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        ViewGroup.LayoutParams layoutParams = this.llContent.getLayoutParams();
        layoutParams.height = displayMetrics.heightPixels / 2;
        this.llContent.setLayoutParams(layoutParams);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.item_pk_record, viewGroup, false));
    }
}
