package com.guochao.faceshow.aaspring.modulars.live.relationship;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ContactBean;
import com.guochao.faceshow.aaspring.beans.MobileBean;
import com.guochao.faceshow.aaspring.modulars.live.relationship.RelationShipSearchActivity;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.HandlerGetter;
import io.reactivex.k;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import vh.g;
import vh.o;
/* loaded from: classes3.dex */
public class RelationShipSearchActivity extends BaseRecyclerViewActivity<ContactBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private String f19826a;

    /* renamed from: b  reason: collision with root package name */
    List<ContactBean> f19827b = new ArrayList();
    @BindView
    ImageView bgConfirm;
    @BindView
    View confirmLayout;
    @BindView
    View emptyText;
    @BindView
    View emptyView;
    @BindView
    TextView tvConfirm;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends SimpleObserver<String> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.modulars.live.relationship.RelationShipSearchActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0191a extends com.guochao.faceshow.aaspring.base.http.callback.c<MobileBean> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.guochao.faceshow.aaspring.modulars.live.relationship.RelationShipSearchActivity$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public class RunnableC0192a implements Runnable {
                RunnableC0192a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (!RelationShipSearchActivity.this.isFinishing()) {
                        RelationShipSearchActivity.this.setTitle(R.string.live_explore_people);
                        RelationShipSearchActivity.this.notifyDataLoaded(false);
                        RelationShipSearchActivity.this.showEmptyView();
                    }
                    TextView textView = RelationShipSearchActivity.this.tvConfirm;
                    if (textView != null) {
                        textView.setText(R.string.live_invite_all);
                        RelationShipSearchActivity relationShipSearchActivity = RelationShipSearchActivity.this;
                        relationShipSearchActivity.tvConfirm.setBackgroundColor(ContextCompat.getColor(relationShipSearchActivity, R.color.live_invited_background));
                        RelationShipSearchActivity.this.tvConfirm.setEnabled(false);
                    }
                }
            }

            C0191a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            /* renamed from: a */
            public void onResponse(@Nullable MobileBean mobileBean, @NonNull FaceCastBaseResponse<MobileBean> faceCastBaseResponse) {
                if (RelationShipSearchActivity.this.isFinishing() || RelationShipSearchActivity.this.isDestroyed()) {
                    return;
                }
                if (mobileBean == null) {
                    onFailure(new g7.a<>(new Exception(""), -1));
                    return;
                }
                RelationShipSearchActivity relationShipSearchActivity = RelationShipSearchActivity.this;
                relationShipSearchActivity.p0(relationShipSearchActivity.f19827b, mobileBean.getMobilelist());
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<MobileBean> aVar) {
                HandlerGetter.getMainHandler().post(new RunnableC0192a());
            }
        }

        a() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(String str) {
            super.onNext((a) str);
            RelationShipSearchActivity.this.post("user/contacts/mobileFilter").D("codemobile", str.toString()).M(new C0191a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements o<Integer, String> {
        b() {
        }

        @Override // vh.o
        /* renamed from: a */
        public String apply(@NonNull Integer num) throws Exception {
            RelationShipSearchActivity relationShipSearchActivity = RelationShipSearchActivity.this;
            return relationShipSearchActivity.n0(relationShipSearchActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ContactBean f19832a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f19833b;

        /* loaded from: classes3.dex */
        class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<String> aVar) {
                Bundle bundle = new Bundle();
                bundle.putString(EventTrackingUtils.CONTENT_TYPE, "失败");
                bundle.putString("content_type_count", String.valueOf(1));
                EventTrackingUtils.getInstance().track(EventTrackingUtils.SEND_MESSAGE, bundle);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                Bundle bundle = new Bundle();
                bundle.putString(EventTrackingUtils.CONTENT_TYPE, "成功");
                bundle.putString("content_type_count", String.valueOf(1));
                EventTrackingUtils.getInstance().track(EventTrackingUtils.SEND_MESSAGE, bundle);
            }
        }

        c(ContactBean contactBean, int i9) {
            this.f19832a = contactBean;
            this.f19833b = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f19832a.isHasInvited()) {
                return;
            }
            ContactBean contactBean = this.f19832a;
            contactBean.setHasInvited(!contactBean.isHasInvited());
            if (RelationShipSearchActivity.this.getRecyclerView() != null && RelationShipSearchActivity.this.getRecyclerView().getAdapter() != null) {
                RelationShipSearchActivity.this.getRecyclerView().getAdapter().notifyItemChanged(this.f19833b);
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.f19832a.getUserPhone());
            RelationShipSearchActivity.this.post("user/contacts/mobileShortmessage").D("contactName", TextUtils.isEmpty(RelationShipSearchActivity.this.f19826a) ? "" : RelationShipSearchActivity.this.f19826a).D("codemobile", arrayList.toString()).M(new a());
            EventTrackingUtils.getInstance().track(EventTrackingUtils.SEND_MESSAGE_PORT_UES);
        }
    }

    /* loaded from: classes3.dex */
    class d extends SimpleObserver<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimationDrawable f19836a;

        d(AnimationDrawable animationDrawable) {
            this.f19836a = animationDrawable;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(Integer num) {
            super.onNext((d) num);
            ImageView imageView = RelationShipSearchActivity.this.bgConfirm;
            if (imageView == null || imageView.getVisibility() != 0) {
                return;
            }
            RelationShipSearchActivity.this.t0(this.f19836a);
        }
    }

    /* loaded from: classes3.dex */
    class e extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            Bundle bundle = new Bundle();
            bundle.putString(EventTrackingUtils.CONTENT_TYPE, "失败");
            bundle.putString("content_type_count", String.valueOf(RelationShipSearchActivity.this.getList().size()));
            EventTrackingUtils.getInstance().track(EventTrackingUtils.SEND_MESSAGE, bundle);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            Bundle bundle = new Bundle();
            bundle.putString(EventTrackingUtils.CONTENT_TYPE, "成功");
            bundle.putString("content_type_count", String.valueOf(RelationShipSearchActivity.this.getList().size()));
            EventTrackingUtils.getInstance().track(EventTrackingUtils.SEND_MESSAGE, bundle);
        }
    }

    private String m0(@NonNull String str) {
        if (str.startsWith("+")) {
            return "+" + str.substring(1).replaceAll("[^\\d]", "");
        }
        return str.replaceAll("[^\\d]", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f2, code lost:
        if (r14 != null) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00fb, code lost:
        if (r14 == null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00fd, code lost:
        r14.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0100, code lost:
        r13.f19827b.addAll(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0109, code lost:
        return r11.toString();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String n0(android.content.Context r14) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.live.relationship.RelationShipSearchActivity.n0(android.content.Context):java.lang.String");
    }

    private String o0(String str) {
        String[] split = str.split(" ");
        if (split.length == 1) {
            return str;
        }
        return split[0] + " " + str.substring(split[0].length()).replaceAll("[^\\d]", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(List<ContactBean> list, List<String> list2) {
        setTitle(R.string.live_explore_people);
        this.confirmLayout.setVisibility(0);
        if (list2 == null) {
            list2 = new ArrayList<>();
        }
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (int i9 = 0; i9 < list.size(); i9++) {
                if (list2.contains(list.get(i9).getUserPhone())) {
                    arrayList.add(list.get(i9));
                }
            }
        }
        addDatas(arrayList);
        notifyDataLoaded(false);
        showEmptyView();
        this.tvConfirm.setText(R.string.live_invite_all);
        this.tvConfirm.setBackgroundColor(ContextCompat.getColor(this, getList().isEmpty() ? R.color.live_invited_background : R.color.color_ugc_app_primary));
        this.tvConfirm.setEnabled(!getList().isEmpty());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q0(View view) {
        onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r0(te.a aVar) throws Exception {
        if (aVar.f58133b) {
            k.just(1).map(new b()).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new a());
        }
    }

    public static void start(Context context) {
        context.startActivity(new Intent(context, RelationShipSearchActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0(AnimationDrawable animationDrawable) {
        this.tvConfirm.setText(R.string.live_has_invited);
        this.tvConfirm.setBackgroundColor(ContextCompat.getColor(this, R.color.live_invited_background));
        this.tvConfirm.setEnabled(false);
        this.bgConfirm.setVisibility(8);
        animationDrawable.stop();
        List<ContactBean> list = getList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            list.get(i9).setHasInvited(false);
        }
        notifyDataLoaded(false);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public boolean canLoadMore() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_relationship_search;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        EventTrackingUtils.getInstance().track(EventTrackingUtils.INVIT_CONNECTION);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new v.e() { // from class: f9.a
                @Override // com.guochao.faceshow.aaspring.views.v.e
                public final void onClick(View view) {
                    RelationShipSearchActivity.this.q0(view);
                }
            });
        }
        SpUtils.setBool(getActivity(), BaseConfig.SP_CONTANCTS_CIRCLE_VISIBILITY, false);
        this.emptyText.setVisibility(8);
        getRefreshableLayout().f(false);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: l0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, ContactBean contactBean) {
        baseViewHolder.setText(R.id.user_name, contactBean.getUserName());
        baseViewHolder.setText(R.id.user_phone, contactBean.getUserPhone());
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.user_avatar);
        if (TextUtils.isEmpty(contactBean.getUserAvatar())) {
            ic.a.b(BaseApplication.getInstance()).f(imageView);
            imageView.setImageResource(R.mipmap.icon_live_relashion_default);
        } else {
            hc.a.h(imageView, Uri.parse(contactBean.getUserAvatar()), R.mipmap.icon_live_relashion_default);
        }
        ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.invite_icon);
        if (contactBean.isHasInvited()) {
            imageView2.setImageResource(R.mipmap.icon_zb_selection);
        } else {
            imageView2.setImageResource(R.mipmap.icon_zb_rmq_guanzhu);
        }
        imageView2.setOnClickListener(new c(contactBean, i9));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        if (!getString(R.string.live_explore_people).equals(getTitle())) {
            setTitle(getString(R.string.loading) + "...");
        }
        this.emptyView.setVisibility(8);
        new com.tbruyelle.rxpermissions2.a(this).o("android.permission.READ_CONTACTS").subscribe(new g() { // from class: f9.b
            @Override // vh.g
            public final void accept(Object obj) {
                RelationShipSearchActivity.this.r0((te.a) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventTrackingUtils.getInstance().track(EventTrackingUtils.INVIT_CONNECTION_BACK_CLICK);
    }

    @OnClick
    public void onViewClicked(View view) {
        if (DisableDoubleClickUtils.canClick(view)) {
            this.bgConfirm.setVisibility(0);
            this.tvConfirm.setText("");
            AnimationDrawable animationDrawable = (AnimationDrawable) this.bgConfirm.getDrawable();
            animationDrawable.start();
            List<ContactBean> list = getList();
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < list.size(); i9++) {
                arrayList.add(list.get(i9).getUserPhone());
            }
            k.just(1).delay(2L, TimeUnit.SECONDS).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new d(animationDrawable));
            post("user/contacts/mobileShortmessage").D("contactName", TextUtils.isEmpty(this.f19826a) ? getCurrentUser().getUserName() : this.f19826a).D("codemobile", arrayList.toString()).M(new e());
            EventTrackingUtils.getInstance().track(EventTrackingUtils.SEND_MESSAGE_PORT_UES);
            EventTrackingUtils.getInstance().track(EventTrackingUtils.INVIT_CONNECTION_INVITE_CLICK);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: s0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, ContactBean contactBean) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    public void showEmptyView() {
        if (getList() != null && !getList().isEmpty()) {
            this.emptyView.setVisibility(8);
            getRefreshableLayout().f(false);
            return;
        }
        this.emptyView.setVisibility(0);
        getRefreshableLayout().f(true);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(LayoutInflater.from(this).inflate(R.layout.layout_relationship_item, viewGroup, false));
    }
}
