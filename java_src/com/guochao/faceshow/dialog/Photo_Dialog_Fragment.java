package com.guochao.faceshow.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.MediaStore;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.PhotoActivity;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.AAViewCom;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.PhotoCameraPermissionUtils;
/* loaded from: classes2.dex */
public class Photo_Dialog_Fragment extends BaseDialogFragment {
    public static final int REQUEST_CODE = 888;
    static final int[] RES = {R.mipmap.porfile_pop_pho_1, R.mipmap.porfile_pop_pho_2, R.mipmap.porfile_pop_pho_3, R.mipmap.porfile_pop_pho_4, R.mipmap.porfile_pop_pho_5, R.mipmap.porfile_pop_pho_6};
    public static final int photomark = 51;
    public static final int selectPhoto = 52;
    protected String cameraPath;
    protected boolean isVip;
    private boolean mOpenLive;
    @BindView
    RecyclerView mRecyclerView;
    @BindView
    TextView mTextViewTips;
    @BindView
    TextView mTextViewUploadTitle;
    TextView tv_camera;
    TextView tv_gallery;
    protected String updatePath;
    protected boolean mNoGif = true;
    String[] mPermissions = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.CAMERA", "android.permission.MANAGE_EXTERNAL_STORAGE"};

    /* loaded from: classes2.dex */
    static class SquareImageView extends AppCompatImageView {
        public SquareImageView(@NonNull Context context) {
            super(context);
        }

        @Override // android.widget.ImageView, android.view.View
        protected void onMeasure(int i9, int i10) {
            super.onMeasure(i9, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i9), BasicMeasure.EXACTLY));
        }

        public SquareImageView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public SquareImageView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
            super(context, attributeSet, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {

        /* renamed from: com.guochao.faceshow.dialog.Photo_Dialog_Fragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0246a extends SimpleObserver<te.a> {
            C0246a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            public void onNext(te.a aVar) {
                super.onNext((C0246a) aVar);
                Photo_Dialog_Fragment.this.startCamera();
            }
        }

        a() {
        }

        @Override // android.view.View.OnClickListener
        @RequiresApi(api = 23)
        public void onClick(View view) {
            if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
                ToastUtils.showToast(view.getContext(), (int) R.string.one_v_one_is_matching);
            } else {
                new com.tbruyelle.rxpermissions2.a(Photo_Dialog_Fragment.this).p(Photo_Dialog_Fragment.this.mPermissions).subscribe(new C0246a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements View.OnClickListener {

        /* loaded from: classes2.dex */
        class a extends SimpleObserver<te.a> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            public void onNext(te.a aVar) {
                super.onNext((a) aVar);
                if (Photo_Dialog_Fragment.this.mOpenLive) {
                    Photo_Dialog_Fragment.this.mNoGif = true;
                }
                Photo_Dialog_Fragment.this.startPhotoActivity();
            }
        }

        b() {
        }

        @Override // android.view.View.OnClickListener
        @RequiresApi(api = 23)
        public void onClick(View view) {
            new com.tbruyelle.rxpermissions2.a(Photo_Dialog_Fragment.this).p("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return Photo_Dialog_Fragment.RES.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
            ((ImageView) viewHolder.itemView).setImageResource(Photo_Dialog_Fragment.RES[i9]);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            SquareImageView squareImageView = new SquareImageView(Photo_Dialog_Fragment.this.getActivity());
            squareImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            GridLayoutManager.LayoutParams layoutParams = new GridLayoutManager.LayoutParams(-1, -1);
            layoutParams.setMarginStart(DensityUtil.dp2px(4.0f));
            layoutParams.setMarginEnd(DensityUtil.dp2px(4.0f));
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = DensityUtil.dp2px(4.0f);
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = DensityUtil.dp2px(4.0f);
            squareImageView.setLayoutParams(layoutParams);
            return new BaseViewHolder(squareImageView);
        }
    }

    private void selectPhoto() {
        if (getActivity() == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setType("image/*");
        if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
            getActivity().startActivityForResult(intent, 52);
        }
        dismissAllowingStateLoss();
    }

    @OnClick
    public void close(View view) {
        dismissAllowingStateLoss();
    }

    public String getCameraPath() {
        return this.cameraPath;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_photo_dialog;
    }

    public String getUpdatePath() {
        return this.updatePath;
    }

    protected void hideSoftKeyboard(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
            if (activity.getWindow().getAttributes().softInputMode != 2 && activity.getCurrentFocus() != null && inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.tv_camera = AAViewCom.getTv(view, R.id.tv_camera);
        this.tv_gallery = AAViewCom.getTv(view, R.id.tv_gallery);
        this.tv_camera.setOnClickListener(new a());
        this.tv_gallery.setOnClickListener(new b());
        if (this.mOpenLive) {
            this.mTextViewTips.setText(R.string.upload_cover_des);
            this.mTextViewUploadTitle.setText(R.string.upload_cover);
        } else {
            this.mTextViewTips.setText(R.string.upload_avatar_des);
            this.mTextViewUploadTitle.setText(R.string.upload_avatar);
        }
        this.mRecyclerView.setAdapter(new c());
    }

    public boolean isNoGif() {
        return this.mNoGif;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getDialog() != null) {
            getDialog().setCanceledOnTouchOutside(false);
            getDialog().setCancelable(false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.mOpenLive = getArguments().getBoolean("openLive", false);
            this.cameraPath = getArguments().getString("cameraPath", this.cameraPath);
            this.updatePath = getArguments().getString("myPath", this.updatePath);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        setParamsHeight(-1);
        return createCenterDialog();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        hideSoftKeyboard(getActivity());
        super.onStop();
    }

    public void setCameraPath(String str) {
        this.cameraPath = str;
    }

    public void setNoGif(boolean z10) {
        this.mNoGif = z10;
    }

    public void setOpenLive(boolean z10) {
        this.mOpenLive = z10;
    }

    public void setUpdatePath(String str) {
        this.updatePath = str;
    }

    public void setVipType(boolean z10) {
        this.isVip = z10;
        this.mNoGif = !z10;
    }

    protected void startCamera() {
        PhotoCameraPermissionUtils.cameraMethod(getActivity(), 51, this.cameraPath);
        dismissAllowingStateLoss();
    }

    protected void startPhotoActivity() {
        if (getActivity() != null) {
            Intent intent = new Intent(getActivity(), PhotoActivity.class);
            intent.putExtra("type", 1);
            intent.putExtra("isVip", this.isVip);
            intent.putExtra("nogif", this.mNoGif);
            if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
                getActivity().startActivityForResult(intent, 10023);
            }
        }
        dismissAllowingStateLoss();
    }
}
