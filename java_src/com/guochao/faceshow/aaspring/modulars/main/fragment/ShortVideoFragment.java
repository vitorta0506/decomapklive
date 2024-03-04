package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.beans.VideoList;
import com.guochao.faceshow.aaspring.modulars.main.viewholder.ShortVideoViewHolder;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.FakeScrollHelper;
import com.guochao.faceshow.aaspring.utils.GCEventUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.activity.TCVideoRecordActivity;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.HandlerGetter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* loaded from: classes3.dex */
public class ShortVideoFragment extends BaseShortVideoFragment implements p7.f {
    private int L = 1;
    private GCRequestJava M;
    private boolean N;
    @BindView
    ImageView ivVideoBg;
    @BindView
    View mEmptyView;

    /* loaded from: classes3.dex */
    class a implements zd.b {
        a() {
        }

        @Override // zd.b
        public void b(@NonNull wd.j jVar) {
            ShortVideoFragment.this.D2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Function1<GCRequest, Unit> {
        b() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCRequest gCRequest) {
            ShortVideoFragment.this.N = false;
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements GCRequestJava.c<VideoList> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<VideoList> response) {
            ShortVideoFragment.this.notifyDataLoaded(false);
            ShortVideoFragment shortVideoFragment = ShortVideoFragment.this;
            shortVideoFragment.f20659t = false;
            if (shortVideoFragment.getList().isEmpty()) {
                ShortVideoFragment.this.mEmptyView.setVisibility(0);
                ShortVideoFragment.this.mViewPager2.setVisibility(8);
                ShortVideoFragment.this.setFooterView(8);
            } else {
                ShortVideoFragment.this.mEmptyView.setVisibility(8);
                ShortVideoFragment.this.mViewPager2.setVisibility(0);
                ShortVideoFragment.this.setFooterView(0);
            }
            ShortVideoFragment.this.dismissProgressDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements GCRequestJava.d<VideoList> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f20773a;

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ShortVideoFragment.this.H2("");
            }
        }

        /* loaded from: classes3.dex */
        class b extends AnimatorListenerAdapter {

            /* loaded from: classes3.dex */
            class a implements Runnable {
                a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    ShortVideoFragment.this.f20659t = false;
                }
            }

