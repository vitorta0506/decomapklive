package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.ColorItemBean;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.views.doodle.h;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.NavigationBarUtils;
import com.guochao.faceshow.utils.SystemUtil;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class DoodleEditFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    private a f16935a;

    /* renamed from: b  reason: collision with root package name */
    private List<ColorItemBean> f16936b;

    /* renamed from: c  reason: collision with root package name */
    private h f16937c;
    @BindView
    TextView complete;

    /* renamed from: d  reason: collision with root package name */
    private int f16938d = Color.parseColor("#DF382C");

    /* renamed from: e  reason: collision with root package name */
    private int[] f16939e = {Color.parseColor("#FFFFFF"), Color.parseColor("#DF382C"), Color.parseColor("#000000"), Color.parseColor("#F19A36"), Color.parseColor("#83D753"), Color.parseColor("#3378F6"), Color.parseColor("#883C9B"), Color.parseColor("#A25617"), Color.parseColor("#F7E368")};
    @BindView
    EditText etText;

    /* renamed from: f  reason: collision with root package name */
    private b f16940f;

    /* renamed from: g  reason: collision with root package name */
    private int f16941g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f16942h;
    @BindView
    ImageView ivBg;
    @BindView
    ImageView ivMode;
    @BindView
    LinearLayout llBottom;
    @BindView
    RecyclerView recyclerView;
    @BindView
    TextView tvCancel;

    /* loaded from: classes3.dex */
    class a extends RecyclerView.Adapter<BaseViewHolder> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.modulars.chat.fragment.DoodleEditFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class View$OnClickListenerC0159a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f16944a;

            View$OnClickListenerC0159a(int i9) {
                this.f16944a = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!((ColorItemBean) DoodleEditFragment.this.f16936b.get(this.f16944a)).isSelect()) {
                    for (int i9 = 0; i9 < DoodleEditFragment.this.f16936b.size(); i9++) {
                        if (i9 != this.f16944a) {
                            ((ColorItemBean) DoodleEditFragment.this.f16936b.get(i9)).setSelect(false);
                        }
                    }
                    ((ColorItemBean) DoodleEditFragment.this.f16936b.get(this.f16944a)).setSelect(true);
                    if (DoodleEditFragment.this.f16942h) {
                        DoodleEditFragment doodleEditFragment = DoodleEditFragment.this;
                        doodleEditFragment.f16941g = doodleEditFragment.f16939e[this.f16944a];
                        GradientDrawable gradientDrawable = new GradientDrawable();
                        int dp2px = DensityUtil.dp2px(8.0f);
                        gradientDrawable.setColor(DoodleEditFragment.this.f16941g);
                        gradientDrawable.setCornerRadius(dp2px);
                        DoodleEditFragment.this.etText.setBackground(gradientDrawable);
                        int i10 = this.f16944a;
                        if (i10 == 2) {
                            DoodleEditFragment doodleEditFragment2 = DoodleEditFragment.this;
                            doodleEditFragment2.etText.setTextColor(doodleEditFragment2.f16939e[0]);
                            DoodleEditFragment doodleEditFragment3 = DoodleEditFragment.this;
                            doodleEditFragment3.f16938d = doodleEditFragment3.f16939e[0];
                        } else if (i10 == 0) {
                            DoodleEditFragment doodleEditFragment4 = DoodleEditFragment.this;
                            doodleEditFragment4.etText.setTextColor(doodleEditFragment4.f16939e[2]);
                            DoodleEditFragment doodleEditFragment5 = DoodleEditFragment.this;
                            doodleEditFragment5.f16938d = doodleEditFragment5.f16939e[2];
                        } else {
                            DoodleEditFragment doodleEditFragment6 = DoodleEditFragment.this;
                            doodleEditFragment6.etText.setTextColor(doodleEditFragment6.f16939e[0]);
                            DoodleEditFragment doodleEditFragment7 = DoodleEditFragment.this;
                            doodleEditFragment7.f16938d = doodleEditFragment7.f16939e[0];
                        }
                    } else {
                        DoodleEditFragment doodleEditFragment8 = DoodleEditFragment.this;
                        doodleEditFragment8.f16938d = doodleEditFragment8.f16939e[this.f16944a];
                        DoodleEditFragment doodleEditFragment9 = DoodleEditFragment.this;
                        doodleEditFragment9.etText.setTextColor(doodleEditFragment9.f16939e[this.f16944a]);
                    }
                }
                a.this.notifyDataSetChanged();
            }
        }

        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return DoodleEditFragment.this.f16936b.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            FrameLayout frameLayout = (FrameLayout) baseViewHolder.getView(R.id.fl_content);
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_select);
            ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.iv_color);
            ImageView imageView3 = (ImageView) baseViewHolder.getView(R.id.iv_mosaic);
            if (i9 == 0) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) frameLayout.getLayoutParams();
                marginLayoutParams.setMarginStart(0);
                frameLayout.setLayoutParams(marginLayoutParams);
            }
            if (((ColorItemBean) DoodleEditFragment.this.f16936b.get(i9)).isSelect()) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(4);
            }
            imageView3.setVisibility(4);
            imageView2.setVisibility(0);
            imageView2.setBackground(((ColorItemBean) DoodleEditFragment.this.f16936b.get(i9)).getDrawable());
            baseViewHolder.itemView.setOnClickListener(new View$OnClickListenerC0159a(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return new BaseViewHolder(DoodleEditFragment.this.getLayoutInflater().inflate(R.layout.list_item_color, viewGroup, false));
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(h hVar, String str, int i9, int i10);

        void hide();
    }

    public void V1(Drawable drawable) {
        com.bumptech.glide.c.x(getActivity()).m(drawable).Q0(this.ivBg);
        Z1(this.etText);
    }

    public void W1(h hVar) {
        this.f16937c = hVar;
        hVar.T(true);
        this.etText.setText(hVar.P());
        this.etText.setTextColor(hVar.Q());
        this.etText.setSelection(hVar.P().length());
        this.f16938d = hVar.Q();
        if (hVar.M() != 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            int dp2px = DensityUtil.dp2px(8.0f);
            gradientDrawable.setColor(hVar.M());
            gradientDrawable.setCornerRadius(dp2px);
            this.etText.setBackground(gradientDrawable);
            this.f16941g = hVar.M();
            int i9 = 0;
            while (true) {
                int[] iArr = this.f16939e;
                if (i9 < iArr.length) {
                    if (iArr[i9] == this.f16941g) {
                        this.f16936b.get(i9).setSelect(true);
                    } else {
                        this.f16936b.get(i9).setSelect(false);
                    }
                    i9++;
                } else {
                    this.f16942h = true;
                    return;
                }
            }
        } else {
            int i10 = 0;
            while (true) {
                int[] iArr2 = this.f16939e;
                if (i10 < iArr2.length) {
                    if (iArr2[i10] == this.f16938d) {
                        this.f16936b.get(i10).setSelect(true);
                    } else {
                        this.f16936b.get(i10).setSelect(false);
                    }
                    i10++;
                } else {
                    this.f16942h = false;
                    return;
                }
            }
        }
    }

    public void X1(b bVar) {
        this.f16940f = bVar;
    }

    public void Y1(int i9) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.llBottom.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.etText.getLayoutParams();
        int dpi = NavigationBarUtils.getDpi(getActivity()) + NavigationBarUtils.getBottomStatusHeight(getActivity());
        if (i9 == 0) {
            marginLayoutParams2.bottomMargin = dpi / 2;
        } else {
            marginLayoutParams2.bottomMargin = ((((dpi - DensityUtil.dp2px(56.0f)) - StatusBarHelper.getStatusbarHeight(getContext())) - i9) / 2) + i9;
        }
        this.etText.setLayoutParams(marginLayoutParams2);
        if (NavigationBarUtils.isPad(getActivity())) {
            marginLayoutParams.bottomMargin = i9 + NavigationBarUtils.getBottomStatusHeight(getActivity());
        } else if ("OPPO R11st".equals(SystemUtil.getSystemModel())) {
            marginLayoutParams.bottomMargin = i9;
        } else {
            marginLayoutParams.bottomMargin = i9 + (NavigationBarUtils.getBottomStatusHeight(getActivity()) / 2);
        }
        this.llBottom.setLayoutParams(marginLayoutParams);
    }

    public void Z1(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            view.requestFocus();
            inputMethodManager.showSoftInput(view, 0);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_text_doodle;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.f16936b = new ArrayList();
        this.etText.setTextColor(this.f16938d);
        for (int i9 = 0; i9 < this.f16939e.length; i9++) {
            ColorItemBean colorItemBean = new ColorItemBean();
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(DensityUtil.dp2px(3.0f));
            gradientDrawable.setStroke(DensityUtil.dp2px(1.0f), Color.parseColor("#ffffff"));
            gradientDrawable.setColor(this.f16939e[i9]);
            colorItemBean.setDrawable(gradientDrawable);
            if (i9 == 1) {
                colorItemBean.setSelect(true);
            } else {
                colorItemBean.setSelect(false);
            }
            this.f16936b.add(colorItemBean);
        }
        a aVar = new a();
        this.f16935a = aVar;
        this.recyclerView.setAdapter(aVar);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.complete) {
            this.f16940f.a(this.f16937c, this.etText.getText().toString(), this.f16938d, this.f16941g);
        } else if (id2 != R.id.iv_mode) {
            if (id2 != R.id.tv_cancel) {
                return;
            }
            this.f16940f.hide();
        } else if (this.f16942h) {
            this.etText.setTextColor(this.f16941g);
            this.f16941g = 0;
            this.etText.setBackground(null);
            this.f16942h = false;
            this.ivMode.setImageResource(R.mipmap.im_graffito_word);
        } else {
            int dp2px = DensityUtil.dp2px(8.0f);
            GradientDrawable gradientDrawable = new GradientDrawable();
            for (int i9 = 0; i9 < this.f16936b.size(); i9++) {
                if (this.f16936b.get(i9).isSelect()) {
                    if (i9 == 0) {
                        this.etText.setTextColor(this.f16939e[2]);
                        this.f16938d = this.f16939e[2];
                    } else {
                        this.etText.setTextColor(this.f16939e[0]);
                        this.f16938d = this.f16939e[0];
                    }
                    this.f16941g = this.f16939e[i9];
                }
            }
            gradientDrawable.setColor(this.f16941g);
            gradientDrawable.setCornerRadius(dp2px);
            this.etText.setBackground(gradientDrawable);
            this.f16942h = true;
            this.ivMode.setImageResource(R.mipmap.im_graffito_word_bj);
        }
    }
}
