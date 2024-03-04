package com.guochao.faceshow.aaspring.modulars.live.share;

import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import com.google.android.material.badge.BadgeDrawable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.ConversationInfoDetail;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.beans.SearchUserBean;
import com.guochao.faceshow.aaspring.beans.SearchUserNameOrIdBean;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteListFragment;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.InviteViewHolder;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.bean.FollowBean;
import com.guochao.faceshow.bean.FollowBeanLsit;
import com.guochao.faceshow.bean.IM_UserList;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import vh.o;
/* loaded from: classes3.dex */
public class InviteListFragment extends BaseRecyclerViewFragment<InviteBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    public int f19866a;

    /* renamed from: b  reason: collision with root package name */
    private p f19867b;

    /* renamed from: c  reason: collision with root package name */
    private List<InviteBean> f19868c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private int f19869d = 1;

    /* renamed from: e  reason: collision with root package name */
    private int f19870e;
    @BindView
    View emptyView;

    /* renamed from: f  reason: collision with root package name */
    private View f19871f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f19872g;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f19873h;

    /* renamed from: i  reason: collision with root package name */
    private int f19874i;

    /* renamed from: j  reason: collision with root package name */
    private l f19875j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<SearchUserNameOrIdBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f19876a;

        a(int i9) {
            this.f19876a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<SearchUserNameOrIdBean>> aVar) {
            InviteListFragment.this.notifyDataLoaded(false);
            if (InviteListFragment.this.f19867b != null) {
                InviteListFragment.this.f19867b.j(false);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<SearchUserNameOrIdBean> list, @NonNull FaceCastBaseResponse<List<SearchUserNameOrIdBean>> faceCastBaseResponse) {
            if (list == null) {
                list = new ArrayList<>();
            }
            Iterator<SearchUserNameOrIdBean> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                SearchUserNameOrIdBean next = it.next();
                InviteListFragment inviteListFragment = InviteListFragment.this;
                if (inviteListFragment.f19866a > 0 || inviteListFragment.Z1(inviteListFragment.f19868c, next)) {
                    r1 = true;
                }
                next.setSelect(r1);
            }
            if (this.f19876a == 1) {
                InviteListFragment.this.setDatas(new ArrayList(list));
            } else {
                InviteListFragment.this.addDatas(new ArrayList(list));
            }
            InviteListFragment inviteListFragment2 = InviteListFragment.this;
            inviteListFragment2.notifyDataLoaded(inviteListFragment2.getCurrentPage() == 1);
            InviteListFragment.this.showEmptyView();
            if (InviteListFragment.this.f19867b != null) {
                InviteListFragment.this.f19867b.j(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InviteViewHolder f19878a;

        b(InviteViewHolder inviteViewHolder) {
            this.f19878a = inviteViewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InviteListFragment inviteListFragment = InviteListFragment.this;
            if (inviteListFragment.f19866a > 0) {
                inviteListFragment.f19866a = 0;
                inviteListFragment.f19873h.setSelected(false);
            }
            if (InviteListFragment.this.f19875j != null) {
                int adapterPosition = this.f19878a.getAdapterPosition();
                int i9 = adapterPosition != -1 ? adapterPosition : 0;
                InviteBean inviteBean = InviteListFragment.this.getList().get(i9);
                inviteBean.setSelect(!inviteBean.isSelect());
                if (inviteBean.isSelect()) {
                    InviteListFragment.this.f19868c.add(inviteBean);
                } else {
                    Iterator it = InviteListFragment.this.f19868c.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        InviteBean inviteBean2 = (InviteBean) it.next();
                        if (inviteBean2.getCurrentUserId().equalsIgnoreCase(inviteBean.getCurrentUserId())) {
                            InviteListFragment.this.f19868c.remove(inviteBean2);
                            break;
                        }
                    }
                }
                InviteListFragment.this.f19875j.a();
                if (InviteListFragment.this.getRecyclerView().getAdapter() != null) {
                    InviteListFragment.this.getRecyclerView().getAdapter().notifyItemChanged(i9);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements p.c {
        c() {
        }

        @Override // com.guochao.faceshow.views.p.c
        public void a(String str) {
            if (TextUtils.isEmpty(str)) {
                InviteListFragment.this.setCurrentPage(1);
                InviteListFragment.this.loadData(1);
                return;
            }
            InviteListFragment.this.k2(str, 1);
        }

        @Override // com.guochao.faceshow.views.p.c
        public void b() {
            InviteListFragment.this.notifyDataLoaded(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f19881a;

        d(ViewGroup viewGroup) {
            this.f19881a = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            EditText editText = (EditText) this.f19881a.findViewById(R.id.et_search);
            View findViewById = this.f19881a.findViewById(R.id.delete_edit);
            ViewGroup viewGroup = (ViewGroup) editText.getParent();
            viewGroup.getLayoutParams().height = DensityUtil.dp2px(30.0f);
            int width = viewGroup.getChildAt(0).getWidth() + DensityUtil.dp2px(27.0f);
            viewGroup.removeView(editText);
            viewGroup.removeView(findViewById);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, DensityUtil.dp2px(30.0f));
            layoutParams.topMargin = DensityUtil.dp2px(10.0f);
            layoutParams.bottomMargin = DensityUtil.dp2px(10.0f);
            layoutParams.setMarginEnd(DensityUtil.dp2px(55.0f));
            layoutParams.setMarginStart(width + DensityUtil.dp2px(10.0f));
            layoutParams.gravity = 48;
            editText.setLayoutParams(layoutParams);
            this.f19881a.addView(editText);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, DensityUtil.dp2px(30.0f));
            layoutParams2.topMargin = DensityUtil.dp2px(10.0f);
            layoutParams2.setMarginEnd(DensityUtil.dp2px(15.0f));
            layoutParams2.gravity = BadgeDrawable.TOP_END;
            findViewById.setLayoutParams(layoutParams2);
            this.f19881a.addView(findViewById);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends SimpleObserver<List<InviteBean>> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        /* renamed from: a */
        public void onNext(List<InviteBean> list) {
            super.onNext(list);
            if (InviteListFragment.this.isDetached() || InviteListFragment.this.getParentFragment() == null || InviteListFragment.this.getParentFragment().isDetached()) {
                return;
            }
            if ((InviteListFragment.this.getParentFragment() instanceof InviteDialog) && ((InviteDialog) InviteListFragment.this.getParentFragment()).X1()) {
                return;
            }
            InviteListFragment.this.setDatas(list);
            InviteListFragment inviteListFragment = InviteListFragment.this;
            inviteListFragment.j2(inviteListFragment.getList().size());
            InviteListFragment.this.notifyDataLoaded(false);
            InviteListFragment.this.showEmptyView();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements o<Integer, List<InviteBean>> {
        f() {
        }

        @Override // vh.o
        /* renamed from: a */
        public List<InviteBean> apply(Integer num) throws Exception {
            Fragment parentFragment = InviteListFragment.this.getParentFragment();
            if (parentFragment instanceof InviteDialog) {
                InviteDialog inviteDialog = (InviteDialog) parentFragment;
                List<LastInviteBean> W1 = InviteDialog.W1();
                ArrayList arrayList = new ArrayList();
                if (W1 != null) {
                    for (LastInviteBean lastInviteBean : W1) {
                        if (lastInviteBean != null) {
                            if (InviteListFragment.this.f19866a > 0) {
                                lastInviteBean.setSelect(true);
                            }
                            arrayList.add(0, lastInviteBean);
                        }
                    }
                }
                return arrayList;
            }
            return new ArrayList();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends SimpleObserver<List<ConversationInfo>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f19885a;

        g(int i9) {
            this.f19885a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        /* renamed from: a */
        public void onNext(List<ConversationInfo> list) {
            super.onNext(list);
            if (InviteListFragment.this.isDetached() || InviteListFragment.this.getParentFragment() == null || InviteListFragment.this.getParentFragment().isDetached()) {
                return;
            }
            if ((InviteListFragment.this.getParentFragment() instanceof InviteDialog) && ((InviteDialog) InviteListFragment.this.getParentFragment()).X1()) {
                return;
            }
            if (list != null) {
                ArrayList arrayList = new ArrayList();
                for (ConversationInfo conversationInfo : list) {
                    ConversationInfoDetail conversationInfoDetail = conversationInfo.getConversationInfoDetail();
                    if (conversationInfoDetail != null) {
                        if (InviteListFragment.this.f19866a > 0) {
                            conversationInfoDetail.setSelect(true);
                        } else {
                            conversationInfoDetail.setSelect(false);
                        }
                        arrayList.add(conversationInfoDetail);
                    }
                }
                InviteListFragment.this.setDatas(arrayList);
                if (InviteListFragment.this.f19875j != null) {
                    InviteListFragment inviteListFragment = InviteListFragment.this;
                    if (inviteListFragment.f19866a == 2) {
                        inviteListFragment.f19875j.a();
                    }
                }
                InviteListFragment inviteListFragment2 = InviteListFragment.this;
                inviteListFragment2.j2(inviteListFragment2.getList().size());
            }
            if (InviteListFragment.this.f19870e != 0 && InviteListFragment.this.f19870e != 2 && InviteListFragment.this.getList().size() == 0) {
                InviteListFragment.this.c2(this.f19885a, 1);
            }
            InviteListFragment.this.notifyDataLoaded(false);
            InviteListFragment.this.showEmptyView();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements o<Integer, List<ConversationInfo>> {
        h() {
        }

        @Override // vh.o
        /* renamed from: a */
        public List<ConversationInfo> apply(Integer num) throws Exception {
            return com.guochao.faceshow.aaspring.manager.im.b.l0().f0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends com.guochao.faceshow.aaspring.base.http.callback.c<IM_UserList> {
        i() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(IM_UserList iM_UserList, @NonNull FaceCastBaseResponse<IM_UserList> faceCastBaseResponse) {
            if (iM_UserList == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            if (iM_UserList.list == null) {
                iM_UserList.list = new ArrayList<>();
            }
            boolean z10 = true;
            if (InviteListFragment.this.f19866a > 0) {
                Iterator<IM_User> it = iM_UserList.list.iterator();
                while (it.hasNext()) {
                    it.next().setSelect(true);
                }
            }
            InviteListFragment.this.addDatas(new ArrayList(iM_UserList.list));
            int i9 = iM_UserList.totalCount;
            if (i9 > 0) {
                InviteListFragment.this.j2(i9);
            } else {
                InviteListFragment inviteListFragment = InviteListFragment.this;
                inviteListFragment.j2(inviteListFragment.getList().size());
            }
            InviteListFragment inviteListFragment2 = InviteListFragment.this;
            ArrayList<IM_User> arrayList = iM_UserList.list;
            inviteListFragment2.notifyDataLoaded((arrayList == null || arrayList.size() < 20) ? false : false);
            InviteListFragment.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<IM_UserList> aVar) {
            InviteListFragment.this.notifyDataLoaded(false);
            InviteListFragment.this.showEmptyView();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends com.guochao.faceshow.aaspring.base.http.callback.c<FollowBeanLsit.Result> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f19889a;

        j(int i9) {
            this.f19889a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable FollowBeanLsit.Result result, @NonNull FaceCastBaseResponse<FollowBeanLsit.Result> faceCastBaseResponse) {
            boolean z10;
            if (result == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            if (result.list == null) {
                result.list = new ArrayList();
            }
            Iterator<FollowBean> it = result.list.iterator();
            while (true) {
                z10 = false;
                if (!it.hasNext()) {
                    break;
                }
                FollowBean next = it.next();
                InviteListFragment inviteListFragment = InviteListFragment.this;
                if (inviteListFragment.f19866a > 0 || inviteListFragment.Z1(inviteListFragment.f19868c, next)) {
                    z10 = true;
                }
                next.setSelect(z10);
            }
            if (this.f19889a == 1) {
                InviteListFragment.this.setDatas(new ArrayList(result.list));
            } else {
                InviteListFragment.this.addDatas(new ArrayList(result.list));
            }
            int i9 = result.totalCount;
            if (i9 > 0) {
                InviteListFragment.this.j2(i9);
            } else {
                InviteListFragment inviteListFragment2 = InviteListFragment.this;
                inviteListFragment2.j2(inviteListFragment2.getList().size());
            }
            InviteListFragment inviteListFragment3 = InviteListFragment.this;
            List<FollowBean> list = result.list;
            if (list != null && list.size() == 20) {
                z10 = true;
            }
            inviteListFragment3.notifyDataLoaded(z10);
            InviteListFragment.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<FollowBeanLsit.Result> aVar) {
            InviteListFragment.this.notifyDataLoaded(false);
            InviteListFragment.this.showEmptyView();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k extends com.guochao.faceshow.aaspring.base.http.callback.c<IM_UserList> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f19891a;

        k(int i9) {
            this.f19891a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable IM_UserList iM_UserList, @NonNull FaceCastBaseResponse<IM_UserList> faceCastBaseResponse) {
            if (iM_UserList == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            if (iM_UserList.list == null) {
                iM_UserList.list = new ArrayList<>();
            }
            boolean z10 = true;
            if (this.f19891a == 1) {
                InviteListFragment.this.clearAll();
            }
            if (InviteListFragment.this.f19866a > 0) {
                Iterator<IM_User> it = iM_UserList.list.iterator();
                while (it.hasNext()) {
                    it.next().setSelect(true);
                }
            }
            InviteListFragment.this.addDatas(new ArrayList(iM_UserList.list));
            int i9 = iM_UserList.totalCount;
            if (i9 > 0) {
                InviteListFragment.this.j2(i9);
            } else {
                InviteListFragment inviteListFragment = InviteListFragment.this;
                inviteListFragment.j2(inviteListFragment.getList().size());
            }
            InviteListFragment inviteListFragment2 = InviteListFragment.this;
            ArrayList<IM_User> arrayList = iM_UserList.list;
            inviteListFragment2.notifyDataLoaded((arrayList == null || arrayList.size() != 20) ? false : false);
            InviteListFragment.this.showEmptyView();
            if (InviteListFragment.this.f19875j != null) {
                InviteListFragment inviteListFragment3 = InviteListFragment.this;
                if (inviteListFragment3.f19866a == 2) {
                    inviteListFragment3.f19875j.a();
                }
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<IM_UserList> aVar) {
            InviteListFragment.this.notifyDataLoaded(false);
            InviteListFragment.this.showEmptyView();
        }
    }

    /* loaded from: classes3.dex */
    public interface l {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Z1(List<InviteBean> list, InviteBean inviteBean) {
        if (list == null) {
            return false;
        }
        for (InviteBean inviteBean2 : list) {
            if (inviteBean2.getCurrentUserId() != null && inviteBean2.getCurrentUserId().equalsIgnoreCase(inviteBean.getCurrentUserId())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c2(int i9, int i10) {
        post("tokens/game/v2/round/findFriendsByType").y("type", Integer.valueOf(i10)).y("currPage", Integer.valueOf(i9)).y("pageSize", Integer.valueOf(i10 == 1 ? 10 : 20)).M(new k(i9));
    }

    public static InviteListFragment d2(int i9) {
        InviteListFragment inviteListFragment = new InviteListFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("InviteType", i9);
        inviteListFragment.setArguments(bundle);
        return inviteListFragment;
    }

    public static InviteListFragment e2(int i9, int i10) {
        InviteListFragment inviteListFragment = new InviteListFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("InviteType", i9);
        bundle.putInt("mode", i10);
        inviteListFragment.setArguments(bundle);
        return inviteListFragment;
    }

    private void i2(View view) {
        ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).topMargin = DensityUtil.dp2px(10.0f);
        ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin = DensityUtil.dp2px(10.0f);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.post(new d(viewGroup));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j2(int i9) {
        this.f19874i = i9;
        if (getContext() == null || isDetached()) {
            return;
        }
        String string = getString(R.string.select_all_people, Integer.valueOf(i9));
        String convertNormalNumberToArabicNumber = EditTextUtils.convertNormalNumberToArabicNumber(String.valueOf(i9));
        int indexOf = string.indexOf(convertNormalNumberToArabicNumber);
        if (indexOf < 0) {
            this.f19872g.setText(string);
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(getContext(), R.color.color_ugc_app_primary)), indexOf, convertNormalNumberToArabicNumber.length() + indexOf, 17);
        this.f19872g.setText(spannableStringBuilder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k2(String str, int i9) {
        SearchUserBean searchUserBean = new SearchUserBean();
        searchUserBean.setContent(str);
        searchUserBean.setCurrPage(i9);
        searchUserBean.setPageSize(15);
        post("tokens/search/findUserByNickNameOrId").u(searchUserBean).M(new a(i9));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: a2 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, InviteBean inviteBean) {
        if (baseViewHolder instanceof InviteViewHolder) {
            ((InviteViewHolder) baseViewHolder).c(inviteBean, this.f19866a > 0, i9);
        }
    }

    public int b2() {
        return this.f19874i;
    }

    public List<InviteBean> f2() {
        if (this.f19869d == 4) {
            return this.f19868c;
        }
        if (getList() != null) {
            if (this.f19866a > 0) {
                return getList();
            }
            ArrayList arrayList = new ArrayList();
            for (InviteBean inviteBean : getList()) {
                if (inviteBean.isSelect()) {
                    arrayList.add(inviteBean);
                }
            }
            return arrayList;
        }
        return new ArrayList();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: g2 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, InviteBean inviteBean) {
        if (baseViewHolder instanceof InviteViewHolder) {
            ((InviteViewHolder) baseViewHolder).itemView.findViewById(R.id.check).callOnClick();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.layout_invite_list;
    }

    public void h2(View view) {
        if (view.getId() != R.id.invite_select_all_id) {
            return;
        }
        ImageView imageView = this.f19873h;
        imageView.setSelected(!imageView.isSelected());
        boolean isSelected = this.f19873h.isSelected();
        if (isSelected) {
            this.f19866a = this.f19869d;
        } else {
            this.f19866a = 0;
        }
        if (getList() != null) {
            for (InviteBean inviteBean : getList()) {
                inviteBean.setSelect(isSelected);
            }
        }
        notifyDataLoaded(true);
        l lVar = this.f19875j;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        if (getArguments() != null) {
            this.f19869d = getArguments().getInt("InviteType");
            this.f19870e = getArguments().getInt("mode");
        }
        if (this.f19869d == 4) {
            View findViewById = view.findViewById(R.id.search_view_id);
            ((ViewGroup.MarginLayoutParams) view.findViewById(R.id.recycler_view).getLayoutParams()).topMargin = DensityUtil.dp2px(40.0f);
            view.findViewById(R.id.invite_select_all_id).setVisibility(8);
            i2(findViewById);
            p pVar = new p(findViewById);
            this.f19867b = pVar;
            pVar.l(true);
            this.f19867b.n();
            this.f19867b.k(new c());
        }
        this.emptyView.findViewById(R.id.empty_text).setVisibility(8);
        hideFooterView();
        ImageView imageView = (ImageView) view.findViewById(R.id.check);
        this.f19873h = imageView;
        if (this.f19870e == 1) {
            imageView.setSelected(true);
            this.f19866a = this.f19869d;
        }
        this.f19872g = (TextView) view.findViewById(R.id.tv_all_select);
        View findViewById2 = view.findViewById(R.id.invite_select_all_id);
        this.f19871f = findViewById2;
        findViewById2.setOnClickListener(new View.OnClickListener() { // from class: g9.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                InviteListFragment.this.h2(view2);
            }
        });
        int i9 = this.f19870e;
        if (i9 != 2 && i9 != 3) {
            if (this.f19869d != 4) {
                this.f19871f.setVisibility(0);
            } else {
                this.f19871f.setVisibility(8);
            }
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getRecyclerView().getLayoutParams();
            marginLayoutParams.topMargin = 0;
            getRecyclerView().setLayoutParams(marginLayoutParams);
            this.f19871f.setVisibility(8);
        }
        getRecyclerView().setOverScrollMode(2);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        int i10 = this.f19869d;
        if (i10 == 1) {
            getRefreshableLayout().L(false);
            io.reactivex.k.just(1).map(new f()).delay(200L, TimeUnit.MILLISECONDS).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new e());
        } else if (i10 == 2) {
            getRefreshableLayout().L(false);
            io.reactivex.k.just(1).map(new h()).delay(200L, TimeUnit.MILLISECONDS).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new g(i9));
        } else if (i10 == 3) {
            if (this.f19870e == 0) {
                getRefreshableLayout().L(true);
                HashMap hashMap = new HashMap();
                hashMap.put("currPage", getCurrentPage() + "");
                hashMap.put("pageSize", ThirdPushHelper.TYPE_HUAWEI);
                getHttpClient().b(this, "user/attention/getFriendsList", hashMap, new i());
                return;
            }
            c2(i9, 2);
        } else if (i10 != 4) {
        } else {
            getRefreshableLayout().L(true);
            if (!TextUtils.isEmpty(this.f19867b.g())) {
                k2(this.f19867b.g().toString(), i9);
                return;
            }
            post(Contants.listAttention + "?userId=" + getCurrentUser().getUserId() + "&currPage=" + i9 + "&types=1&pageSize=20&systoken=" + SpUtils.getStr(getActivity(), Contants.USER_TOKEN)).D(Contants.USER_ID, getCurrentUser().getUserId()).D("currPage", String.valueOf(i9)).D("types", "1").D("pageSize", ThirdPushHelper.TYPE_HUAWEI).M(new j(i9));
        }
    }

    public void setOnSelectListener(l lVar) {
        this.f19875j = lVar;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void showEmptyView() {
        if (getList() != null && !getList().isEmpty()) {
            int i9 = this.f19870e;
            if (i9 != 2 && i9 != 3 && this.f19869d != 4) {
                this.f19871f.setVisibility(0);
            }
            this.emptyView.setVisibility(8);
            return;
        }
        this.f19871f.setVisibility(8);
        this.emptyView.setVisibility(0);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        InviteViewHolder inviteViewHolder = new InviteViewHolder(viewGroup);
        inviteViewHolder.itemView.findViewById(R.id.check).setOnClickListener(new b(inviteViewHolder));
        return inviteViewHolder;
    }
}
