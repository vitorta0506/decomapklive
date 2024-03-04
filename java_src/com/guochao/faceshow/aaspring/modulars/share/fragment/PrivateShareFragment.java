package com.guochao.faceshow.aaspring.modulars.share.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.TailWaterMark;
import com.guochao.faceshow.views.m;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* loaded from: classes3.dex */
public class PrivateShareFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private VideoItem f21728a;

    /* renamed from: b  reason: collision with root package name */
    private m f21729b;

    /* renamed from: c  reason: collision with root package name */
    private int f21730c = 0;

    /* renamed from: d  reason: collision with root package name */
    private TailWaterMark f21731d;

    /* loaded from: classes3.dex */
    class a extends SimpleObserver<te.a> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            if (aVar.f58133b) {
                PrivateShareFragment.this.Y1("");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements TailWaterMark.WaterMarkProcessListener {

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: com.guochao.faceshow.aaspring.modulars.share.fragment.PrivateShareFragment$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC0211a implements Runnable {
                RunnableC0211a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    PrivateShareFragment.this.f21729b.c();
                }
            }

            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PrivateShareFragment.this.f21731d != null) {
                    PrivateShareFragment.this.f21731d.cancelProcess();
                }
                HandlerGetter.getMainHandler().postDelayed(new RunnableC0211a(), 200L);
            }
        }

        b() {
        }

        @Override // com.guochao.faceshow.utils.TailWaterMark.WaterMarkProcessListener
        public void onNetWorkError() {
            if (PrivateShareFragment.this.f21729b != null) {
                PrivateShareFragment.this.f21729b.c();
            }
        }

        @Override // com.guochao.faceshow.utils.TailWaterMark.WaterMarkProcessListener
        public void onWaterMarkFinish(String str, Boolean bool, String str2) {
            if (bool.booleanValue()) {
                if (PrivateShareFragment.this.f21729b != null) {
                    if (PrivateShareFragment.this.f21730c == -1) {
                        PrivateShareFragment.this.f21729b.d();
                    } else {
                        PrivateShareFragment.this.f21729b.i(100);
                    }
                    PrivateShareFragment.this.f21729b.k(PrivateShareFragment.this.getResources().getString(R.string.save_successful));
                }
                if (PrivateShareFragment.this.f21729b != null) {
                    PrivateShareFragment.this.f21729b.c();
                }
                ToastUtils.showToast(BaseApplication.getInstance(), PrivateShareFragment.this.getResources().getString(R.string.save_successful));
                return;
            }
            if (PrivateShareFragment.this.f21729b != null) {
                PrivateShareFragment.this.f21729b.c();
            }
            ToastUtils.showToast(BaseApplication.getInstance(), PrivateShareFragment.this.getResources().getString(R.string.saved_error));
        }

        @Override // com.guochao.faceshow.utils.TailWaterMark.WaterMarkProcessListener
        public void onWaterMarkProgress(int i9) {
            if (PrivateShareFragment.this.f21729b == null) {
                PrivateShareFragment.this.f21729b = new m();
                PrivateShareFragment.this.f21729b.b(PrivateShareFragment.this.getActivity());
                PrivateShareFragment.this.f21729b.g(false);
                PrivateShareFragment.this.f21729b.h(false);
                PrivateShareFragment.this.f21729b.j(PrivateShareFragment.this.getResources().getString(R.string.view_in_album_tip));
                PrivateShareFragment.this.f21729b.f(PrivateShareFragment.this.getResources().getString(R.string.str_no), new a());
            }
            PrivateShareFragment.this.f21730c = i9;
            if (i9 == -1) {
                PrivateShareFragment.this.f21729b.d();
                m mVar = PrivateShareFragment.this.f21729b;
                mVar.k(PrivateShareFragment.this.getResources().getString(R.string.Saving) + "…");
            } else {
                if (i9 >= 100) {
                    i9 = 99;
                }
                PrivateShareFragment.this.f21729b.i(i9);
                PrivateShareFragment.this.f21729b.k(PrivateShareFragment.this.getResources().getString(R.string.Saving));
            }
            if (PrivateShareFragment.this.f21729b.e()) {
                return;
            }
            PrivateShareFragment.this.f21729b.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Function1<GCRequest, Unit> {
        c() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCRequest gCRequest) {
            PrivateShareFragment.this.dismissProgressDialog();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements GCRequestJava.d<Object> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Object> response) {
            PrivateShareFragment.this.dismiss();
            PrivateShareFragment.this.getActivity().setResult(-1);
            PrivateShareFragment.this.getActivity().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Function1<GCRequest, Unit> {
        e() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCRequest gCRequest) {
            PrivateShareFragment.this.dismissProgressDialog();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements GCRequestJava.d<Object> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Object> response) {
            PrivateShareFragment.this.dismiss();
            PrivateShareFragment.this.getActivity().setResult(-1);
            PrivateShareFragment.this.getActivity().finish();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void V1(com.guochao.faceshow.aaspring.beans.VideoItem r10, boolean r11, java.lang.String r12, com.guochao.faceshow.utils.TailWaterMark.WaterMarkProcessListener r13) {
        /*
            r9 = this;
            boolean r12 = com.guochao.faceshow.utils.PermissionTools.checkStoragePer()
            if (r12 != 0) goto L7
            return
        L7:
            if (r10 != 0) goto La
            return
        La:
            r12 = 0
            java.lang.String r0 = r10.getWidth()     // Catch: java.lang.Exception -> L20
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Exception -> L20
            java.lang.String r1 = r10.getHeight()     // Catch: java.lang.Exception -> L1e
            int r12 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Exception -> L1e
            r8 = r12
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
            com.guochao.faceshow.utils.TailWaterMark r12 = r9.f21731d
            if (r12 != 0) goto L36
            com.guochao.faceshow.utils.TailWaterMark r12 = new com.guochao.faceshow.utils.TailWaterMark
            androidx.fragment.app.FragmentActivity r0 = r9.getActivity()
            r12.<init>(r0)
            r9.f21731d = r12
        L36:
            if (r11 == 0) goto L4a
            com.guochao.faceshow.utils.TailWaterMark r2 = r9.f21731d
            r3 = 0
            java.lang.String r4 = r10.getVideoUrl()
            java.lang.String r5 = r10.getVideoId()
            java.lang.String r6 = r10.getUserId()
            r2.makeWaterMarkVideoToDCMI(r3, r4, r5, r6, r7, r8)
        L4a:
            com.guochao.faceshow.utils.TailWaterMark r10 = r9.f21731d
            r10.setWaterMarkProcessListener(r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.share.fragment.PrivateShareFragment.V1(com.guochao.faceshow.aaspring.beans.VideoItem, boolean, java.lang.String, com.guochao.faceshow.utils.TailWaterMark$WaterMarkProcessListener):void");
    }

    private void W1() {
        showProgressDialog("");
        new GCRequestJava("api/token/social/video/deleteVideo").bindToLifecycle(this).putBody("videoId", this.f21728a.getVideoId()).j(new d()).complete(new c()).request();
    }

    public static PrivateShareFragment X1(VideoItem videoItem) {
        PrivateShareFragment privateShareFragment = new PrivateShareFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", videoItem);
        privateShareFragment.setArguments(bundle);
        return privateShareFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1(String str) {
        V1(this.f21728a, true, str, new b());
    }

    private void Z1() {
        showProgressDialog("");
        new GCRequestJava("api/token/social/video/updateState").putBody("videoId", this.f21728a.getVideoId()).j(new f()).complete(new e()).request();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_layout_private_share;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @OnClick
    public void onButtonClick(View view) {
        int id2 = view.getId();
        if (id2 == R.id.delete_video) {
            W1();
        } else if (id2 == R.id.save_btn) {
            new com.tbruyelle.rxpermissions2.a(this).p("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").subscribe(new a());
        } else if (id2 != R.id.up_to_public) {
            dismiss();
        } else {
            Z1();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f21728a = (VideoItem) getArguments().getParcelable("data");
        }
    }
}
