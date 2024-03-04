package com.guochao.faceshow.aaspring.modulars.share.fragment;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.webkit.internal.AssetHelper;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.internal.AnalyticsEvents;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.More;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.ShareContentBean;
import com.guochao.faceshow.aaspring.beans.ShareLogData;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteDialog;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.AppContentFilter;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.TailWaterMark;
import com.tencent.ugc.UGCTransitionRules;
import eb.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* loaded from: classes3.dex */
public class ShareFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private ShareContentBean f21753a;

    /* renamed from: b  reason: collision with root package name */
    private VideoItem f21754b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f21755c;
    @BindView
    View close;
    @BindView
    View copyLink;

    /* renamed from: e  reason: collision with root package name */
    private UgcTopicBean f21757e;

    /* renamed from: f  reason: collision with root package name */
    private LiveRoomModel f21758f;

    /* renamed from: h  reason: collision with root package name */
    private com.guochao.faceshow.views.m f21760h;

    /* renamed from: j  reason: collision with root package name */
    private TailWaterMark f21762j;

    /* renamed from: k  reason: collision with root package name */
    private l f21763k;

    /* renamed from: l  reason: collision with root package name */
    private m f21764l;
    @BindView
    RecyclerView recyclerView;
    @BindView
    View saveBtn;

    /* renamed from: d  reason: collision with root package name */
    private u9.a f21756d = new c();

    /* renamed from: g  reason: collision with root package name */
    private boolean f21759g = false;

    /* renamed from: i  reason: collision with root package name */
    private int f21761i = 0;

    /* renamed from: m  reason: collision with root package name */
    private List<SharePlatformBean> f21765m = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements TailWaterMark.WaterMarkProcessListener {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class View$OnClickListenerC0212a implements View.OnClickListener {

            /* renamed from: com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC0213a implements Runnable {
                RunnableC0213a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    ShareFragment.this.f21760h.c();
                }
            }

            View$OnClickListenerC0212a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ShareFragment.this.f21762j != null) {
                    ShareFragment.this.f21762j.cancelProcess();
                }
                HandlerGetter.getMainHandler().postDelayed(new RunnableC0213a(), 200L);
            }
        }

        a() {
        }

        @Override // com.guochao.faceshow.utils.TailWaterMark.WaterMarkProcessListener
        public void onNetWorkError() {
            if (ShareFragment.this.f21760h != null) {
                ShareFragment.this.f21760h.c();
            }
        }

        @Override // com.guochao.faceshow.utils.TailWaterMark.WaterMarkProcessListener
        public void onWaterMarkFinish(String str, Boolean bool, String str2) {
            if (bool.booleanValue()) {
                if (SharePlatformBean.WhatsApp.NAME.equals(str)) {
                    ShareContentBean shareContentBean = ShareFragment.this.f21753a;
                    shareContentBean.setContent("Download BuzzCast to meet amazing people！" + ShareFragment.this.f21754b.getShortUrl());
                }
                if (ShareFragment.this.getActivity() != null) {
                    v9.c.f(ShareFragment.this.getActivity(), str, ShareFragment.this.f21753a.getContent(), str2, ShareFragment.this.f21756d);
                }
                if (ShareFragment.this.f21760h != null) {
                    if (ShareFragment.this.f21761i == -1) {
                        ShareFragment.this.f21760h.d();
                    } else {
                        ShareFragment.this.f21760h.i(100);
                    }
                    ShareFragment.this.f21760h.k(ShareFragment.this.getResources().getString(R.string.save_successful));
                }
                if (ShareFragment.this.f21760h != null) {
                    ShareFragment.this.f21760h.c();
                }
                ToastUtils.showToast(BaseApplication.getInstance(), ShareFragment.this.getResources().getString(R.string.save_successful));
                return;
            }
            if (ShareFragment.this.f21760h != null) {
                ShareFragment.this.f21760h.c();
            }
            ToastUtils.showToast(BaseApplication.getInstance(), ShareFragment.this.getResources().getString(R.string.saved_error));
        }

        @Override // com.guochao.faceshow.utils.TailWaterMark.WaterMarkProcessListener
        public void onWaterMarkProgress(int i9) {
            if (ShareFragment.this.f21760h == null) {
                ShareFragment.this.f21760h = new com.guochao.faceshow.views.m();
                ShareFragment.this.f21760h.b(ShareFragment.this.getActivity());
                ShareFragment.this.f21760h.g(false);
                ShareFragment.this.f21760h.h(false);
                ShareFragment.this.f21760h.j(ShareFragment.this.getResources().getString(R.string.view_in_album_tip));
                ShareFragment.this.f21760h.f(ShareFragment.this.getResources().getString(R.string.str_no), new View$OnClickListenerC0212a());
            }
            ShareFragment.this.f21761i = i9;
            if (i9 == -1) {
                ShareFragment.this.f21760h.d();
                com.guochao.faceshow.views.m mVar = ShareFragment.this.f21760h;
                mVar.k(ShareFragment.this.getResources().getString(R.string.Saving) + "…");
            } else {
                if (i9 >= 100) {
                    i9 = 99;
                }
                ShareFragment.this.f21760h.i(i9);
                ShareFragment.this.f21760h.k(ShareFragment.this.getResources().getString(R.string.Saving));
            }
            if (ShareFragment.this.f21760h.e()) {
                return;
            }
            ShareFragment.this.f21760h.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.Adapter {

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ BaseViewHolder f21770a;

            a(BaseViewHolder baseViewHolder) {
                this.f21770a = baseViewHolder;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int adapterPosition = this.f21770a.getAdapterPosition();
                ShareFragment shareFragment = ShareFragment.this;
                shareFragment.i2(this.f21770a, adapterPosition, (SharePlatformBean) shareFragment.f21765m.get(adapterPosition));
            }
        }

        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ShareFragment.this.f21765m.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
            ShareFragment shareFragment = ShareFragment.this;
            shareFragment.b2((BaseViewHolder) viewHolder, i9, (SharePlatformBean) shareFragment.f21765m.get(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            BaseViewHolder onCreateViewHolder = ShareFragment.this.onCreateViewHolder(viewGroup, i9);
            onCreateViewHolder.itemView.setOnClickListener(new a(onCreateViewHolder));
            return onCreateViewHolder;
        }
    }

    /* loaded from: classes3.dex */
    class c implements u9.a {
        c() {
        }
    }

    /* loaded from: classes3.dex */
    class d implements DialogInterface.OnShowListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Window f21773a;

        d(Window window) {
            this.f21773a = window;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            this.f21773a.clearFlags(8);
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareFragment.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends SimpleObserver<te.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SharePlatformBean f21776a;

        f(SharePlatformBean sharePlatformBean) {
            this.f21776a = sharePlatformBean;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            if (aVar.f58133b) {
                ShareFragment.this.l2(this.f21776a.getSharePlatformName(), null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements InviteDialog.g {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteDialog.g
        public void a(int i9) {
            ShareFragment.this.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class h extends SimpleObserver<te.a> {
        h() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            if (aVar.f58133b) {
                ShareFragment.this.l2(null, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements Function1<GCRequest, Unit> {
        i() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCRequest gCRequest) {
            ShareFragment.this.dismissProgressDialog();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements GCRequestJava.d<Object> {
        j() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Object> response) {
            ShareFragment.this.dismiss();
            if (ShareFragment.this.f21763k != null) {
                ShareFragment.this.f21763k.onDelete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k extends com.guochao.faceshow.aaspring.base.http.callback.c<ShareLogData> {
        k() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(ShareLogData shareLogData, @NonNull FaceCastBaseResponse<ShareLogData> faceCastBaseResponse) {
            Fragment parentFragment = ShareFragment.this.getParentFragment();
            if (parentFragment instanceof b.n) {
                ((b.n) parentFragment).l1(shareLogData);
            } else if (ShareFragment.this.getActivity() instanceof b.n) {
                ((b.n) ShareFragment.this.getActivity()).l1(shareLogData);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<ShareLogData> aVar) {
        }
    }

    /* loaded from: classes3.dex */
    public interface l {
        void Z();

        void onCancel();

        void onDelete();

        void onDismiss();
    }

    /* loaded from: classes3.dex */
    public interface m {
        void a(String str, ShareContentBean shareContentBean);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a2(java.lang.String r10, com.guochao.faceshow.aaspring.beans.VideoItem r11, boolean r12, java.lang.String r13, com.guochao.faceshow.utils.TailWaterMark.WaterMarkProcessListener r14) {
        /*
            r9 = this;
            boolean r13 = com.guochao.faceshow.utils.PermissionTools.checkStoragePer()
            if (r13 != 0) goto L7
            return
        L7:
            if (r11 != 0) goto La
            return
        La:
            r13 = 0
            java.lang.String r0 = r11.getWidth()     // Catch: java.lang.Exception -> L20
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Exception -> L20
            java.lang.String r1 = r11.getHeight()     // Catch: java.lang.Exception -> L1e
            int r13 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Exception -> L1e
            r8 = r13
            r7 = r0
            goto L27
        L1e:
            r1 = move-exception
            goto L22
        L20:
            r1 = move-exception
            r0 = 0
        L22:
            r1.printStackTrace()
            r7 = r0
            r8 = 0
        L27:
            com.guochao.faceshow.utils.TailWaterMark r13 = r9.f21762j
            if (r13 != 0) goto L36
            com.guochao.faceshow.utils.TailWaterMark r13 = new com.guochao.faceshow.utils.TailWaterMark
            androidx.fragment.app.FragmentActivity r0 = r9.getActivity()
            r13.<init>(r0)
            r9.f21762j = r13
        L36:
            com.guochao.faceshow.utils.TailWaterMark r13 = r9.f21762j
            r13.setWaterMarkProcessListener(r14)
            if (r12 == 0) goto L50
            com.guochao.faceshow.utils.TailWaterMark r2 = r9.f21762j
            java.lang.String r4 = r11.getVideoUrl()
            java.lang.String r5 = r11.getVideoId()
            java.lang.String r6 = r11.getUserId()
            r3 = r10
            r2.makeWaterMarkVideoToDCMI(r3, r4, r5, r6, r7, r8)
            goto L62
        L50:
            com.guochao.faceshow.utils.TailWaterMark r2 = r9.f21762j
            java.lang.String r4 = r11.getVideoUrl()
            java.lang.String r5 = r11.getVideoId()
            java.lang.String r6 = r11.getUserId()
            r3 = r10
            r2.makeWaterMarkVideoToFaceShow(r3, r4, r5, r6, r7, r8)
        L62:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.a2(java.lang.String, com.guochao.faceshow.aaspring.beans.VideoItem, boolean, java.lang.String, com.guochao.faceshow.utils.TailWaterMark$WaterMarkProcessListener):void");
    }

    private void c2() {
        showProgressDialog("");
        new GCRequestJava("api/token/social/video/deleteVideo").bindToLifecycle(this).putBody("videoId", this.f21754b.getVideoId()).j(new j()).complete(new i()).request();
    }

    public static ShareFragment d2(ShareContentBean shareContentBean, UgcTopicBean ugcTopicBean) {
        return e2(shareContentBean, ugcTopicBean, true);
    }

    public static ShareFragment e2(ShareContentBean shareContentBean, UgcTopicBean ugcTopicBean, boolean z10) {
        ShareFragment shareFragment = new ShareFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", shareContentBean);
        bundle.putParcelable(BaseConfig.DB_TYPE_TOPIC_NAME, ugcTopicBean);
        bundle.putBoolean("showDownload", z10);
        shareFragment.setArguments(bundle);
        return shareFragment;
    }

    public static ShareFragment f2(ShareContentBean shareContentBean, VideoItem videoItem) {
        ShareFragment shareFragment = new ShareFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", shareContentBean);
        bundle.putParcelable(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, videoItem);
        shareFragment.setArguments(bundle);
        return shareFragment;
    }

    public static ShareFragment g2(ShareContentBean shareContentBean, LiveRoomModel liveRoomModel) {
        ShareFragment shareFragment = new ShareFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", shareContentBean);
        bundle.putParcelable("live", liveRoomModel);
        bundle.putBoolean("showDownload", true);
        bundle.putBoolean("showShareToFriend", true);
        shareFragment.setArguments(bundle);
        return shareFragment;
    }

    private void j2(String str) {
        this.f21753a.setImgUrl(this.f21754b.getVideoImg());
        this.f21753a.setShortUrl(this.f21754b.getShortUrl());
        String sb2 = this.f21754b.getVideoDesc().toString();
        if (SharePlatformBean.Wechat.NAME.equals(str)) {
            this.f21753a.setTitle(String.format(BaseApplication.getInstance().getString(R.string.share_weichat_video_title), this.f21754b.getUserNickName()));
            this.f21753a.setContent(sb2);
        } else if (SharePlatformBean.WechatMoments.NAME.equals(str)) {
            if (!TextUtils.isEmpty(sb2)) {
                this.f21753a.setContent(String.format("%s | BuzzCast | %s", this.f21754b.getUserNickName(), sb2));
            } else {
                this.f21753a.setContent(String.format("%s | BuzzCast", this.f21754b.getUserNickName()));
            }
            this.f21753a.setShareType(1);
        } else if (com.twitter.sdk.android.core.l.class.getSimpleName().equals(str)) {
            if (!TextUtils.isEmpty(sb2)) {
                this.f21753a.setContent(String.format("%s|BuzzCast|%s\n%s", this.f21754b.getUserNickName(), sb2, this.f21754b.getShortUrl()));
            } else {
                this.f21753a.setContent(String.format("%s|BuzzCast\n%s", this.f21754b.getUserNickName(), this.f21754b.getShortUrl()));
            }
        } else if (SharePlatformBean.FaceBook.NAME.equals(str)) {
            if (!TextUtils.isEmpty(sb2)) {
                this.f21753a.setTitle(String.format("%s | BuzzCast | %s", this.f21754b.getUserNickName(), sb2));
                this.f21753a.setContent(String.format("%s | BuzzCast | %s", this.f21754b.getUserNickName(), sb2));
                return;
            }
            this.f21753a.setTitle(String.format("%s | BuzzCast", this.f21754b.getUserNickName()));
            this.f21753a.setContent(String.format("%s | BuzzCast | %s", this.f21754b.getUserNickName(), sb2));
        } else if (SharePlatformBean.SinaWeibo.NAME.equals(str)) {
            if (TextUtils.isEmpty(sb2)) {
                ShareContentBean shareContentBean = this.f21753a;
                shareContentBean.setContent("BuzzCast " + this.f21754b.getShortUrl());
                return;
            }
            ShareContentBean shareContentBean2 = this.f21753a;
            shareContentBean2.setContent(sb2 + " " + this.f21754b.getShortUrl());
        } else if (SharePlatformBean.WhatsApp.NAME.equals(str)) {
            ShareContentBean shareContentBean3 = this.f21753a;
            shareContentBean3.setTitle(BaseApplication.getInstance().getString(R.string.share_default_text) + this.f21754b.getShortUrl());
            ShareContentBean shareContentBean4 = this.f21753a;
            shareContentBean4.setContent(BaseApplication.getInstance().getString(R.string.share_default_text) + this.f21754b.getShortUrl());
        } else if (TextUtils.isEmpty(sb2)) {
            this.f21753a.setTitle("BuzzCast");
            this.f21753a.setContent("BuzzCast");
        } else {
            this.f21753a.setTitle(sb2);
            this.f21753a.setContent(sb2);
        }
    }

    private void k2(String str) {
        if (str == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        if (com.twitter.sdk.android.core.l.class.getSimpleName().equals(str)) {
            hashMap.put("sharePlatForm", "0");
        } else if (SharePlatformBean.FaceBook.NAME.equals(str)) {
            hashMap.put("sharePlatForm", "1");
        } else if (SharePlatformBean.Wechat.NAME.equals(str)) {
            hashMap.put("sharePlatForm", "2");
        } else if (SharePlatformBean.WechatMoments.NAME.equals(str)) {
            hashMap.put("sharePlatForm", "3");
        } else if (SharePlatformBean.Instagram.NAME.equals(str)) {
            hashMap.put("sharePlatForm", "4");
        } else if (SharePlatformBean.Youtube.NAME.equals(str)) {
            hashMap.put("sharePlatForm", MVPActivity.FROM_BAG_BADGE);
        } else if (SharePlatformBean.SinaWeibo.NAME.equals(str)) {
            hashMap.put("sharePlatForm", "7");
        } else if (SharePlatformBean.WhatsApp.NAME.equals(str)) {
            hashMap.put("sharePlatForm", "9");
        } else if (SharePlatformBean.SnapChat.NAME.equals(str)) {
            hashMap.put("sharePlatForm", "5");
        } else {
            hashMap.put("sharePlatForm", PushUtils.CHAT_PUSH_TYPE);
        }
        VideoItem videoItem = this.f21754b;
        if (videoItem != null) {
            hashMap.put("videoId", videoItem.getVideoId());
            hashMap.put("shareSource", "0");
        }
        if (this.f21758f != null) {
            hashMap.put("shareSource", "1");
            hashMap.put("liveId", this.f21758f.getLiveRoomId());
        }
        if (this.f21757e != null) {
            return;
        }
        post("tokens/user/share/log").E(hashMap).M(new k());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l2(String str, String str2) {
        a2(str, this.f21754b, TextUtils.isEmpty(str), str2, new a());
    }

    private void notifyDataLoaded() {
        this.recyclerView.getAdapter().notifyDataSetChanged();
    }

    private void shareLiveToFriend() {
        InviteDialog U1 = InviteDialog.U1(this.f21758f, 0, 2, null);
        U1.setOnDismissListener(new g());
        U1.show(getChildFragmentManager(), InviteDialog.class.getSimpleName());
    }

    public void addDatas(List<SharePlatformBean> list) {
        this.f21765m.addAll(list);
    }

    public void b2(BaseViewHolder baseViewHolder, int i9, SharePlatformBean sharePlatformBean) {
        ((ImageView) baseViewHolder.getView(R.id.icon)).setImageDrawable(new RippleDrawable(getResources().getColorStateList(R.color.colorControlHighlight), getResources().getDrawable(sharePlatformBean.getIcon()), null));
        baseViewHolder.setText(R.id.tv, getString(sharePlatformBean.getDiplayNameId()));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_share;
    }

    public void h2() {
        this.recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 5));
        this.recyclerView.setAdapter(new b());
    }

    public void i2(BaseViewHolder baseViewHolder, int i9, SharePlatformBean sharePlatformBean) {
        if (sharePlatformBean == null) {
            return;
        }
        String sharePlatformName = sharePlatformBean.getSharePlatformName();
        m mVar = this.f21764l;
        if (mVar != null && sharePlatformName != null) {
            mVar.a(sharePlatformName, this.f21753a);
        }
        if (this.f21754b == null) {
            if (SharePlatformBean.Friend.NAME.equals(sharePlatformName)) {
                shareLiveToFriend();
            } else {
                v9.c.g(getActivity(), sharePlatformBean.getSharePlatformName(), this.f21753a.getTitle(), this.f21753a.getContent(), this.f21753a.getImgUrl(), this.f21753a.getShortUrl(), this.f21753a.getShareType(), this.f21756d);
            }
            k2(sharePlatformName);
            return;
        }
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.video_share);
        if (sharePlatformName != null) {
            if (!SharePlatformBean.Youtube.NAME.equals(sharePlatformBean.getSharePlatformName()) && !SharePlatformBean.Instagram.NAME.equals(sharePlatformBean.getSharePlatformName()) && !SharePlatformBean.WhatsApp.NAME.equals(sharePlatformBean.getSharePlatformName()) && !com.twitter.sdk.android.core.l.class.getSimpleName().equals(sharePlatformBean.getSharePlatformName()) && !SharePlatformBean.SnapChat.NAME.equals(sharePlatformBean.getSharePlatformName())) {
                if (this.f21754b != null) {
                    j2(sharePlatformBean.getSharePlatformName());
                    v9.c.g(getActivity(), sharePlatformBean.getSharePlatformName(), this.f21753a.getTitle(), this.f21753a.getContent(), this.f21753a.getImgUrl(), this.f21753a.getShortUrl(), this.f21753a.getShareType(), this.f21756d);
                    if (com.twitter.sdk.android.core.l.class.getSimpleName().equals(sharePlatformBean.getSharePlatformName())) {
                        dismiss();
                    }
                } else {
                    v9.c.g(getActivity(), sharePlatformBean.getSharePlatformName(), this.f21753a.getTitle(), this.f21753a.getContent(), this.f21753a.getImgUrl(), this.f21753a.getShortUrl(), 0, this.f21756d);
                }
            } else {
                new com.tbruyelle.rxpermissions2.a(this).p("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").subscribe(new f(sharePlatformBean));
            }
            k2(sharePlatformName);
        } else if (SharePlatformBean.FaceBook.NAME.equals(sharePlatformBean.getSharePlatformName())) {
            v9.a.b(getActivity(), this.f21754b);
        } else if (More.NAME.equals(sharePlatformBean.getSharePlatformName())) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.setFlags(3);
            intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
            intent.putExtra("android.intent.extra.TEXT", getString(R.string.share_default_text) + this.f21754b.getShortUrl());
            startActivity(intent);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        h2();
        getDialog().getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
        view.setOnClickListener(new e());
        VideoItem videoItem = this.f21754b;
        if (videoItem != null && !videoItem.getUserId().equals(getCurrentUser().getUserId())) {
            view.findViewById(R.id.no_interest).setVisibility(0);
        }
        LiveRoomModel liveRoomModel = this.f21758f;
        if (liveRoomModel != null && !liveRoomModel.getBroadCasterUserId().equals(getCurrentUser().getUserId())) {
            view.findViewById(R.id.no_interest).setVisibility(0);
        }
        VideoItem videoItem2 = this.f21754b;
        if (videoItem2 != null && videoItem2.getUserId().equals(getCurrentUser().getUserId())) {
            view.findViewById(R.id.delete_video).setVisibility(0);
            view.findViewById(R.id.report).setVisibility(8);
        } else {
            LiveRoomModel liveRoomModel2 = this.f21758f;
            if (liveRoomModel2 != null && liveRoomModel2.getCurrentUserId() != null && this.f21758f.getCurrentUserId().equals(getCurrentUser().getUserId())) {
                view.findViewById(R.id.report).setVisibility(8);
                view.findViewById(R.id.delete_video).setVisibility(8);
            } else {
                view.findViewById(R.id.report).setVisibility(0);
                view.findViewById(R.id.delete_video).setVisibility(8);
            }
        }
        if (!this.f21755c) {
            view.findViewById(R.id.login_bottom_layout).setVisibility(8);
        }
        ViewGroup.LayoutParams layoutParams = this.copyLink.getLayoutParams();
        layoutParams.width = DensityUtil.getWidth() / 5;
        this.saveBtn.setLayoutParams(layoutParams);
        this.copyLink.setLayoutParams(layoutParams);
        view.findViewById(R.id.report).setLayoutParams(layoutParams);
        view.findViewById(R.id.no_interest).setLayoutParams(layoutParams);
        view.findViewById(R.id.delete_video).setLayoutParams(layoutParams);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        if (this.f21754b != null) {
            addDatas(SharePlatformBean.getDefault());
        } else {
            this.saveBtn.setVisibility(8);
            addDatas(SharePlatformBean.getTopicDefault(this.f21759g));
        }
        notifyDataLoaded();
    }

    @OnClick
    public void onButtonClick(View view) {
        switch (view.getId()) {
            case R.id.cancel /* 2131362223 */:
                dismiss();
                l lVar = this.f21763k;
                if (lVar != null) {
                    lVar.onCancel();
                    return;
                }
                return;
            case R.id.close /* 2131362317 */:
                dismiss();
                return;
            case R.id.copy_link /* 2131362407 */:
                ClipboardManager clipboardManager = (ClipboardManager) getActivity().getSystemService("clipboard");
                if (clipboardManager != null) {
                    clipboardManager.setPrimaryClip(ClipData.newPlainText("Label", this.f21753a.getShortUrl()));
                    ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.copy_link_succ);
                    return;
                }
                return;
            case R.id.delete_video /* 2131362475 */:
                c2();
                return;
            case R.id.no_interest /* 2131363864 */:
                if (this.f21754b != null) {
                    showToast(R.string.recommen_other_video);
                    AppContentFilter.INSTANCE.doNotWantToSee(this.f21754b);
                    dismissAllowingStateLoss();
                }
                if (this.f21758f != null) {
                    showToast(R.string.recommen_other_live);
                    AppContentFilter.INSTANCE.doNotWantToSee((RoomItemData) this.f21758f);
                    dismissAllowingStateLoss();
                    return;
                }
                return;
            case R.id.report /* 2131364209 */:
                dismiss();
                l lVar2 = this.f21763k;
                if (lVar2 != null) {
                    lVar2.Z();
                }
                if (this.f21754b != null) {
                    ReportController.report(getActivity(), this.f21754b.getUserId(), this.f21754b.getVideoId(), "1");
                }
                if (this.f21757e != null) {
                    ReportController.report(getActivity(), this.f21757e.getTopicId(), this.f21757e.getTopicId(), "12");
                }
                LiveRoomModel liveRoomModel = this.f21758f;
                if (liveRoomModel != null) {
                    if (liveRoomModel instanceof RoomItemData) {
                        ReportController.report(getActivity(), this.f21758f.getBroadCasterUserId(), this.f21758f.getLiveRoomId(), "2", !LivePlayerProvider.player().isCompatMode(), ((RoomItemData) this.f21758f).getScreenShotSwitch());
                        return;
                    } else {
                        ReportController.report(getActivity(), this.f21758f.getBroadCasterUserId(), this.f21758f.getLiveRoomId(), "2", !LivePlayerProvider.player().isCompatMode());
                        return;
                    }
                }
                return;
            case R.id.save_btn /* 2131364341 */:
                new com.tbruyelle.rxpermissions2.a(this).p("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").subscribe(new h());
                return;
            default:
                dismiss();
                return;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        l lVar = this.f21763k;
        if (lVar != null) {
            lVar.onCancel();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f21753a = (ShareContentBean) getArguments().getParcelable("data");
            this.f21754b = (VideoItem) getArguments().getParcelable(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
            this.f21757e = (UgcTopicBean) getArguments().getParcelable(BaseConfig.DB_TYPE_TOPIC_NAME);
            this.f21758f = (LiveRoomModel) getArguments().getParcelable("live");
            this.f21755c = getArguments().getBoolean("showDownload", true);
            this.f21759g = getArguments().getBoolean("showShareToFriend", false);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.BottomDialog);
        createBottomDialog.setCanceledOnTouchOutside(true);
        createBottomDialog.setCancelable(true);
        if (this.f21754b == null) {
            createBottomDialog.getWindow().setDimAmount(0.6f);
        } else {
            createBottomDialog.getWindow().setDimAmount(0.0f);
        }
        return createBottomDialog;
    }

    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_share, viewGroup, false));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        v9.c.c();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        l lVar = this.f21763k;
        if (lVar != null) {
            lVar.onDismiss();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        Window window;
        super.onViewCreated(view, bundle);
        if (getDialog() == null || (window = getDialog().getWindow()) == null) {
            return;
        }
        window.addFlags(8);
        getDialog().setOnShowListener(new d(window));
    }

    public void setOnListener(l lVar) {
        this.f21763k = lVar;
    }

    public void setOnSharePlatformClickListener(m mVar) {
        this.f21764l = mVar;
    }
}
