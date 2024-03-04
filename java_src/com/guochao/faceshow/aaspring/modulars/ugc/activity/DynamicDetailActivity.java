package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.os.Build;
import android.os.Bundle;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GestureDetectorCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.Comment;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.base.DynamicCommentEvent;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.DynamicCommentListFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.viewholder.ImageDynamicViewHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.viewholder.VideoDynamicViewHolder;
import com.guochao.faceshow.aaspring.utils.DynamicImageZoomHelper;
import com.guochao.faceshow.aaspring.utils.EmptyUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.views.Love;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public class DynamicDetailActivity extends BaseActivity implements aa.e {

    /* renamed from: a  reason: collision with root package name */
    private String f22178a;

    /* renamed from: b  reason: collision with root package name */
    private Comment f22179b;

    /* renamed from: c  reason: collision with root package name */
    private DynamicBean f22180c;

    /* renamed from: d  reason: collision with root package name */
    private BaseDynamicViewHolder f22181d;

    /* renamed from: e  reason: collision with root package name */
    private GestureDetectorCompat f22182e;

    /* renamed from: f  reason: collision with root package name */
    private DynamicImageZoomHelper f22183f;

    /* renamed from: g  reason: collision with root package name */
    private BaseDynamicViewHolder f22184g;

    /* renamed from: h  reason: collision with root package name */
    protected int f22185h;

    /* renamed from: i  reason: collision with root package name */
    private Love f22186i;

    /* renamed from: j  reason: collision with root package name */
    RecyclerView.RecycledViewPool f22187j;
    @BindView
    ViewGroup mViewGroup;

    /* loaded from: classes3.dex */
    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }
    }

    /* loaded from: classes3.dex */
    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (DynamicDetailActivity.this.f22181d == null) {
                return super.onDoubleTap(motionEvent);
            }
            DynamicDetailActivity.this.f22181d.q();
            if (DynamicDetailActivity.this.f22186i != null) {
                DynamicDetailActivity.this.f22186i.a(MotionEvent.obtain(0L, 0L, 1, motionEvent.getRawX(), motionEvent.getRawY(), 0));
            }
            return super.onDoubleTap(motionEvent);
        }
    }

    /* loaded from: classes3.dex */
    class c extends com.guochao.faceshow.aaspring.base.http.callback.c<DynamicBean> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnTouchListener {
            a() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return DynamicDetailActivity.this.f22182e.onTouchEvent(motionEvent);
            }
        }

        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable DynamicBean dynamicBean, @NonNull FaceCastBaseResponse<DynamicBean> faceCastBaseResponse) {
            if (dynamicBean != null) {
                DynamicDetailActivity.this.f22180c = dynamicBean;
                DynamicDetailActivity dynamicDetailActivity = DynamicDetailActivity.this;
                dynamicDetailActivity.f22181d = y9.a.a(dynamicDetailActivity.getActivity(), DynamicDetailActivity.this.getLayoutInflater(), DynamicDetailActivity.this.mViewGroup, dynamicBean.getItemViewType());
                DynamicDetailActivity.this.f22181d.setOnDynamicOperationListener(DynamicDetailActivity.this);
                DynamicDetailActivity dynamicDetailActivity2 = DynamicDetailActivity.this;
                dynamicDetailActivity2.mViewGroup.addView(dynamicDetailActivity2.f22181d.itemView);
                DynamicDetailActivity.this.f22181d.o(dynamicBean);
                DynamicDetailActivity.this.f22181d.itemView.setOnTouchListener(new a());
                if (EmptyUtils.isEmpty(DynamicDetailActivity.this.f22179b)) {
                    return;
                }
                DynamicCommentListFragment.h1(DynamicDetailActivity.this.getActivity(), dynamicBean.getFriendId(), dynamicBean.getUserId(), DynamicDetailActivity.this.f22179b);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<DynamicBean> aVar) {
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // aa.e
    public RecyclerView.RecycledViewPool getImageRecyclerViewPool() {
        if (this.f22187j == null) {
            this.f22187j = new RecyclerView.RecycledViewPool();
        }
        return this.f22187j;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_dynamic_detail;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (Build.VERSION.SDK_INT >= 23) {
            getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 8192);
        }
        this.f22182e = new GestureDetectorCompat(getActivity(), new a());
        Love love = new Love(getActivity());
        this.f22186i = love;
        love.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ((ViewGroup) getActivity().getWindow().getDecorView()).addView(this.f22186i);
        this.f22182e.setOnDoubleTapListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        post("tokens/friend/details").v("friendId", this.f22178a).M(new c());
    }

    @Override // aa.e
    public void onAvatarClicked(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean) {
    }

    @Override // aa.e
    public void onBlackStateChanged(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, boolean z10) {
        BaseDynamicViewHolder baseDynamicViewHolder2 = this.f22181d;
        if (baseDynamicViewHolder2 != null) {
            baseDynamicViewHolder2.o(dynamicBean);
        }
    }

    @Override // aa.e
    public void onCommentButtonClicked(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean) {
        if (baseDynamicViewHolder == null || dynamicBean == null) {
            return;
        }
        this.f22184g = baseDynamicViewHolder;
        this.f22185h = dynamicBean.getFriendId();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f22178a = getIntent().getStringExtra("circle_id");
        this.f22179b = (Comment) MemoryCache.getInstance().clear(Comment.class);
        super.onCreate(bundle);
        setTitle(R.string.ugc_dynamic_detail);
    }

    @Override // aa.e
    public void onDeleteDynamic(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean) {
        if (baseDynamicViewHolder instanceof VideoDynamicViewHolder) {
            ((VideoDynamicViewHolder) baseDynamicViewHolder).e0();
        }
        finish();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDynamicCommentEvent(DynamicCommentEvent dynamicCommentEvent) {
        if (dynamicCommentEvent == null || dynamicCommentEvent.getDynamicCommentId() != this.f22185h) {
            return;
        }
        this.f22184g.I(dynamicCommentEvent.getCommentType());
    }

    @Override // aa.e
    public void onFocusStateChanged(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, boolean z10) {
        BaseDynamicViewHolder baseDynamicViewHolder2 = this.f22181d;
        if (baseDynamicViewHolder2 != null) {
            baseDynamicViewHolder2.o(dynamicBean);
        }
    }

    @Override // aa.e
    public void onImageClick(ImageDynamicViewHolder imageDynamicViewHolder, DynamicBean dynamicBean, int i9, RecyclerView recyclerView, View view) {
        if (this.f22183f == null) {
            this.f22183f = new DynamicImageZoomHelper(getActivity());
        }
        this.f22183f.startZoom(imageDynamicViewHolder, dynamicBean, i9, recyclerView, view);
    }

    @Override // aa.e
    public /* synthetic */ void onLikeClick(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, int i9) {
        aa.d.a(this, baseDynamicViewHolder, dynamicBean, i9);
    }

    @Override // aa.e
    public void onResendClicked(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean) {
    }

    @Override // aa.e
    public void onVideoClick(VideoDynamicViewHolder videoDynamicViewHolder, DynamicBean dynamicBean) {
    }
}
