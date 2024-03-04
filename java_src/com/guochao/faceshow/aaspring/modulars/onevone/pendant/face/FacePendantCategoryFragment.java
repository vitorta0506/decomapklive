package com.guochao.faceshow.aaspring.modulars.onevone.pendant.face;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.BeautyItemCache;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.manager.BeautyItemCacheManager;
import com.guochao.faceshow.aaspring.manager.a;
import com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog;
import com.guochao.faceshow.aaspring.utils.AsyncUtils;
import com.guochao.faceshow.aaspring.utils.ZipUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.pusher.beauty.XMagicBeautyManager;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class FacePendantCategoryFragment extends BaseFragment {

    /* renamed from: c  reason: collision with root package name */
    private ResourceCategoryItem f21004c;
    @BindView
    RecyclerView content;

    /* renamed from: d  reason: collision with root package name */
    private int f21005d;

    /* renamed from: f  reason: collision with root package name */
    private int f21007f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f21008g;

    /* renamed from: h  reason: collision with root package name */
    BeautyItemCache f21009h;

    /* renamed from: a  reason: collision with root package name */
    private final List<ResourceListItemBean> f21002a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private int f21003b = -1;

    /* renamed from: e  reason: collision with root package name */
    private Set<Integer> f21006e = new HashSet();

    /* loaded from: classes3.dex */
    class a extends RecyclerView.Adapter {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.onevone.pendant.face.FacePendantCategoryFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class View$OnClickListenerC0205a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f21011a;

            View$OnClickListenerC0205a(int i9) {
                this.f21011a = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FacePendantCategoryFragment.this.Y1(this.f21011a);
                FacePendantCategoryFragment.this.a2((ResourceListItemBean) FacePendantCategoryFragment.this.f21002a.get(this.f21011a), this.f21011a);
            }
        }

        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return FacePendantCategoryFragment.this.f21002a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
            if (viewHolder instanceof FacePendantItemHolder) {
                FacePendantItemHolder facePendantItemHolder = (FacePendantItemHolder) viewHolder;
                facePendantItemHolder.e(i9, (ResourceListItemBean) FacePendantCategoryFragment.this.f21002a.get(i9));
                facePendantItemHolder.d(i9 == FacePendantCategoryFragment.this.f21003b);
                if (FacePendantCategoryFragment.this.f21006e.contains(Integer.valueOf(i9))) {
                    facePendantItemHolder.c(FacePendantCategoryFragment.this.f21005d);
                }
                facePendantItemHolder.itemView.setOnClickListener(new View$OnClickListenerC0205a(i9));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return new FacePendantItemHolder(FacePendantCategoryFragment.this.getContext(), viewGroup, FacePendantCategoryFragment.this.f21004c, FacePendantCategoryFragment.this.f21007f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends a.j<File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21013a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ File f21015a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ResourceListItemBean f21016b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ PendantDialog f21017c;

            /* renamed from: com.guochao.faceshow.aaspring.modulars.onevone.pendant.face.FacePendantCategoryFragment$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC0206a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ String f21019a;

                RunnableC0206a(String str) {
                    this.f21019a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    b bVar = b.this;
                    if (bVar.f21013a != FacePendantCategoryFragment.this.f21003b) {
                        return;
                    }
                    FacePendantCategoryFragment.this.f21009h.setLastFaceMotion(this.f21019a);
                    if (FacePendantCategoryFragment.this.getParentFragment() instanceof q9.a) {
                        ((q9.a) FacePendantCategoryFragment.this.getParentFragment()).t1(FacePendantCategoryFragment.this.f21009h);
                    }
                }
            }

            a(File file, ResourceListItemBean resourceListItemBean, PendantDialog pendantDialog) {
                this.f21015a = file;
                this.f21016b = resourceListItemBean;
                this.f21017c = pendantDialog;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    ZipUtils.UnZipFolder(this.f21015a.getPath());
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                String faceNXPath = this.f21016b.getFaceNXPath();
                HandlerGetter.getMainHandler().post(new RunnableC0206a(faceNXPath));
                if (this.f21017c.Q1() != null) {
                    this.f21017c.Q1().b(faceNXPath, this.f21016b);
                } else {
                    XMagicBeautyManager.getInstance(BaseApplication.getInstance()).setMotionTmpl(faceNXPath);
                }
            }
        }

        b(int i9) {
            this.f21013a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.manager.a.j, com.guochao.faceshow.aaspring.manager.a.k
        public void a(@NotNull ResourceCategoryItem resourceCategoryItem, @NotNull ResourceListItemBean resourceListItemBean, double d10, long j10, long j11) {
            super.a(resourceCategoryItem, resourceListItemBean, d10, j10, j11);
            FacePendantCategoryFragment.this.f21005d = (int) (d10 * 100.0d);
            FacePendantCategoryFragment.this.X1(this.f21013a, Integer.valueOf((int) R.id.progress_download));
        }

        @Override // com.guochao.faceshow.aaspring.manager.a.j, com.guochao.faceshow.aaspring.manager.a.k
        public void b(int i9, String str, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean) {
            super.b(i9, str, resourceCategoryItem, resourceListItemBean);
        }

        @Override // com.guochao.faceshow.aaspring.manager.a.j, com.guochao.faceshow.aaspring.manager.a.k
        /* renamed from: d */
        public void c(@NotNull ResourceCategoryItem resourceCategoryItem, @NotNull ResourceListItemBean resourceListItemBean, @Nullable File file) {
            super.c(resourceCategoryItem, resourceListItemBean, file);
            if (FacePendantCategoryFragment.this.getParentFragment() == null || FacePendantCategoryFragment.this.getParentFragment().getParentFragment() == null) {
                return;
            }
            FacePendantCategoryFragment.this.X1(this.f21013a, Integer.valueOf((int) R.id.image_down));
            FacePendantCategoryFragment.this.f21006e.remove(Integer.valueOf(this.f21013a));
            PendantDialog pendantDialog = (PendantDialog) FacePendantCategoryFragment.this.getParentFragment().getParentFragment();
            if (FacePendantCategoryFragment.this.f21007f == 8 && pendantDialog.Q1() != null) {
                pendantDialog.Q1().b(file.getPath(), resourceListItemBean);
            } else {
                AsyncUtils.run(new a(file, resourceListItemBean, pendantDialog));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a2(ResourceListItemBean resourceListItemBean, int i9) {
        com.guochao.faceshow.aaspring.manager.a.g().l(this.f21004c, resourceListItemBean, new b(i9));
    }

    public void X1(int i9, Object obj) {
        this.f21006e.add(Integer.valueOf(i9));
        RecyclerView recyclerView = this.content;
        if (recyclerView == null || recyclerView.getAdapter() == null) {
            return;
        }
        this.content.getAdapter().notifyItemChanged(i9, obj);
    }

    public void Y1(int i9) {
        this.f21003b = i9;
        RecyclerView recyclerView = this.content;
        if (recyclerView == null || recyclerView.getAdapter() == null) {
            return;
        }
        this.content.getAdapter().notifyDataSetChanged();
    }

    public void Z1() {
        this.f21003b = -1;
        RecyclerView recyclerView = this.content;
        if (recyclerView == null || recyclerView.getAdapter() == null) {
            return;
        }
        this.content.getAdapter().notifyDataSetChanged();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_face_pendant_category;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        this.f21007f = arguments.getInt("type");
        boolean z10 = arguments.getBoolean("isTrtc", false);
        this.f21008g = z10;
        if (z10) {
            this.f21007f = 1005;
        }
        this.f21009h = BeautyItemCacheManager.getLast(this.f21007f);
        ResourceCategoryItem resourceCategoryItem = (ResourceCategoryItem) arguments.getParcelable(TypedValues.MotionType.NAME);
        this.f21004c = resourceCategoryItem;
        if (resourceCategoryItem != null) {
            List<ResourceListItemBean> gifList = resourceCategoryItem.getGifList();
            if (this.f21007f == 8) {
                this.f21002a.addAll(gifList);
            } else {
                for (int i9 = 0; i9 < gifList.size(); i9++) {
                    ResourceListItemBean resourceListItemBean = gifList.get(i9);
                    if (!TextUtils.isEmpty(resourceListItemBean.getAndroidFileUrlV2())) {
                        this.f21002a.add(resourceListItemBean);
                    }
                }
            }
        }
        this.content.setLayoutManager(new GridLayoutManager(getContext(), 5, 1, false));
        this.content.setAdapter(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }
}
