package com.guochao.faceshow.mine.picdrag.dialog;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.fragment.app.DialogFragment;
import com.guochao.faceshow.ImageBrowse.EditBigImageAct;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment;
import com.guochao.faceshow.aaspring.beans.BottomMenuBean;
import com.guochao.faceshow.aaspring.beans.UserPageBaseData;
import com.guochao.faceshow.utils.PhotoCameraPermissionUtils;
import com.guochao.faceshow.views.d;
import com.guochao.faceshow.views.e;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class CoverPhotoDialogFragment extends BottomMenuFragment {

    /* renamed from: b  reason: collision with root package name */
    private String f25437b;

    /* renamed from: c  reason: collision with root package name */
    private String f25438c;

    /* renamed from: d  reason: collision with root package name */
    private UserPageBaseData.CoverData f25439d;

    /* renamed from: e  reason: collision with root package name */
    private PhotoCameraPermissionUtils f25440e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f25441f = true;

    /* renamed from: g  reason: collision with root package name */
    private boolean f25442g;

    /* renamed from: h  reason: collision with root package name */
    private hb.b f25443h;

    /* renamed from: i  reason: collision with root package name */
    private hb.b f25444i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements e.a {
        a() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                if (CoverPhotoDialogFragment.this.f25439d == null || CoverPhotoDialogFragment.this.f25443h == null) {
                    return;
                }
                CoverPhotoDialogFragment.this.f25443h.onResponse(CoverPhotoDialogFragment.this.f25439d);
                return;
            }
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(e eVar) {
            d.a(this, eVar);
        }
    }

    /* loaded from: classes4.dex */
    class b implements BottomMenuFragment.b {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment.b
        public void a(BottomMenuBean bottomMenuBean, Dialog dialog, DialogFragment dialogFragment) {
            int itemId = bottomMenuBean.getItemId();
            if (itemId == R.string.config_avatar) {
                CoverPhotoDialogFragment.this.dismissAllowingStateLoss();
                if (CoverPhotoDialogFragment.this.f25439d == null || CoverPhotoDialogFragment.this.f25444i == null) {
                    return;
                }
                CoverPhotoDialogFragment.this.f25444i.onResponse(CoverPhotoDialogFragment.this.f25439d);
            } else if (itemId == R.string.delete) {
                CoverPhotoDialogFragment.this.a2();
                CoverPhotoDialogFragment.this.dismiss();
            } else if (itemId != R.string.inspect) {
            } else {
                Intent intent = new Intent(CoverPhotoDialogFragment.this.getActivity(), EditBigImageAct.class);
                intent.putExtra("image_url", CoverPhotoDialogFragment.this.f25439d == null ? "" : CoverPhotoDialogFragment.this.f25439d.imgUrl);
                CoverPhotoDialogFragment.this.startActivity(intent);
                CoverPhotoDialogFragment.this.dismiss();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment.b
        public void onCancel(Dialog dialog, DialogFragment dialogFragment) {
        }
    }

    public static CoverPhotoDialogFragment X1(boolean z10, UserPageBaseData.CoverData coverData) {
        CoverPhotoDialogFragment coverPhotoDialogFragment = new CoverPhotoDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("delete", z10);
        bundle.putParcelable("data", coverData);
        coverPhotoDialogFragment.setArguments(bundle);
        return coverPhotoDialogFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a2() {
        e eVar = new e(getActivity(), R.style.commonDialog, getResources().getString(R.string.confirm_delete_this_cover), new a());
        eVar.i(getString(R.string.str_no));
        eVar.k(getString(R.string.f16064ok));
        eVar.show();
    }

    public void Y1(hb.b bVar) {
        this.f25444i = bVar;
    }

    public void Z1(hb.b bVar) {
        this.f25443h = bVar;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.c
    public void loadData(int i9) {
        super.loadData(i9);
        ArrayList arrayList = new ArrayList();
        BottomMenuBean bottomMenuBean = new BottomMenuBean();
        bottomMenuBean.setTextColor(getResources().getColorStateList(R.color.color_text_level_1));
        bottomMenuBean.setItemId(R.string.inspect);
        bottomMenuBean.setText(getResources().getString(R.string.inspect));
        arrayList.add(bottomMenuBean);
        if (this.f25441f) {
            BottomMenuBean bottomMenuBean2 = new BottomMenuBean();
            bottomMenuBean2.setTextColor(getResources().getColorStateList(R.color.color_app_tips));
            bottomMenuBean2.setItemId(R.string.delete);
            bottomMenuBean2.setText(getResources().getString(R.string.delete));
            arrayList.add(bottomMenuBean2);
        }
        if (!this.f25439d.isIllegal()) {
            BottomMenuBean bottomMenuBean3 = new BottomMenuBean();
            bottomMenuBean3.setTextColor(getResources().getColorStateList(R.color.color_text_level_1));
            bottomMenuBean3.setItemId(R.string.config_avatar);
            bottomMenuBean3.setText(getResources().getString(R.string.config_avatar));
            arrayList.add(bottomMenuBean3);
        }
        setDatas(arrayList);
        setOnMenuItemClickListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f25440e = new PhotoCameraPermissionUtils(getActivity());
        if (getArguments() != null) {
            this.f25441f = getArguments().getBoolean("delete");
            this.f25439d = (UserPageBaseData.CoverData) getArguments().getParcelable("data");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int i9, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i9, strArr, iArr);
        this.f25440e.doNext(i9, iArr);
    }

    public void setCameraPath(String str) {
        this.f25437b = str;
    }

    public void setUpdatePath(String str) {
        this.f25438c = str;
    }

    public void setVipType(boolean z10) {
        this.f25442g = z10;
    }
}
