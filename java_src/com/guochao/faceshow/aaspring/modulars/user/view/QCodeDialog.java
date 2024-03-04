package com.guochao.faceshow.aaspring.modulars.user.view;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.beans.UserCenterBean;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.ScanActivity;
import com.guochao.faceshow.aaspring.modulars.user.view.QCodeDialog;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.PerMissionsUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.views.d;
import com.guochao.faceshow.views.e;
import com.tencent.ugc.UGCTransitionRules;
import io.reactivex.k;
import java.util.concurrent.TimeUnit;
import s0.i;
import t0.f;
import vh.g;
/* loaded from: classes3.dex */
public class QCodeDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Bitmap f23238a;
    @BindView
    ImageView qCode;
    @BindView
    ImageView qCodeDownload;

    /* loaded from: classes3.dex */
    class a extends i<Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f23239a;

        a(String str) {
            this.f23239a = str;
        }

        @Override // s0.a, s0.k
        public void onLoadFailed(@Nullable Drawable drawable) {
            Bitmap decodeResource = BitmapFactory.decodeResource(QCodeDialog.this.getResources(), R.mipmap.ic_launcher, null);
            QCodeDialog qCodeDialog = QCodeDialog.this;
            qCodeDialog.f23238a = fa.a.a(this.f23239a + QCodeDialog.this.getCurrentUser().getUserId(), 400, 400, fa.a.b(QCodeDialog.this.getContext(), decodeResource));
            QCodeDialog qCodeDialog2 = QCodeDialog.this;
            qCodeDialog2.qCode.setImageBitmap(qCodeDialog2.f23238a);
            QCodeDialog.this.qCodeDownload.setEnabled(true);
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable f fVar) {
            onResourceReady((Bitmap) obj, (f<? super Bitmap>) fVar);
        }

        public void onResourceReady(@NonNull Bitmap bitmap, @Nullable f<? super Bitmap> fVar) {
            QCodeDialog qCodeDialog = QCodeDialog.this;
            qCodeDialog.f23238a = fa.a.a(this.f23239a + QCodeDialog.this.getCurrentUser().getUserId(), 400, 400, fa.a.b(QCodeDialog.this.getContext(), bitmap));
            QCodeDialog qCodeDialog2 = QCodeDialog.this;
            qCodeDialog2.qCode.setImageBitmap(qCodeDialog2.f23238a);
            QCodeDialog.this.qCodeDownload.setEnabled(true);
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            QCodeDialog.this.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class c extends SimpleObserver<Integer> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(Integer num) {
            QCodeDialog.this.dismiss();
        }
    }

    private void U1() {
        new com.tbruyelle.rxpermissions2.a(this).o("android.permission.CAMERA").subscribe(new g() { // from class: ia.c
            @Override // vh.g
            public final void accept(Object obj) {
                QCodeDialog.this.X1((te.a) obj);
            }
        });
    }

    private void V1() {
        new com.tbruyelle.rxpermissions2.a(this).o("android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new g() { // from class: ia.b
            @Override // vh.g
            public final void accept(Object obj) {
                QCodeDialog.this.Y1((te.a) obj);
            }
        });
    }

    public static QCodeDialog W1(UserCenterBean userCenterBean) {
        QCodeDialog qCodeDialog = new QCodeDialog();
        Bundle bundle = new Bundle();
        if (userCenterBean != null) {
            bundle.putParcelable("user", userCenterBean);
        }
        qCodeDialog.setArguments(bundle);
        return qCodeDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X1(te.a aVar) throws Exception {
        if (aVar.f58133b) {
            ScanActivity.m0(getActivity());
            LogUtils.d("PeopleNearbyActivity", aVar.f58132a + " is granted.");
        } else if (aVar.f58134c) {
            LogUtils.d("PeopleNearbyActivity", aVar.f58132a + " is denied. More info should be provided.");
        } else {
            PerMissionsUtils.checkPermission(getActivity());
            LogUtils.d("PeopleNearbyActivity", aVar.f58132a + " is denied.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y1(te.a aVar) throws Exception {
        if (aVar.f58133b) {
            if (FileUtils.saveImageToGallery(getContext(), this.f23238a, "qrFile") == 2) {
                showToast(getString(R.string.save_successful));
            } else {
                showToast(R.string.ugc_can_not_save);
            }
        } else if (aVar.f58134c) {
            showToast(R.string.ugc_can_not_save);
        } else {
            SpUtils.setBool(getContext(), BaseConfig.SP_SCAN_MISSIONS_CODE, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z1(Dialog dialog, boolean z10) {
        if (z10) {
            PerMissionsUtils.checkPermission(getActivity());
        } else {
            dialog.dismiss();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_q_code;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Bundle arguments = getArguments();
        UserCenterBean userCenterBean = arguments != null ? (UserCenterBean) arguments.getParcelable("user") : null;
        getDialog().getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
        com.bumptech.glide.c.w(this).b().Z0(userCenterBean == null ? getCurrentUser().getAvatar() : userCenterBean.getUserImg()).M0(new a(com.guochao.faceshow.aaspring.manager.i.u().s().getPersonalInformationScan()));
        view.setOnClickListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.NormalDialog);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        return createBottomDialog;
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.iv_scan) {
            if (PerMissionsUtils.lacksPermissions(getActivity(), "android.permission.CAMERA")) {
                U1();
                return;
            }
            ScanActivity.m0(getActivity());
            k.just(1).delay(500L, TimeUnit.MILLISECONDS).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new c());
        } else if (id2 != R.id.q_code_download) {
        } else {
            if (SpUtils.getBool(getContext(), BaseConfig.SP_SCAN_MISSIONS_CODE, false)) {
                alert(getString(R.string.common_dialog_title_tip), getString(R.string.Open_storage_permission_to_use), new e.a() { // from class: ia.a
                    @Override // com.guochao.faceshow.views.e.a
                    public final void onClick(Dialog dialog, boolean z10) {
                        QCodeDialog.this.Z1(dialog, z10);
                    }

                    @Override // com.guochao.faceshow.views.e.a
                    public /* synthetic */ void onCreate(e eVar) {
                        d.a(this, eVar);
                    }
                }, false);
            } else {
                V1();
            }
        }
    }
}
