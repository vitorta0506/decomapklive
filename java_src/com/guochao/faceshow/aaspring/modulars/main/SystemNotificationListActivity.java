package com.guochao.faceshow.aaspring.modulars.main;

import android.app.Dialog;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.AuthorityNotifyBean;
import com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager;
import com.guochao.faceshow.views.d;
import com.guochao.faceshow.views.e;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\rH\u0016J\b\u0010\u0011\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\r2\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0013H\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;", "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;", "()V", "list", "", "Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "finish", "", "getLayoutId", "", "initView", "loadData", "onCreateOptionsMenu", "", "menu", "Landroid/view/Menu;", "onMenuClicked", "menuItem", "Landroid/view/MenuItem;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "useImmersiveStatusBar", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SystemNotificationListActivity extends BaseActivity {
    @NotNull
    private final List<AuthorityNotifyBean> list;
    @BindView
    public RecyclerView recyclerView;

    public SystemNotificationListActivity() {
        ArrayList arrayList = new ArrayList();
        AuthorityNotifyBean authorityNotifyBean = new AuthorityNotifyBean();
        authorityNotifyBean.setMessageType("1");
        arrayList.add(authorityNotifyBean);
        AuthorityNotifyBean authorityNotifyBean2 = new AuthorityNotifyBean();
        authorityNotifyBean2.setMessageType("2");
        arrayList.add(authorityNotifyBean2);
        AuthorityNotifyBean authorityNotifyBean3 = new AuthorityNotifyBean();
        authorityNotifyBean3.setMessageType("3");
        arrayList.add(authorityNotifyBean3);
        this.list = arrayList;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        SystemConversationManager.loadMessageFromServer();
        super.finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_system_notification_list;
    }

    @NotNull
    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            return recyclerView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.system_interaction);
        getRecyclerView().setAdapter(new SystemNotificationListActivity$initView$1(this));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        get("tokens/user/message/findSocialMessage").M(new c<List<? extends AuthorityNotifyBean>>() { // from class: com.guochao.faceshow.aaspring.modulars.main.SystemNotificationListActivity$loadData$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<List<? extends AuthorityNotifyBean>> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public /* bridge */ /* synthetic */ void onResponse(List<? extends AuthorityNotifyBean> list, FaceCastBaseResponse<List<? extends AuthorityNotifyBean>> faceCastBaseResponse) {
                onResponse2(list, (FaceCastBaseResponse<List<AuthorityNotifyBean>>) faceCastBaseResponse);
            }

            /* renamed from: onResponse  reason: avoid collision after fix types in other method */
            public void onResponse2(@Nullable List<? extends AuthorityNotifyBean> list, @NotNull FaceCastBaseResponse<List<AuthorityNotifyBean>> baseResponse) {
                List list2;
                List list3;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (list != null) {
                    SystemNotificationListActivity systemNotificationListActivity = SystemNotificationListActivity.this;
                    list2 = systemNotificationListActivity.list;
                    list2.clear();
                    list3 = systemNotificationListActivity.list;
                    list3.addAll(list);
                }
                RecyclerView.Adapter adapter = SystemNotificationListActivity.this.getRecyclerView().getAdapter();
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public boolean onCreateOptionsMenu(@NotNull Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        MenuItem add = menu.add(0, R.id.menu_1, 0, R.string.zaime_video_title_all_read);
        add.setShowAsAction(2);
        add.setIcon(R.mipmap.im_icon_qingli);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, com.guochao.faceshow.aaspring.base.titlebar.GCTitleBar.MenuCallback
    public void onMenuClicked(@Nullable MenuItem menuItem, @NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onMenuClicked(menuItem, view);
        if (menuItem != null && menuItem.getItemId() == R.id.menu_1) {
            alert(getString(R.string.ignore_unread_content_1), null, new e.a() { // from class: com.guochao.faceshow.aaspring.modulars.main.SystemNotificationListActivity$onMenuClicked$1
                @Override // com.guochao.faceshow.views.e.a
                public void onClick(@Nullable Dialog dialog, boolean z10) {
                    List<AuthorityNotifyBean> list;
                    if (z10) {
                        if (dialog != null) {
                            dialog.dismiss();
                        }
                        list = SystemNotificationListActivity.this.list;
                        for (AuthorityNotifyBean authorityNotifyBean : list) {
                            authorityNotifyBean.setUnreadCount(0);
                        }
                        RecyclerView.Adapter adapter = SystemNotificationListActivity.this.getRecyclerView().getAdapter();
                        if (adapter != null) {
                            adapter.notifyDataSetChanged();
                        }
                        SystemNotificationListActivity.this.post("tokens/user/message/readAllInteractMessage").L();
                        SystemConversationManager.clearUnread(SystemConversationManager.SYSTEM_INTERACTION);
                    }
                }

                @Override // com.guochao.faceshow.views.e.a
                public /* bridge */ /* synthetic */ void onCreate(e eVar) {
                    d.a(this, eVar);
                }
            }, false);
        }
    }

    public final void setRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "<set-?>");
        this.recyclerView = recyclerView;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean useImmersiveStatusBar() {
        return true;
    }
}
