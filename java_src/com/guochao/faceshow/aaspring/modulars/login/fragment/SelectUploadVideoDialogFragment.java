package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.facebook.share.internal.ShareConstants;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.modulars.login.fragment.SelectUploadVideoFragment;
import com.guochao.faceshow.aaspring.utils.MediaFileFinder;
import com.guochao.faceshow.activity.ZTCVideoEditerActivity;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.TCConstants;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class SelectUploadVideoDialogFragment extends BottomSheetDialogFragment implements SelectUploadVideoFragment.d {

    /* renamed from: a  reason: collision with root package name */
    private int f20498a;

    /* renamed from: b  reason: collision with root package name */
    private LocalImageOrVideoBean f20499b;

    /* loaded from: classes3.dex */
    class a implements DialogInterface.OnShowListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            FrameLayout frameLayout = (FrameLayout) ((BottomSheetDialog) dialogInterface).findViewById(R.id.design_bottom_sheet);
            BottomSheetBehavior.from(frameLayout).setPeekHeight(frameLayout.getHeight());
            ((CoordinatorLayout) frameLayout.getParent()).getParent().requestLayout();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Function1<LocalImageOrVideoBean, Unit> {
        b() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(LocalImageOrVideoBean localImageOrVideoBean) {
            Intent intent = new Intent(SelectUploadVideoDialogFragment.this.getActivity(), ZTCVideoEditerActivity.class);
            intent.putExtra("duration", SelectUploadVideoDialogFragment.this.f20499b.getDuration());
            intent.putExtra(TCConstants.VIDEO_EDITER_PATH, SelectUploadVideoDialogFragment.this.f20499b.getThumbnailPath());
            intent.putExtra(TCConstants.VIDEO_EDITER_URI, SelectUploadVideoDialogFragment.this.f20499b.getDisplayUri());
            intent.putExtra("from", SelectUploadVideoDialogFragment.this.f20498a);
            intent.putExtra("choose", 1);
            intent.putExtra("titleName", SelectUploadVideoDialogFragment.this.f20499b.getFileName());
            intent.putExtra(ShareConstants.FEED_SOURCE_PARAM, "1");
            SelectUploadVideoDialogFragment.this.startActivity(intent);
            return null;
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.fragment.SelectUploadVideoFragment.d
    public void A(SelectUploadVideoFragment selectUploadVideoFragment) {
        dismissAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.fragment.SelectUploadVideoFragment.d
    public void P0(LocalImageOrVideoBean localImageOrVideoBean, int i9, SelectUploadVideoFragment selectUploadVideoFragment) {
        this.f20499b = localImageOrVideoBean;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.fragment.SelectUploadVideoFragment.d
    public /* synthetic */ boolean U() {
        return d.c(this);
    }

    @OnClick
    public void click(View view) {
        int id2 = view.getId();
        if (id2 != R.id.cancel) {
            if (id2 == R.id.sure && this.f20499b != null) {
                MediaFileFinder.getInstance().readVideoDetail(this.f20499b, new b());
                return;
            }
            return;
        }
        dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable @org.jetbrains.annotations.Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getDialog() != null) {
            View findViewById = getDialog().getWindow().findViewById(R.id.design_bottom_sheet);
            ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
            layoutParams.height = -1;
            findViewById.setLayoutParams(layoutParams);
            findViewById.setPadding(0, DensityUtil.dp2px(20.0f), 0, 0);
        }
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialogFragment, androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable @org.jetbrains.annotations.Nullable Bundle bundle) {
        BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(getContext(), R.style.TransparentBottomSheetStyle1);
        bottomSheetDialog.setOnShowListener(new a());
        return bottomSheetDialog;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    @org.jetbrains.annotations.Nullable
    public View onCreateView(@NonNull @NotNull LayoutInflater layoutInflater, @Nullable @org.jetbrains.annotations.Nullable ViewGroup viewGroup, @Nullable @org.jetbrains.annotations.Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_select_upload_dialog_video, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull @NotNull View view, @Nullable @org.jetbrains.annotations.Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        ButterKnife.c(this, view);
        SelectUploadVideoFragment selectUploadVideoFragment = new SelectUploadVideoFragment();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f20498a = arguments.getInt("from");
        }
        selectUploadVideoFragment.setArguments(arguments);
        getChildFragmentManager().beginTransaction().replace(R.id.recycler_view, selectUploadVideoFragment).commitAllowingStateLoss();
    }
}
