package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseCommentFragment;
import com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.beans.BottomMenuBean;
import com.guochao.faceshow.aaspring.beans.Comment;
import com.guochao.faceshow.aaspring.beans.PageComment;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.EmptyHolder;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.ugc.base.DynamicCommentEvent;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.SensitiveWordFilter;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.guochao.faceshow.utils.SystemUtil;
import com.guochao.faceshow.views.e;
import java.util.ArrayList;
import java.util.Iterator;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class DynamicCommentListFragment extends BaseCommentFragment {

    /* renamed from: k  reason: collision with root package name */
    private int f22680k;

    /* renamed from: l  reason: collision with root package name */
    private Comment f22681l;

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f22682a;

        a(View view) {
            this.f22682a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f22682a.setBackgroundColor(ContextCompat.getColor(DynamicCommentListFragment.this.getActivity(), R.color.transparent_80));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<PageComment> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22684a;

        b(int i9) {
            this.f22684a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(PageComment pageComment, @NonNull FaceCastBaseResponse<PageComment> faceCastBaseResponse) {
            if (this.f22684a == DynamicCommentListFragment.this.getDefaultPage()) {
                DynamicCommentListFragment.this.getList().clear();
                if (DynamicCommentListFragment.this.f22681l != null) {
                    DynamicCommentListFragment.this.getList().add(DynamicCommentListFragment.this.f22681l);
                }
            }
            if (pageComment.getList() == null) {
                pageComment.setList(new ArrayList<>());
            }
            Iterator<Comment> it = pageComment.getList().iterator();
            while (it.hasNext()) {
                Comment next = it.next();
                if (DynamicCommentListFragment.this.f22681l != null && DynamicCommentListFragment.this.f22681l.getCommentId() == next.getCommentId()) {
                    if (next.getUserVipMsg() != null) {
                        DynamicCommentListFragment.this.f22681l.setUserVipMsg(next.getUserVipMsg());
                    }
                } else {
                    DynamicCommentListFragment.this.getList().add(next);
                }
            }
            if (pageComment.getTotalCount() > 0) {
                ((BaseCommentFragment) DynamicCommentListFragment.this).f16101i = pageComment.getTotalCount();
                if (((BaseCommentFragment) DynamicCommentListFragment.this).f16100h != null) {
                    ((BaseCommentFragment) DynamicCommentListFragment.this).f16100h.a(DynamicCommentListFragment.this.f22680k, pageComment.getTotalCount());
                }
                TextView textView = ((BaseCommentFragment) DynamicCommentListFragment.this).mTextViewCount;
                textView.setText(pageComment.getTotalCount() + "");
            }
            DynamicCommentListFragment.this.notifyDataLoaded(pageComment.getList().size() > 0);
            DynamicCommentListFragment.this.showEmptyView();
            DynamicCommentListFragment.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<PageComment> aVar) {
            if (DynamicCommentListFragment.this.getList().isEmpty()) {
                DynamicCommentListFragment.this.showEmptyView();
            }
            DynamicCommentListFragment.this.dismissProgressDialog();
        }
    }

    /* loaded from: classes3.dex */
    class c implements BottomMenuFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Comment f22686a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BaseViewHolder f22687b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f22688c;

        /* loaded from: classes3.dex */
        class a implements e.a {
            a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    c cVar = c.this;
                    DynamicCommentListFragment.this.g1(cVar.f22686a, cVar.f22687b);
                    dialog.dismiss();
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        c(Comment comment, BaseViewHolder baseViewHolder, int i9) {
            this.f22686a = comment;
            this.f22687b = baseViewHolder;
            this.f22688c = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment.b
        public void a(BottomMenuBean bottomMenuBean, Dialog dialog, DialogFragment dialogFragment) {
            switch (bottomMenuBean.getItemId()) {
                case R.id.copy /* 2131362406 */:
                    ((ClipboardManager) DynamicCommentListFragment.this.getActivity().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("copy", Comment.getRealComment(DynamicCommentListFragment.this.getActivity(), this.f22686a)));
                    ToastUtils.showToast(DynamicCommentListFragment.this.getActivity(), DynamicCommentListFragment.this.getString(R.string.copy_success));
                    return;
                case R.id.delete /* 2131362467 */:
                    DynamicCommentListFragment dynamicCommentListFragment = DynamicCommentListFragment.this;
                    dynamicCommentListFragment.alert(null, dynamicCommentListFragment.getString(R.string.are_you_sure_delete), new a(), false);
                    return;
                case R.id.reply /* 2131364201 */:
                    DynamicCommentListFragment.this.onItemClick(this.f22687b, this.f22688c, this.f22686a);
                    return;
                case R.id.report /* 2131364209 */:
                    GCCoreActivity activity = DynamicCommentListFragment.this.getActivity();
                    String userId = this.f22686a.getUserId();
                    ReportController.report(activity, userId, this.f22686a.getCommentId() + "", ReportController.REPORT_TYPE_DYNAMIC_COMMENT);
                    return;
                default:
                    return;
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment.b
        public void onCancel(Dialog dialog, DialogFragment dialogFragment) {
        }
    }

    /* loaded from: classes3.dex */
    class d extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            if (1010 == aVar.a()) {
                DynamicCommentListFragment dynamicCommentListFragment = DynamicCommentListFragment.this;
                dynamicCommentListFragment.showToast(dynamicCommentListFragment.getString(R.string.minganci_ugc));
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            ((BaseCommentFragment) DynamicCommentListFragment.this).f16094b.setText((CharSequence) null);
            ((BaseCommentFragment) DynamicCommentListFragment.this).f16094b.setHint((CharSequence) null);
            ((BaseCommentFragment) DynamicCommentListFragment.this).f16096d = "";
            DynamicCommentEvent dynamicCommentEvent = new DynamicCommentEvent();
            dynamicCommentEvent.setCommentType(0);
            dynamicCommentEvent.setDynamicCommentId(DynamicCommentListFragment.this.f22680k);
            EventBus.getDefault().post(dynamicCommentEvent);
            DynamicCommentListFragment dynamicCommentListFragment = DynamicCommentListFragment.this;
            dynamicCommentListFragment.setCurrentPage(dynamicCommentListFragment.getDefaultPage());
            DynamicCommentListFragment dynamicCommentListFragment2 = DynamicCommentListFragment.this;
            dynamicCommentListFragment2.loadData(dynamicCommentListFragment2.getCurrentPage());
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.ugc_comment);
        }
    }

    /* loaded from: classes3.dex */
    class e extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f22692a;

        e(View view) {
            this.f22692a = view;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            this.f22692a.setEnabled(true);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseViewHolder f22694a;

        f(BaseViewHolder baseViewHolder) {
            this.f22694a = baseViewHolder;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            ToastUtils.showToast(DynamicCommentListFragment.this.getActivity(), DynamicCommentListFragment.this.getString(R.string.delete_comment_succ));
            DynamicCommentListFragment.this.getList().remove(this.f22694a.getAdapterPosition());
            DynamicCommentListFragment.this.notifyDataLoaded();
            DynamicCommentEvent dynamicCommentEvent = new DynamicCommentEvent();
            dynamicCommentEvent.setCommentType(1);
            dynamicCommentEvent.setDynamicCommentId(DynamicCommentListFragment.this.f22680k);
            EventBus.getDefault().post(dynamicCommentEvent);
            if (((BaseCommentFragment) DynamicCommentListFragment.this).f16101i > 0) {
                ((BaseCommentFragment) DynamicCommentListFragment.this).mTextViewCount.setText(String.valueOf(((BaseCommentFragment) DynamicCommentListFragment.this).f16101i - 1));
            }
            if (((BaseCommentFragment) DynamicCommentListFragment.this).f16100h != null) {
                ((BaseCommentFragment) DynamicCommentListFragment.this).f16100h.a(DynamicCommentListFragment.this.f22680k, ((BaseCommentFragment) DynamicCommentListFragment.this).f16101i - 1);
            }
        }
    }

    public static void h1(Context context, int i9, String str, Comment comment) {
        Intent intent = new Intent(context, DynamicCommentListFragment.class);
        intent.putExtra("data", i9);
        intent.putExtra("commentId", comment);
        intent.putExtra(Contants.USER_ID, str);
        ContextCompat.startActivity(context, intent, ActivityOptionsCompat.makeCustomAnimation(context, R.anim.bottom_y_in_activity, R.anim.top_y_out_activity).toBundle());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseCommentFragment
    public void A0(BaseViewHolder baseViewHolder, int i9, Comment comment) {
        if (baseViewHolder instanceof EmptyHolder) {
            loadData(1);
            return;
        }
        ArrayList arrayList = new ArrayList();
        boolean equals = SpUtils.getStr(getActivity(), Contants.USER_ID).equals(this.f16093a);
        boolean equals2 = SpUtils.getStr(getActivity(), Contants.USER_ID).equals(comment.getUserId());
        if (equals2 && !equals) {
            BottomMenuBean bottomMenuBean = new BottomMenuBean();
            bottomMenuBean.setText(getString(R.string.delete));
            bottomMenuBean.setItemId(R.id.delete);
            arrayList.add(bottomMenuBean);
            BottomMenuBean bottomMenuBean2 = new BottomMenuBean();
            bottomMenuBean2.setText(getString(R.string.copy));
            bottomMenuBean2.setItemId(R.id.copy);
            arrayList.add(bottomMenuBean2);
        } else if (!equals2 && !equals) {
            BottomMenuBean bottomMenuBean3 = new BottomMenuBean();
            bottomMenuBean3.setText(getString(R.string.report));
            bottomMenuBean3.setItemId(R.id.report);
            bottomMenuBean3.setTextColor(getResources().getColorStateList(R.color.color_app_tips));
            arrayList.add(bottomMenuBean3);
            BottomMenuBean bottomMenuBean4 = new BottomMenuBean();
            bottomMenuBean4.setText(getString(R.string.copy));
            bottomMenuBean4.setItemId(R.id.copy);
            arrayList.add(bottomMenuBean4);
        } else {
            BottomMenuBean bottomMenuBean5 = new BottomMenuBean();
            bottomMenuBean5.setText(getString(R.string.delete));
            bottomMenuBean5.setItemId(R.id.delete);
            arrayList.add(bottomMenuBean5);
            if (!equals2) {
                BottomMenuBean bottomMenuBean6 = new BottomMenuBean();
                bottomMenuBean6.setText(getString(R.string.report));
                bottomMenuBean6.setItemId(R.id.report);
                bottomMenuBean6.setTextColor(getResources().getColorStateList(R.color.color_app_tips));
                arrayList.add(bottomMenuBean6);
            }
            BottomMenuBean bottomMenuBean7 = new BottomMenuBean();
            bottomMenuBean7.setText(getString(R.string.copy));
            bottomMenuBean7.setItemId(R.id.copy);
            arrayList.add(bottomMenuBean7);
        }
        BottomMenuFragment.S1(getSupportFragmentManager(), arrayList, new c(comment, baseViewHolder, i9));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseCommentFragment
    public void B0(String str) {
        this.f16097e.setEnabled(false);
        String trim = str.trim();
        if (!TextUtils.isEmpty(SensitiveWordFilter.getInstance().checkKeyword(trim))) {
            showToast(getString(R.string.minganci_ugc));
        } else if (TextUtils.isEmpty(trim)) {
            ToastUtils.showToast(getActivity(), getString(R.string.input_comment_content));
        } else {
            String n02 = n0(trim);
            SoftKeyBoardUtils.closeSoftKeyBoard(getActivity(), this.f16094b);
            post(Contants.addFriendNewComment).B("friendId", this.f22680k).D("commentJson", n02).D("content", trim).D("parentCommentId", this.f16096d).M(new d());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseCommentFragment
    protected void F0(Comment comment, View view, TextView textView) {
        post("tokens/friend/addCommentLike").B("commentId", comment.getCommentId()).M(new e(view));
    }

    protected void g1(Comment comment, BaseViewHolder baseViewHolder) {
        post("tokens/friend/deleteFriendComment").B("commentId", comment.getCommentId()).M(new f(baseViewHolder));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseCommentFragment, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.fragment_dynamic_comment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseCommentFragment, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        View findViewById = findViewById(R.id.main_layout);
        findViewById.postDelayed(new a(findViewById), 300L);
        this.f22680k = getIntent().getIntExtra("data", 0);
        this.f22681l = (Comment) getIntent().getParcelableExtra("commentId");
        this.f16093a = getIntent().getStringExtra(Contants.USER_ID);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        post("tokens/friend/findFriendRingComment").B("currPage", i9).B("friendId", this.f22680k).D("pageSize", ThirdPushHelper.TYPE_XIAOMI_CHINA).M(new b(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (SystemUtil.getDeviceBrand().toLowerCase().contains("samsung")) {
            this.f16094b.requestFocus();
        }
    }
}
