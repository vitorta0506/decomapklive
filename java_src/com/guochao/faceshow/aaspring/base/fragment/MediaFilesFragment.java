package com.guochao.faceshow.aaspring.base.fragment;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.beans.MediaLocalData;
import com.guochao.faceshow.aaspring.modulars.chat.activity.DoodleActivity;
import com.guochao.faceshow.aaspring.modulars.chat.activity.SendImagePreviewActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.activity.SimpleMediaActivity;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MediaFileFinder;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.aaspring.views.doodle.DoodleParams;
import com.guochao.faceshow.component.live.activity.FakeLiveChatActivity;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
/* loaded from: classes3.dex */
public class MediaFilesFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    MediaFileFinder f16144a;

    /* renamed from: b  reason: collision with root package name */
    RecyclerView f16145b;
    @BindView
    LinearLayout bottomLay;

    /* renamed from: c  reason: collision with root package name */
    TextView f16146c;
    @BindView
    TextView compile;

    /* renamed from: g  reason: collision with root package name */
    g f16150g;
    @BindView
    TextView gallery;

    /* renamed from: n  reason: collision with root package name */
    private LocalImageOrVideoBean f16157n;

    /* renamed from: p  reason: collision with root package name */
    private f f16159p;

    /* renamed from: s  reason: collision with root package name */
    private Observer<List<LocalImageOrVideoBean>> f16162s;

    /* renamed from: d  reason: collision with root package name */
    private final List<LocalImageOrVideoBean> f16147d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private int f16148e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f16149f = 9;

    /* renamed from: h  reason: collision with root package name */
    private List<LocalImageOrVideoBean> f16151h = new ArrayList();
    @MediaLocalData.SelectHolderType

    /* renamed from: i  reason: collision with root package name */
    private int f16152i = 103;

    /* renamed from: j  reason: collision with root package name */
    private String f16153j = BaseApplication.getInstance().getString(R.string.send);

    /* renamed from: k  reason: collision with root package name */
    private boolean f16154k = true;

    /* renamed from: l  reason: collision with root package name */
    private boolean f16155l = true;

    /* renamed from: m  reason: collision with root package name */
    private boolean f16156m = true;

    /* renamed from: o  reason: collision with root package name */
    private List<LocalImageOrVideoBean> f16158o = new ArrayList();

    /* renamed from: q  reason: collision with root package name */
    private List<LocalImageOrVideoBean> f16160q = new ArrayList();

    /* renamed from: r  reason: collision with root package name */
    private int f16161r = 1;

    /* loaded from: classes3.dex */
    class a extends SimpleObserver<te.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16163a;

        a(View view) {
            this.f16163a = view;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            if (aVar.f58133b) {
                MediaFilesFragment.this.g2(this.f16163a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaFilesFragment.this.f16150g.onSelect(view, new ArrayList(MediaFilesFragment.this.f16151h));
            MediaFilesFragment.this.f16148e = 0;
            MediaFilesFragment.this.reset();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Observer<List<LocalImageOrVideoBean>> {
        c() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(List<LocalImageOrVideoBean> list) {
            MediaFilesFragment.this.f16147d.clear();
            if (MediaFilesFragment.this.f16155l) {
                MediaFilesFragment.this.f16147d.add(new LocalImageOrVideoBean(1));
            }
            MediaFilesFragment.this.f16147d.addAll(list);
            MediaFilesFragment.this.reset();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements aa.b<LocalImageOrVideoBean> {
        d() {
        }

        @Override // aa.b
        /* renamed from: a */
        public boolean accept(LocalImageOrVideoBean localImageOrVideoBean) {
            return !localImageOrVideoBean.getFileName().toLowerCase().endsWith(".gif");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements aa.b<LocalImageOrVideoBean> {
        e() {
        }

        @Override // aa.b
        /* renamed from: a */
        public boolean accept(LocalImageOrVideoBean localImageOrVideoBean) {
            return !localImageOrVideoBean.getFileName().toLowerCase().endsWith(".gif");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class f extends RecyclerView.Adapter<BaseViewHolder> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ LocalImageOrVideoBean f16170a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ImageView f16171b;

            a(LocalImageOrVideoBean localImageOrVideoBean, ImageView imageView) {
                this.f16170a = localImageOrVideoBean;
                this.f16171b = imageView;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!this.f16170a.isSelectable()) {
                    MediaFilesFragment.this.showToast(R.string.File_is_too_large);
                    return;
                }
                if (!this.f16170a.isSelected()) {
                    if (MediaFilesFragment.this.f16148e >= MediaFilesFragment.this.f16149f) {
                        MediaFilesFragment mediaFilesFragment = MediaFilesFragment.this;
                        mediaFilesFragment.showToast(mediaFilesFragment.getString(R.string.Select_count_over_limit, Integer.valueOf(mediaFilesFragment.f16149f)));
                    } else {
                        this.f16170a.setSelected(true);
                        MediaFilesFragment.V1(MediaFilesFragment.this);
                        MediaFilesFragment.this.f16151h.add(this.f16170a);
                    }
                } else {
                    this.f16170a.setSelected(false);
                    MediaFilesFragment.W1(MediaFilesFragment.this);
                    MediaFilesFragment.this.f16151h.remove(this.f16170a);
                }
                this.f16171b.setSelected(this.f16170a.isSelected());
                MediaFilesFragment.this.h2();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ BaseViewHolder f16173a;

            b(BaseViewHolder baseViewHolder) {
                this.f16173a = baseViewHolder;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MediaFilesFragment.this.getActivity() instanceof FakeLiveChatActivity) {
                    return;
                }
                ActivityOptionsCompat makeSceneTransitionAnimation = ActivityOptionsCompat.makeSceneTransitionAnimation(MediaFilesFragment.this.getActivity(), view, "img");
                Intent intent = new Intent(MediaFilesFragment.this.getActivity(), SendImagePreviewActivity.class);
                intent.putExtra(Contants.PARAMS_KEY1, MediaFilesFragment.this.f16153j);
                intent.putExtra(Contants.PARAMS_KEY2, MediaFilesFragment.this.f16149f);
                intent.putExtra("mediaType", MediaFilesFragment.this.f16152i);
                intent.putExtra("currentPosition", this.f16173a.getAbsoluteAdapterPosition() - (MediaFilesFragment.this.f16155l ? 1 : 0));
                if (MediaFilesFragment.this.f16158o != null) {
                    intent.putParcelableArrayListExtra(Contants.PARAMS_KEY3, (ArrayList) MediaFilesFragment.this.f16158o);
                    intent.putExtra(Contants.PARAMS_KEY3_POSITION, MediaFilesFragment.this.f16161r);
                }
                if (MediaFilesFragment.this.f16160q != null && MediaFilesFragment.this.f16160q.size() > 0) {
                    intent.putParcelableArrayListExtra(Contants.DOODLE_LIST, (ArrayList) MediaFilesFragment.this.f16160q);
                }
                MediaFilesFragment.this.startActivityForResult(intent, 1000, makeSceneTransitionAnimation.toBundle());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class c implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ BaseViewHolder f16175a;

            c(BaseViewHolder baseViewHolder) {
                this.f16175a = baseViewHolder;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaFilesFragment.this.f16150g.onCameraClick(this.f16175a.itemView);
            }
        }

        public f() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return MediaFilesFragment.this.f16147d.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i9) {
            return (MediaFilesFragment.this.f16155l && i9 == 0) ? 1 : 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(BaseViewHolder baseViewHolder, int i9) {
            baseViewHolder.getView(R.id.gif_indicator).setVisibility(8);
            if (baseViewHolder.getItemViewType() == 2) {
                LocalImageOrVideoBean localImageOrVideoBean = (LocalImageOrVideoBean) MediaFilesFragment.this.f16147d.get(i9);
                if (localImageOrVideoBean != null) {
                    ImageView imageView = (ImageView) baseViewHolder.getView(R.id.icon_video);
                    if (localImageOrVideoBean.getFileType() == 2) {
                        imageView.setVisibility(0);
                    } else {
                        imageView.setVisibility(8);
                    }
                    if (localImageOrVideoBean.getPath().endsWith(".gif")) {
                        com.bumptech.glide.c.u(MediaFilesFragment.this.getContext()).b().V0(localImageOrVideoBean.getDisplayUri()).Q0((ImageView) baseViewHolder.getView(R.id.img));
                        baseViewHolder.getView(R.id.gif_indicator).setVisibility(0);
                    } else {
                        hc.a.g((ImageView) baseViewHolder.getView(R.id.img), localImageOrVideoBean.getDisplayUri());
                    }
                    baseViewHolder.getView(R.id.checkbox).setVisibility(0);
                    ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.checkbox);
                    imageView2.setSelected(localImageOrVideoBean.isSelected());
                    baseViewHolder.getView(R.id.checkbox).setOnClickListener(new a(localImageOrVideoBean, imageView2));
                    baseViewHolder.getView(R.id.img).setOnClickListener(new b(baseViewHolder));
                    return;
                }
                return;
            }
            ImageView imageView3 = (ImageView) baseViewHolder.getView(R.id.img);
            imageView3.setImageResource(R.mipmap.icon_im_takephoto);
            ((ImageView) baseViewHolder.getView(R.id.icon_video)).setVisibility(8);
            baseViewHolder.getView(R.id.checkbox).setVisibility(8);
            imageView3.setOnClickListener(new c(baseViewHolder));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public BaseViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
            return new BaseViewHolder(MediaFilesFragment.this.getLayoutInflater().inflate(R.layout.layout_local_img, viewGroup, false));
        }
    }

    /* loaded from: classes3.dex */
    public interface g {
        void onCameraClick(View view);

        void onGalleryClick(View view);

        void onSelect(View view, List<LocalImageOrVideoBean> list);
    }

    static /* synthetic */ int V1(MediaFilesFragment mediaFilesFragment) {
        int i9 = mediaFilesFragment.f16148e;
        mediaFilesFragment.f16148e = i9 + 1;
        return i9;
    }

    static /* synthetic */ int W1(MediaFilesFragment mediaFilesFragment) {
        int i9 = mediaFilesFragment.f16148e;
        mediaFilesFragment.f16148e = i9 - 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g2(View view) {
        this.f16144a = MediaFileFinder.getInstance();
        this.f16145b.setLayoutManager(new GridLayoutManager(getActivity(), getResources().getInteger(R.integer.image_coloum_size)));
        f fVar = new f();
        this.f16159p = fVar;
        this.f16145b.setAdapter(fVar);
        this.f16146c.setOnClickListener(new b());
        h2();
        this.f16162s = new c();
        if (this.f16152i == 101) {
            MediaFileFinder.getInstance().observeImages(this, this.f16162s, new d());
        } else {
            MediaFileFinder.getInstance().observeAllMedia(this, this.f16162s, new e());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h2() {
        List<LocalImageOrVideoBean> list;
        if (this.f16146c == null || getActivity() == null) {
            return;
        }
        this.f16146c.setEnabled(this.f16148e > 0);
        int i9 = this.f16148e;
        if (i9 == 0) {
            this.f16146c.setText(this.f16153j);
            this.compile.setTextColor(Color.parseColor("#888888"));
        } else {
            this.f16146c.setText(String.format("%s(%d)", this.f16153j, Integer.valueOf(i9)));
            if (this.f16148e == 1 && (list = this.f16151h) != null && list.size() > 0) {
                if (!this.f16151h.get(0).getPath().endsWith("jpg") && !this.f16151h.get(0).getPath().endsWith("png") && !this.f16151h.get(0).getPath().endsWith("gif")) {
                    this.compile.setTextColor(Color.parseColor("#888888"));
                } else if (BaseConfig.isChinese()) {
                    this.compile.setTextColor(Color.parseColor("#7e27ff"));
                } else {
                    this.compile.setTextColor(Color.parseColor("#6365FF"));
                }
            } else {
                this.compile.setTextColor(Color.parseColor("#888888"));
            }
        }
        if (!(getActivity() instanceof SimpleMediaActivity) || ((SimpleMediaActivity) getActivity()).mTitleBarHelper == null) {
            return;
        }
        ((SimpleMediaActivity) getActivity()).mTitleBarHelper.t(this.f16148e > 0);
        if (this.f16148e == 0) {
            ((SimpleMediaActivity) getActivity()).setEndText(this.f16153j, R.color.color_ugc_text_level_2, -1);
        } else {
            ((SimpleMediaActivity) getActivity()).setEndText(String.format("%s(%d)", this.f16153j, Integer.valueOf(this.f16148e)), R.color.color_app_primary, -1);
        }
    }

    public void e2() {
        this.f16146c.callOnClick();
    }

    public void f2() {
        this.f16151h.clear();
        for (int i9 = 0; i9 < this.f16147d.size(); i9++) {
            if (this.f16147d.get(i9) != null) {
                this.f16147d.get(i9).setSelected(false);
            }
        }
        this.f16148e = 0;
        RecyclerView recyclerView = this.f16145b;
        if (recyclerView == null || recyclerView.getAdapter() == null) {
            return;
        }
        this.f16145b.getAdapter().notifyDataSetChanged();
    }

    @OnClick
    public void gallery(View view) {
        g gVar;
        int id2 = view.getId();
        if (id2 != R.id.compile) {
            if (id2 == R.id.gallery && (gVar = this.f16150g) != null) {
                gVar.onGalleryClick(view);
            }
        } else if (this.f16151h.size() != 1) {
        } else {
            if (this.f16151h.get(0).getPath().endsWith("jpg") || this.f16151h.get(0).getPath().endsWith("png") || this.f16151h.get(0).getPath().endsWith("gif")) {
                this.f16161r = this.f16147d.indexOf(this.f16151h.get(0));
                DoodleParams doodleParams = new DoodleParams();
                doodleParams.mIsFullScreen = true;
                doodleParams.mImagePath = this.f16151h.get(0).getPath();
                doodleParams.mUri = this.f16151h.get(0).getDisplayUri();
                doodleParams.mPaintUnitSize = 6.0f;
                doodleParams.mPaintColor = SupportMenu.CATEGORY_MASK;
                doodleParams.mSupportScaleItem = true;
                Intent intent = new Intent(getActivity(), DoodleActivity.class);
                intent.putExtra("key_doodle_params", doodleParams);
                startActivityForResult(intent, 101);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_find_all_images;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f16152i = arguments.getInt("MediaType", 103);
            this.f16149f = arguments.getInt("maxCount", 9);
            ArrayList<String> stringArrayList = arguments.getStringArrayList("SelectPaths");
            int size = stringArrayList == null ? 0 : stringArrayList.size();
            this.f16148e = size;
            this.f16149f -= size;
            this.f16153j = arguments.getString("Confirm", getString(R.string.send));
            this.f16154k = arguments.getBoolean("showBottom", true);
        }
        if ((getActivity() instanceof FakeLiveChatActivity) || UserStateHolder.isLiving() || UserStateHolder.isWatchingLive()) {
            this.f16155l = false;
            this.f16156m = false;
        }
        if (!this.f16154k) {
            this.bottomLay.setVisibility(8);
        } else {
            this.bottomLay.setVisibility(0);
        }
        if (!this.f16156m) {
            this.compile.setVisibility(4);
            this.gallery.setVisibility(4);
        }
        this.f16145b = (RecyclerView) view.findViewById(R.id.recycler_view);
        this.f16146c = (TextView) view.findViewById(R.id.count);
        new com.tbruyelle.rxpermissions2.a(this).p("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new a(view));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        reset();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i9, int i10, Intent intent) {
        g gVar;
        super.onActivityResult(i9, i10, intent);
        if (i10 == -1) {
            if (i9 != 101) {
                if (intent != null) {
                    ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("data");
                    int intExtra = intent.getIntExtra("send", 0);
                    if (parcelableArrayListExtra != null) {
                        this.f16151h.clear();
                        this.f16151h.addAll(parcelableArrayListExtra);
                        this.f16148e = this.f16151h.size();
                        this.f16145b.getAdapter().notifyDataSetChanged();
                        h2();
                        if (intExtra != 1 || (gVar = this.f16150g) == null) {
                            return;
                        }
                        gVar.onSelect(null, this.f16151h);
                    }
                }
            } else if (intent != null) {
                String stringExtra = intent.getStringExtra("key_image_path");
                boolean booleanExtra = intent.getBooleanExtra("key_image_selectable", false);
                long longExtra = intent.getLongExtra("key_image_duration", 0L);
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                LocalImageOrVideoBean localImageOrVideoBean = new LocalImageOrVideoBean(1);
                this.f16157n = localImageOrVideoBean;
                localImageOrVideoBean.setPath(stringExtra);
                this.f16157n.setSelected(true);
                this.f16157n.setDuration(longExtra);
                this.f16157n.setSelectable(booleanExtra);
                this.f16147d.add(this.f16161r + 1, this.f16157n);
                if (booleanExtra) {
                    this.f16158o.add(this.f16157n);
                    for (LocalImageOrVideoBean localImageOrVideoBean2 : this.f16147d) {
                        if (localImageOrVideoBean2 != null && !TextUtils.isEmpty(localImageOrVideoBean2.getPath()) && !localImageOrVideoBean2.getPath().equals(this.f16157n.getPath())) {
                            localImageOrVideoBean2.setSelected(false);
                        }
                    }
                    this.f16151h.clear();
                    this.f16151h.add(this.f16157n);
                    this.f16148e = 1;
                }
                this.f16145b.getAdapter().notifyDataSetChanged();
                h2();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (activity instanceof g) {
            this.f16150g = (g) activity;
        } else {
            LogUtils.i("", "activity bind to FindAllImagesFragment must implement OnLocalImageSelectedListener");
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Subscribe
    public void onMessageEvent(LocalImageOrVideoBean localImageOrVideoBean) {
        if (localImageOrVideoBean != null) {
            this.f16147d.add(localImageOrVideoBean.getSelectPosition() + 1, localImageOrVideoBean);
            this.f16160q.add(localImageOrVideoBean);
            this.f16159p.notifyDataSetChanged();
            h2();
        }
    }

    public void reset() {
        f2();
        h2();
    }
}
