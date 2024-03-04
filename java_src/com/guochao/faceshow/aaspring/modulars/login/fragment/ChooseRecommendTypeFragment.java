package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.g;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.FriendSettingBean;
import com.guochao.faceshow.aaspring.beans.RecommendUser;
import com.guochao.faceshow.aaspring.modulars.login.activity.ChooseRecommendTypeActivity;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.GsonGetter;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import s0.k;
/* loaded from: classes3.dex */
public class ChooseRecommendTypeFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    List<f> f20414a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private boolean f20415b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f20416c = false;

    /* renamed from: d  reason: collision with root package name */
    Handler f20417d = new Handler();
    @BindView
    ImageView mImageView;
    @BindView
    TextView mNext;
    @BindView
    RecyclerView mRecyclerView;

    /* loaded from: classes3.dex */
    class a extends LinearLayoutManager {
        a(Context context, int i9, boolean z10) {
            super(context, i9, z10);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void onMeasure(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, int i9, int i10) {
            int size = (int) ((((View.MeasureSpec.getSize(i10) - ChooseRecommendTypeFragment.this.mRecyclerView.getPaddingBottom()) - ChooseRecommendTypeFragment.this.mRecyclerView.getPaddingTop()) / 3.0f) + 0.5f);
            int size2 = (View.MeasureSpec.getSize(i9) - ChooseRecommendTypeFragment.this.mRecyclerView.getPaddingStart()) - ChooseRecommendTypeFragment.this.mRecyclerView.getPaddingEnd();
            for (int i11 = 0; i11 < ChooseRecommendTypeFragment.this.mRecyclerView.getChildCount(); i11++) {
                View childAt = ChooseRecommendTypeFragment.this.mRecyclerView.getChildAt(i11);
                childAt.getLayoutParams().height = size;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(size2, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(size, BasicMeasure.EXACTLY));
            }
            super.onMeasure(recycler, state, i9, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<RecommendUser> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f20419a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f20420b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends s0.c<File> {
            a() {
            }

            @Override // s0.k
            public void onLoadCleared(@Nullable Drawable drawable) {
            }

            public void onResourceReady(@NonNull File file, @Nullable t0.f<? super File> fVar) {
            }

            @Override // s0.k
            public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
                onResourceReady((File) obj, (t0.f<? super File>) fVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.modulars.login.fragment.ChooseRecommendTypeFragment$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class RunnableC0196b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ c f20423a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ RecommendUser f20424b;

            RunnableC0196b(c cVar, RecommendUser recommendUser) {
                this.f20423a = cVar;
                this.f20424b = recommendUser;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f20423a.d();
                if (ChooseRecommendTypeFragment.this.getActivity() instanceof d) {
                    ((d) ChooseRecommendTypeFragment.this.getActivity()).m(this.f20424b);
                }
            }
        }

        b(long j10, View view) {
            this.f20419a = j10;
            this.f20420b = view;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable RecommendUser recommendUser, @NonNull FaceCastBaseResponse<RecommendUser> faceCastBaseResponse) {
            if (recommendUser != null && recommendUser.getRecommendList() != null) {
                long currentTimeMillis = System.currentTimeMillis() - this.f20419a;
                if (currentTimeMillis >= 5000) {
                    if (ChooseRecommendTypeFragment.this.getActivity() instanceof d) {
                        ((d) ChooseRecommendTypeFragment.this.getActivity()).m(recommendUser);
                        return;
                    }
                    return;
                }
                List<RecommendUser.RecommendListBean> recommendList = recommendUser.getRecommendList();
                c cVar = new c(recommendList.size(), (d) ChooseRecommendTypeFragment.this.getActivity(), recommendUser);
                for (int i9 = 0; i9 < recommendList.size(); i9++) {
                    ic.a.b(BaseApplication.getInstance()).d().Z0(recommendList.get(i9).getAvatarUrl()).x0(cVar).M0(new a());
                }
                ChooseRecommendTypeFragment.this.f20417d.postDelayed(new RunnableC0196b(cVar, recommendUser), 5000 - currentTimeMillis);
                return;
            }
            onFailure(new g7.a<>(new RuntimeException(" data is null"), 0));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            ChooseRecommendTypeFragment.this.f20415b = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<RecommendUser> aVar) {
            ChooseRecommendTypeFragment.this.mImageView.setVisibility(4);
            this.f20420b.findViewById(R.id.next).setVisibility(0);
            ((AnimationDrawable) ChooseRecommendTypeFragment.this.mImageView.getDrawable()).stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class c implements g<File> {

        /* renamed from: a  reason: collision with root package name */
        int f20426a;

        /* renamed from: b  reason: collision with root package name */
        WeakReference<d> f20427b;

        /* renamed from: c  reason: collision with root package name */
        RecommendUser f20428c;

        /* renamed from: d  reason: collision with root package name */
        int f20429d;

        /* renamed from: e  reason: collision with root package name */
        boolean f20430e;

        public c(int i9, d dVar, RecommendUser recommendUser) {
            this.f20426a = i9;
            this.f20427b = new WeakReference<>(dVar);
            this.f20428c = recommendUser;
        }

        @Override // com.bumptech.glide.request.g
        public boolean b(@Nullable GlideException glideException, Object obj, k<File> kVar, boolean z10) {
            c();
            return false;
        }

        void c() {
            d dVar;
            if (this.f20430e) {
                return;
            }
            int i9 = this.f20429d + 1;
            this.f20429d = i9;
            if (i9 != this.f20426a || (dVar = this.f20427b.get()) == null) {
                return;
            }
            d();
            dVar.m(this.f20428c);
        }

        void d() {
            this.f20430e = true;
        }

        @Override // com.bumptech.glide.request.g
        /* renamed from: e */
        public boolean a(File file, Object obj, k<File> kVar, DataSource dataSource, boolean z10) {
            c();
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void m(RecommendUser recommendUser);
    }

    /* loaded from: classes3.dex */
    static class e extends RecyclerView.Adapter<BaseViewHolder> {

        /* renamed from: a  reason: collision with root package name */
        List<f> f20431a;

        /* renamed from: b  reason: collision with root package name */
        WeakReference<ChooseRecommendTypeFragment> f20432b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ View f20433a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ View f20434b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f20435c;

            a(View view, View view2, int i9) {
                this.f20433a = view;
                this.f20434b = view2;
                this.f20435c = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.this.b(this.f20433a, this.f20434b, this.f20435c, 0);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ View f20437a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ View f20438b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f20439c;

            b(View view, View view2, int i9) {
                this.f20437a = view;
                this.f20438b = view2;
                this.f20439c = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.this.b(this.f20437a, this.f20438b, this.f20439c, 1);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class c extends RecyclerView.Adapter<BaseViewHolder> {

            /* renamed from: a  reason: collision with root package name */
            int f20441a = -1;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ f f20442b;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* loaded from: classes3.dex */
            public class a implements View.OnClickListener {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ int f20444a;

                a(int i9) {
                    this.f20444a = i9;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    c cVar = c.this;
                    int i9 = cVar.f20441a;
                    int i10 = this.f20444a;
                    if (i9 == i10) {
                        return;
                    }
                    cVar.f20441a = i10;
                    cVar.f20442b.f20447b = i10;
                    cVar.notifyDataSetChanged();
                    ChooseRecommendTypeFragment chooseRecommendTypeFragment = e.this.f20432b.get();
                    if (chooseRecommendTypeFragment != null) {
                        chooseRecommendTypeFragment.R1();
                    }
                }
            }

            c(f fVar) {
                this.f20442b = fVar;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return this.f20442b.f20450e.size();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) baseViewHolder.itemView.getLayoutParams();
                if (i9 % 2 != 0) {
                    marginLayoutParams.setMarginStart(DensityUtil.dp2px(8.0f));
                    marginLayoutParams.setMarginEnd(0);
                } else {
                    marginLayoutParams.setMarginEnd(DensityUtil.dp2px(8.0f));
                    marginLayoutParams.setMarginStart(0);
                }
                TextView textView = (TextView) baseViewHolder.getView(R.id.sub_title);
                ImageView imageView = (ImageView) baseViewHolder.getView(R.id.img);
                View view = baseViewHolder.getView(R.id.check_icon);
                if (this.f20441a == i9) {
                    view.setVisibility(0);
                    baseViewHolder.itemView.setSelected(true);
                    imageView.animate().scaleY(1.2f).scaleX(1.2f).start();
                    baseViewHolder.itemView.setAlpha(1.0f);
                } else {
                    view.setVisibility(4);
                    baseViewHolder.itemView.setSelected(false);
                    imageView.animate().scaleY(1.0f).scaleX(1.0f).start();
                    baseViewHolder.itemView.setAlpha(0.5f);
                }
                ic.a.b(BaseApplication.getInstance()).r(this.f20442b.f20450e.get(i9).getImgUrl()).Z(Integer.MIN_VALUE).Q0(imageView);
                textView.setText(this.f20442b.f20450e.get(i9).getTname());
                baseViewHolder.itemView.setOnClickListener(new a(i9));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            @NonNull
            public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
                return new BaseViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_choose_type, viewGroup, false));
            }
        }

        public e(ChooseRecommendTypeFragment chooseRecommendTypeFragment, List<f> list) {
            this.f20432b = new WeakReference<>(chooseRecommendTypeFragment);
            this.f20431a = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(View view, View view2, int i9, int i10) {
            ChooseRecommendTypeFragment chooseRecommendTypeFragment = this.f20432b.get();
            if (chooseRecommendTypeFragment == null || chooseRecommendTypeFragment.f20415b || this.f20431a.get(i9).f20447b == i10) {
                return;
            }
            this.f20431a.get(i9).f20447b = i10;
            if (i10 == 0) {
                view.setSelected(true);
                view2.setSelected(false);
                c(view.findViewById(R.id.img), 1.2f);
                c(view2.findViewById(R.id.img), 1.0f);
                view.setAlpha(1.0f);
                view2.setAlpha(0.5f);
                view.findViewById(R.id.check_icon).setVisibility(0);
                view2.findViewById(R.id.check_icon).setVisibility(4);
            } else {
                view.setAlpha(0.5f);
                view2.setAlpha(1.0f);
                view.setSelected(false);
                view2.setSelected(true);
                c(view.findViewById(R.id.img), 1.0f);
                c(view2.findViewById(R.id.img), 1.2f);
                view.findViewById(R.id.check_icon).setVisibility(4);
                view2.findViewById(R.id.check_icon).setVisibility(0);
            }
            chooseRecommendTypeFragment.R1();
        }

        private void c(View view, float f10) {
            view.animate().scaleX(f10).scaleY(f10).setDuration(200L).start();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f20431a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i9) {
            if (this.f20431a.get(i9).f20450e != null) {
                return 1;
            }
            return super.getItemViewType(i9);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            f fVar = this.f20431a.get(i9);
            ((TextView) baseViewHolder.getView(R.id.title)).setText(fVar.f20446a);
            if (baseViewHolder.getItemViewType() == 0) {
                View view = baseViewHolder.getView(R.id.selection_1);
                View view2 = baseViewHolder.getView(R.id.selection_2);
                TextView textView = (TextView) view.findViewById(R.id.sub_title);
                TextView textView2 = (TextView) view2.findViewById(R.id.sub_title);
                ImageView imageView = (ImageView) view.findViewById(R.id.img);
                ImageView imageView2 = (ImageView) view2.findViewById(R.id.img);
                f fVar2 = this.f20431a.get(i9);
                int i10 = fVar.f20447b;
                if (i10 == -1) {
                    view.setAlpha(0.5f);
                    view2.setAlpha(0.5f);
                } else {
                    view.setAlpha(i10 == 0 ? 1.0f : 0.5f);
                    view2.setAlpha(fVar.f20447b == 1 ? 1.0f : 0.5f);
                }
                int[] iArr = fVar2.f20448c;
                if (iArr != null) {
                    imageView.setImageResource(iArr[0]);
                    imageView2.setImageResource(fVar2.f20448c[1]);
                }
                int[] iArr2 = fVar2.f20449d;
                if (iArr2 != null) {
                    textView.setText(iArr2[0]);
                    textView2.setText(fVar2.f20449d[1]);
                }
                view.setOnClickListener(new a(view, view2, i9));
                view2.setOnClickListener(new b(view, view2, i9));
                return;
            }
            RecyclerView recyclerView = (RecyclerView) baseViewHolder.getView(R.id.recycler_view);
            recyclerView.setLayoutManager(new GridLayoutManager(baseViewHolder.itemView.getContext(), 2, 1, false));
            recyclerView.setAdapter(new c(fVar));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            if (i9 == 1) {
                return new BaseViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_recommend_type_multi, viewGroup, false));
            }
            return new BaseViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_recommend_type, viewGroup, false));
        }
    }

    void R1() {
        for (f fVar : this.f20414a) {
            if (fVar.f20447b == -1) {
                this.f20416c = false;
                return;
            }
        }
        this.f20416c = true;
    }

    public void S1() {
        this.mImageView.setVisibility(0);
        View view = getView();
        if (view == null) {
            return;
        }
        view.findViewById(R.id.next).setVisibility(4);
        ((AnimationDrawable) this.mImageView.getDrawable()).start();
        this.f20415b = true;
        PostRequest post = post("tokens/user/recommend/v3/recommendUserList");
        post.D("location", this.f20414a.get(1).f20447b == 0 ? "HOME_COUNTRY" : "FOREIGN_COUNTRY");
        post.D("startAge", this.f20414a.get(0).f20447b == 0 ? "18" : "26").D("endAge", this.f20414a.get(0).f20447b != 0 ? "100" : "26");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (getActivity() instanceof ChooseRecommendTypeActivity) {
            for (FriendSettingBean friendSettingBean : ((ChooseRecommendTypeActivity) getActivity()).f20205c) {
                if (friendSettingBean.getType() == 2) {
                    arrayList2.add(friendSettingBean);
                }
                if (friendSettingBean.getType() == 1) {
                    arrayList3.add(friendSettingBean);
                }
            }
        }
        if (this.f20414a.get(0).f20447b == 0 && arrayList2.size() > 0) {
            arrayList.add(Integer.valueOf(((FriendSettingBean) arrayList2.get(0)).getTagId()));
        } else if (arrayList2.size() > 1) {
            arrayList.add(Integer.valueOf(((FriendSettingBean) arrayList2.get(1)).getTagId()));
        }
        if (this.f20414a.get(1).f20447b == 0 && arrayList3.size() > 0) {
            arrayList.add(Integer.valueOf(((FriendSettingBean) arrayList3.get(0)).getTagId()));
        } else if (arrayList3.size() > 1) {
            arrayList.add(Integer.valueOf(((FriendSettingBean) arrayList3.get(1)).getTagId()));
        }
        if (this.f20414a.size() > 2 && this.f20414a.get(2).f20450e.size() > this.f20414a.get(2).f20447b) {
            arrayList.add(Integer.valueOf(this.f20414a.get(2).f20450e.get(this.f20414a.get(2).f20447b).getTagId()));
        }
        post.D("makeFriendIds", GsonGetter.getGson().toJson(arrayList));
        post.M(new b(System.currentTimeMillis(), view));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_choose_recommend_type;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.mNext.setText(BaseConfig.isChinese() ? R.string.Next_step : R.string.recommend_next);
        this.f20414a.add(new f(R.string.recommend_title_1));
        this.f20414a.add(new f(R.string.recommend_title_2));
        ChooseRecommendTypeActivity chooseRecommendTypeActivity = (ChooseRecommendTypeActivity) getActivity();
        if (chooseRecommendTypeActivity != null) {
            chooseRecommendTypeActivity.setTitle(R.string.friendship_intention);
            ArrayList arrayList = new ArrayList();
            for (FriendSettingBean friendSettingBean : chooseRecommendTypeActivity.f20205c) {
                if (friendSettingBean.getType() == 0) {
                    arrayList.add(friendSettingBean);
                }
            }
            if (!arrayList.isEmpty()) {
                this.f20414a.add(new f(R.string.recommend_title_3, arrayList));
            }
        }
        this.mRecyclerView.setLayoutManager(new a(getActivity(), 1, false));
        this.mRecyclerView.setAdapter(new e(this, this.f20414a));
        if (getActivity() instanceof AppCompatActivity) {
            AppCompatActivity appCompatActivity = (AppCompatActivity) getActivity();
            if (appCompatActivity.getSupportActionBar() != null) {
                appCompatActivity.getSupportActionBar().setDisplayHomeAsUpEnabled(false);
            }
        }
        this.f20416c = false;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @OnClick
    public void next(View view) {
        if (!this.f20416c) {
            showToast(R.string.chooce_friend_state);
        } else if (this.f20415b) {
        } else {
            S1();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f20417d.removeMessages(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class f {
        @StringRes

        /* renamed from: a  reason: collision with root package name */
        int f20446a;

        /* renamed from: b  reason: collision with root package name */
        int f20447b;

        /* renamed from: c  reason: collision with root package name */
        int[] f20448c;

        /* renamed from: d  reason: collision with root package name */
        int[] f20449d;

        /* renamed from: e  reason: collision with root package name */
        List<FriendSettingBean> f20450e;

        public f(int i9) {
            this.f20447b = -1;
            this.f20446a = i9;
            switch (i9) {
                case R.string.recommend_title_1 /* 2131887989 */:
                    this.f20448c = new int[2];
                    if (b8.e.g().c().getGender() != 0) {
                        int[] iArr = this.f20448c;
                        iArr[0] = R.mipmap.wantto_image01_nv;
                        iArr[1] = R.mipmap.wantto_image02_nv;
                    } else {
                        int[] iArr2 = this.f20448c;
                        iArr2[0] = R.mipmap.wantto_image01_nan;
                        iArr2[1] = R.mipmap.wantto_image02_nan;
                    }
                    this.f20449d = r5;
                    int[] iArr3 = {R.string.recommend_18, R.string.recommend_26};
                    return;
                case R.string.recommend_title_2 /* 2131887990 */:
                    this.f20448c = r5;
                    int[] iArr4 = {R.mipmap.wantto_image03, R.mipmap.wantto_image04};
                    this.f20449d = new int[2];
                    if (BaseConfig.isChinese()) {
                        int[] iArr5 = this.f20449d;
                        iArr5[0] = R.string.NearBy;
                        iArr5[1] = R.string.unlimited;
                        return;
                    }
                    int[] iArr6 = this.f20449d;
                    iArr6[0] = R.string.countryhot;
                    iArr6[1] = R.string.recommend_foreign;
                    return;
                default:
                    return;
            }
        }

        public f(int i9, List<FriendSettingBean> list) {
            this(i9);
            this.f20450e = list;
        }
    }
}
