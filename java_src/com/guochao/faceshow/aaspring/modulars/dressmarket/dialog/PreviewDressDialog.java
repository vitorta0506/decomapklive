package com.guochao.faceshow.aaspring.modulars.dressmarket.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressResponse;
import com.guochao.faceshow.aaspring.modulars.dressmarket.dialog.PreviewDressDialog;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.MD5Utils;
import com.guochao.faceshow.utils.Md5;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import java.io.File;
import java.io.FileInputStream;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class PreviewDressDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private SVGAImageView f17661a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f17662b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f17663c;

    /* renamed from: d  reason: collision with root package name */
    private View f17664d;

    /* renamed from: e  reason: collision with root package name */
    private SVGAImageView f17665e;

    /* renamed from: f  reason: collision with root package name */
    private HeadPortraitView f17666f;

    /* renamed from: g  reason: collision with root package name */
    private DressResponse.DressBean f17667g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f17668h;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<File> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<File> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable File file, @NonNull FaceCastBaseResponse<File> faceCastBaseResponse) {
            if (file == null) {
                onFailure(new g7.a<>(new Exception(), -1));
            } else {
                PreviewDressDialog.this.Y1(file);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements SVGAParser.ParseCompletion {
        b() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            SvgaImageViewUtils.fitScreenWidth(sVGAVideoEntity, PreviewDressDialog.this.f17661a);
            PreviewDressDialog.this.f17661a.setVideoItem(sVGAVideoEntity);
            PreviewDressDialog.this.f17661a.startAnimation();
            PreviewDressDialog.this.f17661a.setLoops(Integer.MAX_VALUE);
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements SVGAParser.ParseCompletion {
        c() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            if (PreviewDressDialog.this.getDialog() != null && PreviewDressDialog.this.getDialog().isShowing()) {
                double height = sVGAVideoEntity.getVideoSize().getHeight();
                double width = sVGAVideoEntity.getVideoSize().getWidth();
                ViewGroup.LayoutParams layoutParams = PreviewDressDialog.this.f17665e.getLayoutParams();
                if (!BaseConfig.isChinese()) {
                    layoutParams.height = (int) ((height / 1.5d) * 1.2999999523162842d);
                    layoutParams.width = (int) ((width / 1.5d) * 1.2999999523162842d);
                } else {
                    layoutParams.height = (int) (height * 1.5d);
                    layoutParams.width = (int) (width * 1.5d);
                }
                PreviewDressDialog.this.f17665e.setLayoutParams(layoutParams);
                PreviewDressDialog.this.f17665e.setVideoItem(sVGAVideoEntity);
                PreviewDressDialog.this.f17665e.startAnimation();
            }
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U1(View view) {
        dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V1(View view) {
        dismissAllowingStateLoss();
    }

    public static void W1(FragmentManager fragmentManager, DressResponse.DressBean dressBean) {
        PreviewDressDialog previewDressDialog = new PreviewDressDialog();
        Bundle bundle = new Bundle();
        bundle.putParcelable("dressBean", dressBean);
        previewDressDialog.setArguments(bundle);
        previewDressDialog.show(fragmentManager, PreviewDressDialog.class.getSimpleName());
    }

    private void X1(boolean z10) {
        if (z10) {
            this.f17665e.setVisibility(0);
            this.f17664d.setVisibility(8);
            this.f17661a.setVisibility(8);
            SvgaImageViewUtils.getParser().decodeFromInputStream(getResources().openRawResource(R.raw.loading_global), "global_loading", new c(), true);
            return;
        }
        this.f17665e.setVisibility(8);
        this.f17664d.setVisibility(0);
        this.f17661a.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1(@NonNull File file) {
        try {
            this.f17668h = true;
            this.f17665e.setLoops(0);
            X1(false);
            new SVGAParser(getContext()).decodeFromInputStream(new FileInputStream(file), "entrance_car", new b(), true);
        } catch (Exception unused) {
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_preview_dress;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getArguments() != null) {
            this.f17667g = (DressResponse.DressBean) getArguments().getParcelable("dressBean");
        }
        view.findViewById(R.id.bg_view).setOnClickListener(new View.OnClickListener() { // from class: o8.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PreviewDressDialog.this.U1(view2);
            }
        });
        view.findViewById(R.id.close_view).setOnClickListener(new View.OnClickListener() { // from class: o8.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PreviewDressDialog.this.V1(view2);
            }
        });
        this.f17664d = view.findViewById(R.id.content_lay);
        this.f17665e = (SVGAImageView) view.findViewById(R.id.progress_img);
        this.f17661a = (SVGAImageView) view.findViewById(R.id.svga_view);
        this.f17662b = (TextView) view.findViewById(R.id.user_name);
        this.f17663c = (ImageView) view.findViewById(R.id.spec_tag);
        this.f17666f = (HeadPortraitView) view.findViewById(R.id.head);
        boolean z10 = false;
        if (!TextUtils.isEmpty(getCurrentUser().getUserVipMsg().getDressHead())) {
            this.f17666f.setAvatarStrokeWidth(0);
        } else {
            this.f17666f.setAvatarStrokeWidth(DensityUtil.dp2px(1.5f));
        }
        this.f17666f.d(getCurrentUser());
        X1(true);
        DressResponse.DressBean dressBean = this.f17667g;
        if (dressBean == null) {
            return;
        }
        if (dressBean.getIsVip() == 1) {
            this.f17663c.setImageResource(R.mipmap.dress_up_vip);
        } else if (this.f17667g.getIsVip() == 2) {
            this.f17663c.setImageResource(R.mipmap.dress_up_svip);
        } else {
            this.f17662b.setMaxWidth(DensityUtil.dp2px(140.0f));
            this.f17663c.setVisibility(8);
        }
        this.f17662b.setText(getCurrentUser().getUserName());
        String arFileUrlV2 = q7.a.e().j() ? this.f17667g.getArFileUrlV2() : this.f17667g.getFileUrlV2();
        File file = new File(FilePathProvider.getNXShowPath("Dress"), MD5Utils.getMD5String(arFileUrlV2));
        if (q7.a.e().j() && this.f17667g.getArThumbMd5() != null) {
            z10 = this.f17667g.getArThumbMd5().equalsIgnoreCase(Md5.getMd5ByFile(file));
        }
        if (!q7.a.e().j() && this.f17667g.getThumbMd5() != null) {
            z10 = this.f17667g.getThumbMd5().equalsIgnoreCase(Md5.getMd5ByFile(file));
        }
        if (file.exists() && z10) {
            Y1(file);
        } else {
            FaceCastHttpClientImpl.h(getActivity()).a(null, arFileUrlV2, file.getPath(), new a());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.NormalDialog);
        createBottomDialog.setCanceledOnTouchOutside(true);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        return createBottomDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f17668h) {
            return;
        }
        File file = new File(FilePathProvider.getNXShowPath("Dress"), MD5Utils.getMD5String(q7.a.e().j() ? this.f17667g.getArFileUrl() : this.f17667g.getFileUrl()));
        if (file.exists()) {
            file.delete();
        }
    }
}
