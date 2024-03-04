package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.ViewModelProvider;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseCommentFragment;
import com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.beans.BottomMenuBean;
import com.guochao.faceshow.aaspring.beans.Comment;
import com.guochao.faceshow.aaspring.beans.PageComment;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.EmptyHolder;
import com.guochao.faceshow.aaspring.modulars.main.model.AddVideoCommentModel;
import com.guochao.faceshow.aaspring.modulars.main.viewholder.ShortVideoViewHolder;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.ShortVideoViewModel;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.AppSettings;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
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
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class CommentsFragment extends BaseCommentFragment {

    /* renamed from: k  reason: collision with root package name */
    private String f20703k = "";

    /* renamed from: l  reason: collision with root package name */
    private int f20704l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f20705m;
    @BindView
    View mDanmuSwitch;

    /* renamed from: n  reason: collision with root package name */
    ShortVideoViewHolder f20706n;

    /* renamed from: o  reason: collision with root package name */
    VideoItem f20707o;

    /* renamed from: p  reason: collision with root package name */
    private Comment f20708p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f20709q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Function1<PageComment, Unit> {
        a() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(PageComment pageComment) {
            if (pageComment != null && pageComment.getList() != null && !pageComment.getList().isEmpty()) {
                if (CommentsFragment.this.getCurrentPage() == CommentsFragment.this.getDefaultPage()) {
                    CommentsFragment.this.getList().clear();
                }
                if (pageComment.getList() == null) {
                    pageComment.setList(new ArrayList<>());
                }
                Iterator<Comment> it = pageComment.getList().iterator();
                while (it.hasNext()) {
                    Comment next = it.next();
                    if (CommentsFragment.this.f20708p == null || CommentsFragment.this.f20708p.getCommentId() != next.getCommentId()) {
                        CommentsFragment.this.getList().add(next);
                    }
                }
                if (CommentsFragment.this.getCurrentPage() == 1 && CommentsFragment.this.f20708p != null) {
                    CommentsFragment.this.getList().add(0, CommentsFragment.this.f20708p);
                }
                if (pageComment.getTotalCount() > 0) {
                    ((BaseCommentFragment) CommentsFragment.this).f16101i = pageComment.getTotalCount();
                    if (((BaseCommentFragment) CommentsFragment.this).f16100h != null) {
                        try {
                            ((BaseCommentFragment) CommentsFragment.this).f16100h.a(Integer.parseInt(CommentsFragment.this.f20707o.getVideoId()), ((BaseCommentFragment) CommentsFragment.this).f16101i - 1);
                        } catch (Exception unused) {
                        }
                    }
                    TextView textView = ((BaseCommentFragment) CommentsFragment.this).mTextViewCount;
                    textView.setText(pageComment.getTotalCount() + "");
                }
                CommentsFragment.this.notifyDataLoaded(pageComment.getList().size() > 0);
                CommentsFragment.this.showEmptyView();
                CommentsFragment.this.dismissProgressDialog();
            } else {
                if (CommentsFragment.this.getList().isEmpty()) {
                    CommentsFragment.this.showEmptyView();
                }
                CommentsFragment.this.dismissProgressDialog();
            }
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes3.dex */
    class b implements BottomMenuFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Comment f20711a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BaseViewHolder f20712b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f20713c;

        /* loaded from: classes3.dex */
        class a implements e.a {
            a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    b bVar = b.this;
                    CommentsFragment.this.k1(bVar.f20711a, bVar.f20712b);
                    dialog.dismiss();
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        b(Comment comment, BaseViewHolder baseViewHolder, int i9) {
            this.f20711a = comment;
            this.f20712b = baseViewHolder;
            this.f20713c = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment.b
        public void a(BottomMenuBean bottomMenuBean, Dialog dialog, DialogFragment dialogFragment) {
            switch (bottomMenuBean.getItemId()) {
                case R.id.copy /* 2131362406 */:
                    ((ClipboardManager) CommentsFragment.this.getActivity().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("copy", Comment.getRealComment(CommentsFragment.this.getActivity(), this.f20711a)));
                    ToastUtils.showToast(CommentsFragment.this.getActivity(), CommentsFragment.this.getString(R.string.copy_success));
                    return;
                case R.id.delete /* 2131362467 */:
                    CommentsFragment commentsFragment = CommentsFragment.this;
                    commentsFragment.alert(null, commentsFragment.getString(R.string.are_you_sure_delete), new a(), false);
                    return;
                case R.id.reply /* 2131364201 */:
                    CommentsFragment.this.onItemClick(this.f20712b, this.f20713c, this.f20711a);
                    return;
                case R.id.report /* 2131364209 */:
                    String str = CommentsFragment.this.f20704l == 1 ? "3" : ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL;
                    GCCoreActivity activity = CommentsFragment.this.getActivity();
                    String userId = this.f20711a.getUserId();
                    ReportController.report(activity, userId, this.f20711a.getCommentId() + "", str);
                    return;
                default:
                    return;
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment.b
        public void onCancel(Dialog dialog, DialogFragment dialogFragment) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Function1<Response<AddVideoCommentModel>, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f20716a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f20717b;

        c(String str, String str2) {
            this.f20716a = str;
            this.f20717b = str2;
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(Response<AddVideoCommentModel> response) {
            if (!CommentsFragment.this.isDestroyed() && !CommentsFragment.this.isFinishing()) {
                if (response != null && response.isSuccessful() && response.getData() != null) {
                    ((BaseCommentFragment) CommentsFragment.this).f16094b.setText((CharSequence) null);
                    ((BaseCommentFragment) CommentsFragment.this).f16094b.setHint((CharSequence) null);
                    CommentsFragment commentsFragment = CommentsFragment.this;
                    commentsFragment.setCurrentPage(commentsFragment.getDefaultPage());
                    CommentsFragment commentsFragment2 = CommentsFragment.this;
                    commentsFragment2.loadData(commentsFragment2.getCurrentPage());
                    SpUtils.setInt(CommentsFragment.this.getActivity(), Contants.USER_levelId, response.getData().getLevelId());
                    y7.n nVar = new y7.n();
                    nVar.f60148a = 0;
                    nVar.f60149b = CommentsFragment.this.m1(this.f20716a, this.f20717b, response.getData().getCommentId(), response.getData().getLevelId());
                    EventBus.getDefault().post(nVar);
                    ((BaseCommentFragment) CommentsFragment.this).f16096d = "";
                } else if (response != null && response.getCode() == 1010) {
                    CommentsFragment commentsFragment3 = CommentsFragment.this;
                    commentsFragment3.showToast(commentsFragment3.getString(R.string.minganci_ugc));
                }
                return Unit.INSTANCE;
            }
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes3.dex */
    class d implements Function1<GCRequest, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f20719a;

        d(View view) {
            this.f20719a = view;
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCRequest gCRequest) {
            this.f20719a.setEnabled(true);
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes3.dex */
    class e implements GCRequestJava.d<Object> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Object> response) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements Function1<Response<Object>, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseViewHolder f20722a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Comment f20723b;

        f(BaseViewHolder baseViewHolder, Comment comment) {
            this.f20722a = baseViewHolder;
            this.f20723b = comment;
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(Response<Object> response) {
            if (response != null && response.isSuccessful()) {
                ToastUtils.showToast(CommentsFragment.this.getActivity(), CommentsFragment.this.getString(R.string.delete_comment_succ));
                CommentsFragment.this.getList().remove(this.f20722a.getAdapterPosition());
                CommentsFragment.this.notifyDataLoaded();
                y7.n nVar = new y7.n();
                nVar.f60148a = 1;
                nVar.f60149b = this.f20723b;
                EventBus.getDefault().post(nVar);
                if (((BaseCommentFragment) CommentsFragment.this).f16101i > 0) {
                    ((BaseCommentFragment) CommentsFragment.this).mTextViewCount.setText(Formatter.getFormat(((BaseCommentFragment) CommentsFragment.this).f16101i - 1));
                }
                if (((BaseCommentFragment) CommentsFragment.this).f16100h != null) {
                    try {
                        ((BaseCommentFragment) CommentsFragment.this).f16100h.a(Integer.parseInt(CommentsFragment.this.f20707o.getVideoId()), ((BaseCommentFragment) CommentsFragment.this).f16101i - 1);
                    } catch (Exception unused) {
                    }
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Comment m1(String str, String str2, int i9, int i10) {
        Comment comment = new Comment();
        comment.setCommentId(i9);
        comment.setComment(str2);
        comment.setCommentJson(str);
        if (!TextUtils.isEmpty(this.f16096d)) {
            try {
                comment.setParentCommentId(Integer.parseInt(this.f16096d));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        comment.setSex(getCurrentUser().sex);
        comment.setUserImg(getCurrentUser().img);
        comment.setAvatar(getCurrentUser().avatar);
        comment.setLevelId(i10);
        return comment;
    }

    public static void o1(Context context, VideoItem videoItem, boolean z10, String str, int i9, ShortVideoViewHolder shortVideoViewHolder) {
        Intent intent = new Intent(context, CommentsFragment.class);
        intent.putExtra("videoItem", videoItem);
        intent.putExtra("forceEdit", z10);
        intent.putExtra("videoId", str);
        intent.putExtra("from", i9);
        MemoryCache.getInstance().put(shortVideoViewHolder);
        ContextCompat.startActivity(context, intent, ActivityOptionsCompat.makeCustomAnimation(context, R.anim.bottom_y_in_activity, R.anim.top_y_out_activity).toBundle());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseCommentFragment
    public void A0(BaseViewHolder baseViewHolder, int i9, Comment comment) {
        if (baseViewHolder instanceof EmptyHolder) {
            loadData(1);
            return;
        }
        ArrayList arrayList = new ArrayList();
        boolean equals = this.f20707o.getUserId().equals(SpUtils.getStr(getActivity(), Contants.USER_ID));
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
        BottomMenuFragment.S1(getSupportFragmentManager(), arrayList, new b(comment, baseViewHolder, i9));
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
            i1(n0(trim), trim);
            SoftKeyBoardUtils.closeSoftKeyBoard(getActivity(), this.f16094b);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseCommentFragment
    protected void F0(Comment comment, View view, TextView textView) {
        GCRequestJava putBody = new GCRequestJava("api/token/social/video/updateCommentLike").putBody(Contants.USER_ID, SpUtils.getStr(getActivity(), Contants.USER_ID));
        putBody.putBody("commentId", comment.getCommentId() + "").j(new e()).complete(new d(view)).request();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    protected void i1(String str, String str2) {
        this.f20709q = true;
        ((ShortVideoViewModel) new ViewModelProvider(this).get(ShortVideoViewModel.class)).addVideoComment(str, this.f20703k, this.f16096d, new c(str, str2));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseCommentFragment, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        Intent intent = getIntent();
        VideoItem videoItem = (VideoItem) intent.getParcelableExtra("videoItem");
        this.f20707o = videoItem;
        if (videoItem == null) {
            this.f20707o = new VideoItem();
        }
        this.f20708p = (Comment) MemoryCache.getInstance().clear(Comment.class);
        this.f20706n = (ShortVideoViewHolder) MemoryCache.getInstance().clear(ShortVideoViewHolder.class);
        VideoItem videoItem2 = this.f20707o;
        if (videoItem2 != null) {
            this.f16093a = videoItem2.getUserId();
        }
        this.f20705m = intent.getBooleanExtra("forceEdit", false);
        this.f20703k = intent.getStringExtra("videoId");
        this.f20704l = intent.getIntExtra("from", 0);
        this.mDanmuSwitch.setSelected(AppSettings.getSetting("danmu", true) && getCurrentUser().getVideoBarrageSwitch() == 1);
        this.mDanmuSwitch.setVisibility(getCurrentUser().getVideoBarrageSwitch() != 1 ? 4 : 0);
        this.mTextViewCount.setText(Formatter.getFormat(this.f20707o.getVideoCommentNum()));
        if (this.f20705m) {
            SoftKeyBoardUtils.openSoftKeyBoard(this.f16094b);
        }
    }

    protected void k1(Comment comment, BaseViewHolder baseViewHolder) {
        ((ShortVideoViewModel) new ViewModelProvider(this).get(ShortVideoViewModel.class)).deleteCommentById(comment.getCommentId() + "", this.f20703k, new f(baseViewHolder, comment));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        ((ShortVideoViewModel) new ViewModelProvider(this).get(ShortVideoViewModel.class)).getCommentList(getCurrentPage(), 10, this.f20703k, new a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (SystemUtil.getDeviceBrand().toLowerCase().contains("samsung")) {
            this.f16094b.requestFocus();
        }
    }

    @OnClick
    public void setDanmuSwitch(View view) {
        boolean z10 = AppSettings.getSetting("danmu", true) && getCurrentUser().getVideoBarrageSwitch() == 1;
        AppSettings.setSetting("danmu", !z10);
        ShortVideoViewHolder shortVideoViewHolder = this.f20706n;
        if (shortVideoViewHolder != null) {
            shortVideoViewHolder.o(this.f20707o);
        }
        view.setSelected(!z10);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean shouldShowLiveFloatWindow() {
        return false;
    }
}
