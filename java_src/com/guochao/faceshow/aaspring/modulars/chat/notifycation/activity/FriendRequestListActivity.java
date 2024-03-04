package com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity;

import android.app.Dialog;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.CountryBean;
import com.guochao.faceshow.aaspring.beans.FriendRequestBean;
import com.guochao.faceshow.aaspring.dialog.DeleteImDialog;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.ContactsCircleExploreFragmentDialog;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity.FriendRequestListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.FriendRequestViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager;
import com.guochao.faceshow.aaspring.modulars.live.relationship.RelationShipSearchActivity;
import com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.PerMissionsUtils;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import vh.g;
/* loaded from: classes3.dex */
public class FriendRequestListActivity extends BaseIMListActivity<FriendRequestBean, FriendRequestViewHolder> {

    /* renamed from: b  reason: collision with root package name */
    private String[] f17095b = {"android.permission.READ_CONTACTS"};
    @BindView
    View mViewExplore;
    @BindView
    View redPoint;

    /* loaded from: classes3.dex */
    class a implements ContactsCircleExploreFragmentDialog.a {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity.FriendRequestListActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0162a implements e.a {
            C0162a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    EventTrackingUtils.getInstance().track(EventTrackingUtils.SETTINGPAGE_CLICK);
                    PerMissionsUtils.checkPermission(BaseApplication.getInstance());
                    return;
                }
                EventTrackingUtils.getInstance().track(EventTrackingUtils.CANCEL_CILCK);
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.ContactsCircleExploreFragmentDialog.a
        public void onCancel() {
            EventTrackingUtils.getInstance().track(EventTrackingUtils.CONNECTION_SELF_POPUP_CANCEL_CLICK);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.ContactsCircleExploreFragmentDialog.a
        public void onConfirm() {
            if (!PerMissionsUtils.lacksPermissions(FriendRequestListActivity.this.getActivity(), FriendRequestListActivity.this.f17095b)) {
                FriendRequestListActivity.this.mViewExplore.setVisibility(8);
                RelationShipSearchActivity.start(FriendRequestListActivity.this.getActivity());
                Bundle bundle = new Bundle();
                bundle.putString(EventTrackingUtils.CONTENT_TYPE, "已经授权");
                EventTrackingUtils.getInstance().track(EventTrackingUtils.CONNECTION_SELF_POPUP_AGREE_CLICK, bundle);
            } else if (SpUtils.getBool(FriendRequestListActivity.this.getActivity(), BaseConfig.SP_CONTANCTS_CIRCLE_EXPLORE, false)) {
                Bundle bundle2 = new Bundle();
                bundle2.putString(EventTrackingUtils.CONTENT_TYPE, "去到设置页面");
                EventTrackingUtils.getInstance().track(EventTrackingUtils.CONNECTION_SELF_POPUP_AGREE_CLICK, bundle2);
                FriendRequestListActivity friendRequestListActivity = FriendRequestListActivity.this;
                friendRequestListActivity.alert(friendRequestListActivity.getString(R.string.common_dialog_title_tip), FriendRequestListActivity.this.getString(R.string.open_address_book_permissions), new C0162a(), false);
            } else {
                Bundle bundle3 = new Bundle();
                bundle3.putString(EventTrackingUtils.CONTENT_TYPE, "弹出系统框");
                EventTrackingUtils.getInstance().track(EventTrackingUtils.CONNECTION_SELF_POPUP_AGREE_CLICK, bundle3);
                FriendRequestListActivity.this.r0();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends com.guochao.faceshow.aaspring.base.http.callback.c<List<FriendRequestBean>> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<FriendRequestBean>> aVar) {
            LogUtils.i("zune", "" + aVar);
            FriendRequestListActivity.this.addDatas(new ArrayList());
            FriendRequestListActivity.this.notifyDataLoaded(false);
            FriendRequestListActivity.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<FriendRequestBean> list, @NonNull FaceCastBaseResponse<List<FriendRequestBean>> faceCastBaseResponse) {
            if (list == null) {
                list = new ArrayList<>();
            }
            FriendRequestListActivity.this.t0(list);
            FriendRequestListActivity.this.addDatas(list);
            FriendRequestListActivity.this.notifyDataLoaded(list.size() > 0);
            FriendRequestListActivity.this.showEmptyView();
            SystemConversationManager.clearUnread(SystemConversationManager.SYSTEM_FOCUSED);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Function1<ConversationModel.OnlineStatusModel, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f17099a;

        c(List list) {
            this.f17099a = list;
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(ConversationModel.OnlineStatusModel onlineStatusModel) {
            if (onlineStatusModel != null && onlineStatusModel.getOnlineMap() != null) {
                for (int i9 = 0; i9 < this.f17099a.size(); i9++) {
                    String valueOf = String.valueOf(((FriendRequestBean) this.f17099a.get(i9)).getAccount());
                    if (onlineStatusModel.getOnlineMap().containsKey(valueOf)) {
                        if (onlineStatusModel.getOnlineMap().remove(valueOf).getUserOnlineEnum().equals("LOGIN")) {
                            ((FriendRequestBean) this.f17099a.get(i9)).setIsOnline(1);
                        } else {
                            ((FriendRequestBean) this.f17099a.get(i9)).setIsOnline(-1);
                        }
                    }
                }
            }
            FriendRequestListActivity.this.getRecyclerView().getAdapter().notifyDataSetChanged();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FriendRequestViewHolder f17101a;

        d(FriendRequestViewHolder friendRequestViewHolder) {
            this.f17101a = friendRequestViewHolder;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            FriendRequestListActivity.this.y0(this.f17101a.c());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements DeleteImDialog.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FriendRequestBean f17103a;

        e(FriendRequestBean friendRequestBean) {
            this.f17103a = friendRequestBean;
        }

        @Override // com.guochao.faceshow.aaspring.dialog.DeleteImDialog.a
        public void onDelete() {
            FriendRequestListActivity.this.getList().remove(this.f17103a);
            FriendRequestListActivity.this.notifyDataLoaded();
            FriendRequestListActivity.this.q0(this.f17103a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
        }
    }

    private boolean o0(String str) {
        List<CountryBean> contactsShowcountry;
        if (str != null && (contactsShowcountry = i.u().s().getContactsShowcountry()) != null) {
            for (CountryBean countryBean : contactsShowcountry) {
                if (str.equalsIgnoreCase(countryBean.getCoding())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0(FriendRequestBean friendRequestBean) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", String.valueOf(friendRequestBean.getType()));
        hashMap.put(Contants.USER_ID, String.valueOf(friendRequestBean.getUserId()));
        hashMap.put("account", String.valueOf(friendRequestBean.getAccount()));
        hashMap.put("isTutual", String.valueOf(friendRequestBean.getIsTutual()));
        post("user/attention/deleteUserAttention").E(hashMap).M(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r0() {
        new com.tbruyelle.rxpermissions2.a(this).p(this.f17095b).subscribe(new g() { // from class: l8.a
            @Override // vh.g
            public final void accept(Object obj) {
                FriendRequestListActivity.this.s0((te.a) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s0(te.a aVar) throws Exception {
        if (aVar.f58133b) {
            this.mViewExplore.setVisibility(8);
            RelationShipSearchActivity.start(getActivity());
            EventTrackingUtils.getInstance().track(EventTrackingUtils.SYSTEM_CONNECTION_POPUP_AGREE_CLICK);
        } else if (aVar.f58134c) {
            EventTrackingUtils.getInstance().track(EventTrackingUtils.SYSTEM_CONNECTION_POPUP_CANCEL_CLICK);
        } else {
            SpUtils.setBool(getActivity(), BaseConfig.SP_CONTANCTS_CIRCLE_EXPLORE, true);
            EventTrackingUtils.getInstance().track(EventTrackingUtils.SYSTEM_CONNECTION_POPUP_CANCEL_CLICK);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0(List<FriendRequestBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int[] iArr = new int[list.size()];
        for (int i9 = 0; i9 < list.size(); i9++) {
            iArr[i9] = list.get(i9).getAccount();
        }
        ((ConversationViewModel) new ViewModelProvider(GCApplication.app()).get(ConversationViewModel.class)).requestOnline(iArr, new c(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0(FriendRequestBean friendRequestBean) {
        DeleteImDialog deleteImDialog = new DeleteImDialog();
        deleteImDialog.P1(new e(friendRequestBean));
        deleteImDialog.show(getSupportFragmentManager(), DeleteImDialog.class.getSimpleName());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_friend_request_list;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        if (Build.VERSION.SDK_INT >= 23) {
            getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 8192);
        }
        setTitle(R.string.request);
        getRecyclerView().setBackgroundResource(R.color.white);
        View view = new View(getActivity());
        view.setLayoutParams(new ViewGroup.LayoutParams(-2, DensityUtil.dp2px(getActivity(), 8.0f)));
        addHeaderView(view, 102);
        if (this.f17055a) {
            this.mViewExplore.setVisibility(8);
            this.redPoint.setVisibility(8);
        } else {
            String localCountry = PhoneUtils.getLocalCountry();
            if (o0(localCountry) && SpUtils.getBool(this, BaseConfig.SP_CONTANCTS_CIRCLE_VISIBILITY, true)) {
                this.mViewExplore.setVisibility(0);
                if (o0(localCountry) && SpUtils.getBool(this, BaseConfig.SP_CONTANCTS_RED_POINT, true)) {
                    this.redPoint.setVisibility(0);
                } else {
                    this.redPoint.setVisibility(8);
                }
            } else {
                this.mViewExplore.setVisibility(8);
            }
        }
        EventBus.getDefault().register(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        post("user/attention/getListUserAttention").D(Contants.USER_ID, getCurrentUser().getUserId()).B("page", i9).D("limit", ThirdPushHelper.TYPE_XIAOMI_CHINA).M(new b());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (getParent() != null) {
            getParent().onBackPressed();
        } else {
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFocusEvent(y7.e eVar) {
        if (TextUtils.isEmpty(eVar.a())) {
            return;
        }
        for (int i9 = 0; i9 < getList().size(); i9++) {
            FriendRequestBean friendRequestBean = getList().get(i9);
            if (eVar.a().equalsIgnoreCase(String.valueOf(friendRequestBean.getAccount()))) {
                friendRequestBean.setIsTutual(eVar.c() ? 1 : 0);
                if (eVar.c()) {
                    friendRequestBean.setType(friendRequestBean.getType() != 3 ? 1 : 2);
                } else {
                    friendRequestBean.setType(friendRequestBean.getType() < 2 ? 0 : 3);
                }
                if (getRecyclerView() != null && getRecyclerView().getAdapter() != null) {
                    RecyclerView.ViewHolder findViewHolderForAdapterPosition = getRecyclerView().findViewHolderForAdapterPosition(i9 + 1);
                    if (findViewHolderForAdapterPosition instanceof FriendRequestViewHolder) {
                        ((FriendRequestViewHolder) findViewHolderForAdapterPosition).e(getList().get(i9));
                    }
                }
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: p0 */
    public void convertItem(FriendRequestViewHolder friendRequestViewHolder, int i9, FriendRequestBean friendRequestBean) {
        friendRequestViewHolder.d(friendRequestBean, i9 == getList().size() - 1);
    }

    @OnClick
    public void startExplore(View view) {
        if (DisableDoubleClickUtils.canClick(view)) {
            EventTrackingUtils.getInstance().track(EventTrackingUtils.EXPLORE_CONNECTION_CLICK);
            ContactsCircleExploreFragmentDialog contactsCircleExploreFragmentDialog = new ContactsCircleExploreFragmentDialog();
            contactsCircleExploreFragmentDialog.P1(new a());
            contactsCircleExploreFragmentDialog.show(getSupportFragmentManager(), "contactsCircleExplore");
            this.redPoint.setVisibility(8);
            SpUtils.setBool(getActivity(), BaseConfig.SP_CONTANCTS_RED_POINT, false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: u0 */
    public FriendRequestViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        FriendRequestViewHolder friendRequestViewHolder = new FriendRequestViewHolder(this, viewGroup);
        friendRequestViewHolder.itemView.setOnLongClickListener(new d(friendRequestViewHolder));
        return friendRequestViewHolder;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean useImmersiveStatusBar() {
        return true;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: v0 */
    public void onItemClick(FriendRequestViewHolder friendRequestViewHolder, int i9, FriendRequestBean friendRequestBean) {
        if (DisableDoubleClickUtils.canClick(friendRequestViewHolder.itemView)) {
            UserHomePageAct.start(this, String.valueOf(friendRequestBean.getAccount()));
        }
    }
}
