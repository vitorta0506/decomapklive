package com.guochao.faceshow.aaspring.views;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.utils.CustomNameCacheUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class GuideDialogFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private SVGAParser f23711a;

    /* renamed from: b  reason: collision with root package name */
    private int f23712b;

    /* renamed from: c  reason: collision with root package name */
    private int f23713c;
    @BindView
    FrameLayout flContent;
    @BindView
    LinearLayout llGuid;
    @BindView
    SVGAImageView svgGuid;

    /* loaded from: classes3.dex */
    class a implements SVGAParser.ParseCompletion {
        a() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            GuideDialogFragment.this.svgGuid.setVideoItem(sVGAVideoEntity);
            SvgaImageViewUtils.fitImageView(sVGAVideoEntity, GuideDialogFragment.this.svgGuid, 3.0f);
            GuideDialogFragment.this.svgGuid.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    class b implements DialogInterface.OnKeyListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i9, KeyEvent keyEvent) {
            return i9 == 4;
        }
    }

    public static GuideDialogFragment P1(FragmentManager fragmentManager, int i9, int i10) {
        GuideDialogFragment guideDialogFragment = new GuideDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("start", i9);
        bundle.putInt("top", i10);
        guideDialogFragment.setArguments(bundle);
        guideDialogFragment.show(fragmentManager, GuideDialogFragment.class.getSimpleName());
        return guideDialogFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.popup_date_guide;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.llGuid.getLayoutParams();
        marginLayoutParams.topMargin = this.f23713c;
        marginLayoutParams.setMarginStart(this.f23712b);
        this.llGuid.setLayoutParams(marginLayoutParams);
        if (this.f23711a == null) {
            SVGAParser parser = SvgaImageViewUtils.getParser();
            this.f23711a = parser;
            parser.decodeFromInputStream(getResources().openRawResource(R.raw.dating_square_guide), "dating_square_guide", new a(), true);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        if (getArguments() != null) {
            this.f23712b = getArguments().getInt("start", 0);
            this.f23713c = getArguments().getInt("top", 0);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setParamsHeight(-1);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.NormalDialog);
        createBottomDialog.setCanceledOnTouchOutside(false);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        createBottomDialog.setOnKeyListener(new b());
        return createBottomDialog;
    }

    @OnClick
    public void onViewClicked() {
        FragmentActivity activity = getActivity();
        CustomNameCacheUtils.setBool(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, getCurrentUser().getCurrentUserId() + "KEY_DATING_SQUARE", true);
        dismiss();
    }
}