            b() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                ShortVideoFragment shortVideoFragment = ShortVideoFragment.this;
                shortVideoFragment.f20659t = true;
                shortVideoFragment.f20658s = true;
                HandlerGetter.getMainHandler().postDelayed(new a(), 1000L);
                ShortVideoViewHolder shortVideoViewHolder = ShortVideoFragment.this.f20656q;
                if (shortVideoViewHolder != null) {
                    shortVideoViewHolder.q();
                    if (ShortVideoFragment.this.f20656q.getAdapterPosition() >= 0) {
                        ShortVideoFragment shortVideoFragment2 = ShortVideoFragment.this;
                        shortVideoFragment2.f20656q.o(shortVideoFragment2.getList().get(ShortVideoFragment.this.f20656q.getAdapterPosition()));
                    }
                }
            }
        }

        d(int i9) {
            this.f20773a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<VideoList> response) {
            VideoList data = response.getData();
            if (data == null) {
                ShortVideoFragment.this.notifyDataLoaded(false);
                ShortVideoFragment.this.mEmptyView.setVisibility(0);
                ShortVideoFragment.this.mViewPager2.setVisibility(8);
                return;
            }
            Iterator<VideoItem> it = data.getList().iterator();
            while (it.hasNext()) {
                VideoItem next = it.next();
                if (TextUtils.isEmpty(next.getVideoId()) || "0".equals(next.getVideoId())) {
                    it.remove();
                }
            }
            int currentItem = ShortVideoFragment.this.mViewPager2.getCurrentItem();
            int size = ShortVideoFragment.this.getList().size();
            if (this.f20773a == ShortVideoFragment.this.getDefaultPage()) {
                ShortVideoFragment.this.getRecyclerView().scrollToPosition(0);
                ShortVideoFragment.this.getList().clear();
                ShortVideoFragment.this.getRefreshableLayout().w();
                ShortVideoFragment.this.getList().addAll(data.getList());
                ShortVideoFragment.this.getRecyclerView().getAdapter().notifyDataSetChanged();
            } else {
                ShortVideoFragment.this.getList().addAll(data.getList());
                if (data.getList().size() > 0) {
                    ShortVideoFragment.this.getRefreshableLayout().s(100);
                } else {
                    ShortVideoFragment.this.getRefreshableLayout().v();
                }
                ShortVideoFragment shortVideoFragment = ShortVideoFragment.this;
                shortVideoFragment.Q2(shortVideoFragment.mViewPager2.getCurrentItem());
                ShortVideoFragment.this.getRecyclerView().getAdapter().notifyItemRangeInserted(size, data.getList().size());
                ShortVideoFragment.this.getRecyclerView().getAdapter().notifyItemRangeChanged(size, data.getList().size());
            }
            if (this.f20773a != ShortVideoFragment.this.getDefaultPage()) {
                ShortVideoFragment.this.Q2(currentItem);
            }
            ShortVideoFragment.this.getRecyclerView().post(new a());
            try {
                if (ShortVideoFragment.this.getView() != null) {
                    FragmentActivity activity = ShortVideoFragment.this.getActivity();
                    View findViewById = ShortVideoFragment.this.getView().findViewById(R.id.tochdow);
                    ShortVideoFragment shortVideoFragment2 = ShortVideoFragment.this;
                    FakeScrollHelper.start(activity, findViewById, shortVideoFragment2.mViewPager2, shortVideoFragment2.getRecyclerView(), ShortVideoFragment.this.getView().findViewById(R.id.first_use), new b());
                } else {
                    ShortVideoFragment.this.f20659t = false;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                ShortVideoFragment.this.f20659t = false;
            }
            ShortVideoFragment.this.dismissProgressDialog();
            if (ShortVideoFragment.this.getList().isEmpty()) {
                ShortVideoFragment.this.mEmptyView.setVisibility(0);
                ShortVideoFragment.this.mViewPager2.setVisibility(8);
                ShortVideoFragment.this.setFooterView(8);
                return;
            }
            ShortVideoFragment.this.mEmptyView.setVisibility(8);
            ShortVideoFragment.this.mViewPager2.setVisibility(0);
            ShortVideoFragment.this.setFooterView(0);
        }
    }

    /* loaded from: classes3.dex */
    class e extends SimpleObserver<te.a> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            if (aVar.f58133b) {
                Intent intent = new Intent(ShortVideoFragment.this.getActivity(), TCVideoRecordActivity.class);
                intent.putExtra("from", 2);
                ShortVideoFragment.this.startActivity(intent);
                return;
            }
            ShortVideoFragment.this.U2(Arrays.asList(MainMenuDialogFragment.f20736c));
        }
    }

    private boolean T2(String str) {
        return ContextCompat.checkSelfPermission(getActivity(), str) == 0;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment
    public void D2() {
        super.D2();
        setCurrentPage(getCurrentPage() + 1);
        loadData(getCurrentPage());
    }

    public void S2(int i9) {
        GCRequestJava gCRequestJava = this.M;
        if (gCRequestJava != null) {
            gCRequestJava.cancel();
            this.N = false;
        }
        ShortVideoViewHolder shortVideoViewHolder = this.f20656q;
        if (shortVideoViewHolder != null) {
            shortVideoViewHolder.R();
            this.f20656q = null;
        }
        getList().clear();
        notifyDataLoaded();
        switch (i9) {
            case R.id.rb1 /* 2131364132 */:
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_video_global);
                this.L = 1;
                setCurrentPage(getDefaultPage());
                loadData(getCurrentPage());
                getRefreshableLayout().p(0, 60, 1.0f, true);
                return;
            case R.id.rb2 /* 2131364133 */:
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_video_country);
                this.L = 2;
                setCurrentPage(getDefaultPage());
                loadData(getCurrentPage());
                getRefreshableLayout().p(0, 60, 1.0f, true);
                return;
            default:
                return;
        }
    }

    public void U2(@NonNull List<String> list) {
        String str = "";
        for (int i9 = 0; i9 < list.size(); i9++) {
            if (list.get(i9).equals("android.permission.CAMERA") && !T2(list.get(i9))) {
                str = str + getString(R.string.reject_per_first_camera);
            }
            if (list.get(i9).equals("android.permission.RECORD_AUDIO") && !T2(list.get(i9))) {
                str = str + (TextUtils.isEmpty(str) ? "" : ", ") + getString(R.string.reject_per_first_mic);
            }
            if (list.get(i9).equals("android.permission.WRITE_EXTERNAL_STORAGE") && !T2(list.get(i9))) {
                str = str + (TextUtils.isEmpty(str) ? "" : ", ") + getString(R.string.reject_per_first_storage);
            }
            if (list.get(i9).equals("android.permission.READ_PHONE_STATE") && !T2(list.get(i9))) {
                str = str + (TextUtils.isEmpty(str) ? "" : ", ") + getString(R.string.reject_per_first_phone_status);
            }
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        showToast(str + getString(R.string.reject_per_second));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public com.guochao.faceshow.aaspring.base.fragment.e getFragmentConfig() {
        return new e.a().c(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_short_video2;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        com.guochao.faceshow.aaspring.modulars.live.broadcaster.d.d(this.ivVideoBg);
        GCEventUtils.track(GCEventUtils.CLICK_VIDEO);
        getRefreshableLayout().b(true);
        getRefreshableLayout().L(true);
        getRefreshableLayout().S(new a());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.modulars.main.FloatingViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        String str;
        String str2;
        super.loadData(i9);
        if (this.N) {
            return;
        }
        if (this.L == 2) {
            str2 = SpUtils.getStr(getContext(), Contants.CURRENT_COUNTRY_CODING);
            str = "api/token/social/video/recommendCountryVideo";
        } else {
            str = "api/token/social/video/recommendVideo";
            str2 = "";
        }
        if (i9 == getDefaultPage()) {
            ShortVideoViewHolder shortVideoViewHolder = this.f20656q;
            if (shortVideoViewHolder != null) {
                shortVideoViewHolder.R();
                this.f20656q = null;
            }
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_video_refresh);
        } else {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_video_load_more);
        }
        this.N = true;
        GCRequestJava gCRequestJava = new GCRequestJava(str);
        this.M = (GCRequestJava) gCRequestJava.putBody("currPage", i9 + "").putBody("pageSize", "15").putBody("type", String.valueOf(this.L)).putBody(UserDataStore.COUNTRY, str2).j(new d(i9)).d(new c()).complete(new b()).request();
    }

    @OnClick
    public void publish(View view) {
        if (BaseConfig.isChinese() && com.guochao.faceshow.aaspring.manager.i.u().s().getIsBindMobile() == 0) {
            com.guochao.faceshow.aaspring.modulars.live.broadcaster.d.e(getActivity(), getChildFragmentManager(), 1);
        } else {
            new com.tbruyelle.rxpermissions2.a(getActivity()).p(MainMenuDialogFragment.f20736c).subscribe(new e());
        }
    }
}
