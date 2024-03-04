package com.guochao.faceshow.aaspring.modulars.live.pk;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.beans.PkSelectTypeData;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.views.AvatarGroupView;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class PkTypeSelectDialogFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private LiveRoomModel f19737a;
    @BindView
    AvatarGroupView avatarGroupView;

    /* renamed from: b  reason: collision with root package name */
    private BaseLiveRoomFragment f19738b;

    /* renamed from: c  reason: collision with root package name */
    private List<LiveInfoMatchBean.ImageAvatar> f19739c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private int f19740d = 0;
    @BindView
    View llPkRecord;
    @BindView
    TextView tvFbNumber;
    @BindView
    TextView tvPkFriendToMatch;
    @BindView
    TextView tvWinNumber;

    /* loaded from: classes3.dex */
    class a extends c<PkSelectTypeData> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable PkSelectTypeData pkSelectTypeData, @NonNull FaceCastBaseResponse<PkSelectTypeData> faceCastBaseResponse) {
            String str;
            if (pkSelectTypeData == null) {
                return;
            }
            TextView textView = PkTypeSelectDialogFragment.this.tvWinNumber;
            if (TextUtils.isEmpty(pkSelectTypeData.getWinTimes())) {
                str = "x0";
            } else {
                str = x.f19108w + pkSelectTypeData.getWinTimes();
            }
            textView.setText(str);
            PkTypeSelectDialogFragment.this.tvFbNumber.setText(TextUtils.isEmpty(pkSelectTypeData.getPkFcion()) ? "0" : pkSelectTypeData.getPkFcion());
            PkTypeSelectDialogFragment.this.llPkRecord.setVisibility(0);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<PkSelectTypeData> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends c<PkSelectTypeData> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable PkSelectTypeData pkSelectTypeData, @NonNull FaceCastBaseResponse<PkSelectTypeData> faceCastBaseResponse) {
            if (pkSelectTypeData == null) {
                return;
            }
            if (pkSelectTypeData.getImgList().size() > 0) {
                PkTypeSelectDialogFragment.this.avatarGroupView.setVisibility(0);
                for (String str : pkSelectTypeData.getImgList()) {
                    LiveInfoMatchBean.ImageAvatar imageAvatar = new LiveInfoMatchBean.ImageAvatar();
                    imageAvatar.setImg(str);
                    PkTypeSelectDialogFragment.this.f19739c.add(imageAvatar);
                }
                PkTypeSelectDialogFragment pkTypeSelectDialogFragment = PkTypeSelectDialogFragment.this;
                pkTypeSelectDialogFragment.avatarGroupView.setAvatarList(pkTypeSelectDialogFragment.f19739c);
            } else {
                PkTypeSelectDialogFragment.this.avatarGroupView.setVisibility(8);
            }
            PkTypeSelectDialogFragment pkTypeSelectDialogFragment2 = PkTypeSelectDialogFragment.this;
            TextView textView = pkTypeSelectDialogFragment2.tvPkFriendToMatch;
            Object[] objArr = new Object[1];
            objArr[0] = TextUtils.isEmpty(pkSelectTypeData.getWaitPeople()) ? "" : pkSelectTypeData.getWaitPeople();
            textView.setText(pkTypeSelectDialogFragment2.getString(R.string.pk_friend_to_match, objArr));
            PkTypeSelectDialogFragment.this.tvPkFriendToMatch.setVisibility(0);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<PkSelectTypeData> aVar) {
            PkTypeSelectDialogFragment pkTypeSelectDialogFragment = PkTypeSelectDialogFragment.this;
            pkTypeSelectDialogFragment.tvPkFriendToMatch.setText(pkTypeSelectDialogFragment.getString(R.string.pk_friend_to_match, "0"));
        }
    }

    private void Q1() {
        post("tokens/user/level/findFriendList").v("limit", 3).v("page", "1").M(new b());
    }

    public static PkTypeSelectDialogFragment R1(FragmentManager fragmentManager, LiveRoomModel liveRoomModel) {
        PkTypeSelectDialogFragment pkTypeSelectDialogFragment = new PkTypeSelectDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable(BaseConfig.LIVEROOMMODEL, liveRoomModel);
        pkTypeSelectDialogFragment.setArguments(bundle);
        pkTypeSelectDialogFragment.show(fragmentManager, PkTypeSelectDialogFragment.class.getSimpleName());
        return pkTypeSelectDialogFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_pk_type_select;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.tvPkFriendToMatch.setText(getString(R.string.pk_friend_to_match, " "));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        post("tokens/live/pk/getPkTypeMsg").M(new a());
        Q1();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        this.f19738b = (BaseLiveRoomFragment) getParentFragment();
        if (getArguments() != null) {
            this.f19737a = (LiveRoomModel) getArguments().getParcelable(BaseConfig.LIVEROOMMODEL);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createBottomDialog();
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.ll_pk_record) {
            this.f19738b.P3();
            dismissAllowingStateLoss();
        } else if (id2 != R.id.rl_friend_match) {
            if (id2 == R.id.rl_random_match && DisableDoubleClickUtils.canClick(view) && (getParentFragment() instanceof BroadCastFragment)) {
                x.n().s(getActivity(), (BroadCastFragment) getParentFragment());
                x.n().x(0);
                x.n().I();
                dismissAllowingStateLoss();
            }
        } else {
            this.f19738b.Q3(this.f19740d);
            dismissAllowingStateLoss();
        }
    }
}
