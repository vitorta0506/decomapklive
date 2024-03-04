package com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityObserver;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.bean.LiveActivityDialogBean;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.web.WebViewActivity;
import com.rd.PageIndicatorView;
import com.tencent.ugc.UGCTransitionRules;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
/* loaded from: classes3.dex */
public class LiveActivityDialog extends BaseDialogFragment {

    /* renamed from: b  reason: collision with root package name */
    private List<LiveActivityDialogBean.LiveItemBean> f20075b;

    /* renamed from: c  reason: collision with root package name */
    private String f20076c;
    @BindView
    FrameLayout cardView;

    /* renamed from: d  reason: collision with root package name */
    private PagerSnapHelper f20077d;

    /* renamed from: e  reason: collision with root package name */
    private LiveActivityObserver.ScrollLinearLayoutManager f20078e;

    /* renamed from: f  reason: collision with root package name */
    private int f20079f;
    @BindView
    PageIndicatorView pageIndicatorView;
    @BindView
    RecyclerView recyclerView;

    /* renamed from: a  reason: collision with root package name */
    private Handler f20074a = new Handler();

    /* renamed from: g  reason: collision with root package name */
    private Runnable f20080g = new c();

    /* loaded from: classes3.dex */
    class a extends RecyclerView.Adapter<BaseViewHolder> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityDialog$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class View$OnClickListenerC0194a implements View.OnClickListener {
            View$OnClickListenerC0194a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LiveActivityDialog.this.getContext() == null || LiveActivityDialog.this.f20075b == null || LiveActivityDialog.this.f20075b.isEmpty()) {
                    return;
                }
                LiveActivityDialogBean.LiveItemBean liveItemBean = (LiveActivityDialogBean.LiveItemBean) LiveActivityDialog.this.f20075b.get(((Integer) view.findViewById(R.id.image_view).getTag()).intValue() % LiveActivityDialog.this.f20075b.size());
                if (liveItemBean == null || liveItemBean.getIsClick() == 1) {
                    return;
                }
                WebViewActivity.createBuilder().m(liveItemBean.getClickUrl()).l(liveItemBean.getName()).g(true).k(liveItemBean.getClickUrl()).i(liveItemBean.getShareText()).h(liveItemBean.getShareImg()).f(String.valueOf(liveItemBean.getId())).a(LiveActivityDialog.this.getContext());
                int id2 = liveItemBean.getId();
                ArrayList arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(id2));
                new PostRequest("api/appactivity/udpateClickLog").v("type", 2).v("activityDialogId", arrayList).L();
            }
        }

        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return LiveActivityDialog.this.f20075b.size() > 1 ? Integer.MAX_VALUE : 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            if (LiveActivityDialog.this.getContext() == null || LiveActivityDialog.this.f20075b == null || LiveActivityDialog.this.f20075b.isEmpty()) {
                return;
            }
            baseViewHolder.itemView.findViewById(R.id.image_view).setTag(Integer.valueOf(i9));
            int size = i9 % LiveActivityDialog.this.f20075b.size();
            if (!TextUtils.isEmpty(LiveActivityDialog.this.f20076c) && size <= 0) {
                Bitmap decodeFile = BitmapFactory.decodeFile(LiveActivityDialog.this.f20076c);
                if (decodeFile != null) {
                    ((ImageView) baseViewHolder.itemView.findViewById(R.id.image_view)).setImageBitmap(decodeFile);
                    return;
                } else {
                    hc.a.j((ImageView) baseViewHolder.itemView.findViewById(R.id.image_view), ((LiveActivityDialogBean.LiveItemBean) LiveActivityDialog.this.f20075b.get(size)).getImg());
                    return;
                }
            }
            hc.a.j((ImageView) baseViewHolder.itemView.findViewById(R.id.image_view), ((LiveActivityDialogBean.LiveItemBean) LiveActivityDialog.this.f20075b.get(size)).getImg());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            BaseViewHolder baseViewHolder = new BaseViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.fragment_image_ads, viewGroup, false));
            baseViewHolder.itemView.setOnClickListener(new View$OnClickListenerC0194a());
            return baseViewHolder;
        }
    }

    /* loaded from: classes3.dex */
    class b extends RecyclerView.OnScrollListener {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            if (i9 != 0) {
                if (i9 != 1) {
                    return;
                }
                LiveActivityDialog.this.f20074a.removeCallbacks(LiveActivityDialog.this.f20080g);
                return;
            }
            if (LiveActivityDialog.this.f20075b.size() > 1) {
                View findSnapView = LiveActivityDialog.this.f20077d.findSnapView(LiveActivityDialog.this.f20078e);
                if (findSnapView != null) {
                    LiveActivityDialog liveActivityDialog = LiveActivityDialog.this;
                    liveActivityDialog.f20079f = liveActivityDialog.f20078e.getPosition(findSnapView);
                }
                LiveActivityDialog liveActivityDialog2 = LiveActivityDialog.this;
                liveActivityDialog2.pageIndicatorView.setSelected(liveActivityDialog2.f20079f % LiveActivityDialog.this.f20075b.size());
            }
            LiveActivityDialog.this.f20074a.postDelayed(LiveActivityDialog.this.f20080g, 2000L);
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LiveActivityDialog liveActivityDialog = LiveActivityDialog.this;
            liveActivityDialog.pageIndicatorView.setSelected(liveActivityDialog.f20079f % LiveActivityDialog.this.f20075b.size());
            LiveActivityDialog liveActivityDialog2 = LiveActivityDialog.this;
            liveActivityDialog2.recyclerView.smoothScrollToPosition(LiveActivityDialog.V1(liveActivityDialog2));
        }
    }

    static /* synthetic */ int V1(LiveActivityDialog liveActivityDialog) {
        int i9 = liveActivityDialog.f20079f + 1;
        liveActivityDialog.f20079f = i9;
        return i9;
    }

    public static void Y1(FragmentManager fragmentManager, List<LiveActivityDialogBean.LiveItemBean> list, String str) {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity instanceof BaseActivity) {
            ((BaseActivity) currTopActivity).hideSoftKeyboard();
        }
        LiveActivityDialog liveActivityDialog = new LiveActivityDialog();
        MemoryCache memoryCache = MemoryCache.getInstance();
        memoryCache.put("data" + LiveActivityDialog.class.getSimpleName(), list);
        MemoryCache.getInstance().put(ShareInternalUtility.STAGING_PARAM, str);
        liveActivityDialog.show(fragmentManager, LiveActivityDialog.class.getSimpleName());
        ArrayList arrayList = new ArrayList();
        for (LiveActivityDialogBean.LiveItemBean liveItemBean : list) {
            arrayList.add(Integer.valueOf(liveItemBean.getId()));
        }
        new PostRequest("api/appactivity/udpateClickLog").v("type", 1).v("activityDialogId", arrayList).L();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        if (!TextUtils.isEmpty(this.f20076c)) {
            File file = new File(this.f20076c);
            if (file.exists()) {
                file.delete();
            }
        }
        Handler handler = this.f20074a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_live_activity;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        MemoryCache memoryCache = MemoryCache.getInstance();
        this.f20075b = (List) memoryCache.remove("data" + LiveActivityDialog.class.getSimpleName());
        this.f20076c = (String) MemoryCache.getInstance().remove(ShareInternalUtility.STAGING_PARAM);
        List<LiveActivityDialogBean.LiveItemBean> list = this.f20075b;
        if (list != null && !list.isEmpty()) {
            getDialog().getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
            this.f20077d = new PagerSnapHelper();
            LiveActivityObserver.ScrollLinearLayoutManager scrollLinearLayoutManager = new LiveActivityObserver.ScrollLinearLayoutManager(getContext(), 0, false, true);
            this.f20078e = scrollLinearLayoutManager;
            scrollLinearLayoutManager.b(true);
            this.recyclerView.setLayoutManager(this.f20078e);
            this.f20077d.attachToRecyclerView(this.recyclerView);
            this.recyclerView.setAdapter(new a());
            this.recyclerView.addOnScrollListener(new b());
            ViewGroup.LayoutParams layoutParams = this.cardView.getLayoutParams();
            if (layoutParams.width < DensityUtil.dp2px(300.0f)) {
                layoutParams.width = DensityUtil.dp2px(300.0f);
            }
            layoutParams.height = (int) ((layoutParams.width * 8.0f) / 6.0f);
            return;
        }
        dismissAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        if (this.f20075b == null) {
            this.f20075b = new ArrayList();
            return;
        }
        if (this.recyclerView.getAdapter() != null) {
            this.recyclerView.getAdapter().notifyDataSetChanged();
        }
        int size = LockFreeTaskQueueCore.MAX_CAPACITY_MASK - (LockFreeTaskQueueCore.MAX_CAPACITY_MASK % this.f20075b.size());
        this.f20079f = size;
        this.recyclerView.scrollToPosition(size);
        this.pageIndicatorView.setCount(this.f20075b.size());
        if (this.pageIndicatorView.getCount() == 1) {
            this.pageIndicatorView.setVisibility(8);
        } else {
            this.f20074a.postDelayed(this.f20080g, 2000L);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getDialog() == null || getDialog().getWindow() == null) {
            return;
        }
        getDialog().getWindow().setLayout(-1, -1);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.NormalDialog);
        createBottomDialog.setCanceledOnTouchOutside(false);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        return createBottomDialog;
    }

    @OnClick
    public void onViewClicked() {
        dismiss();
    }
}
