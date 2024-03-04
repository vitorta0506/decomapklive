package com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.beans.FirstChargeGiftBean;
import com.guochao.faceshow.databinding.DialogFirstRechargeResultBinding;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0004\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0012\u0010\u0010\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0013\u001a\u00020\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001a\u0010\u0018\u001a\u00020\u000b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001a\u0010\u001b\u001a\u00020\u000b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0016\u0010\u001c\u001a\u00020\u000b2\u000e\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u001eJ\u0014\u0010\u001f\u001a\u00020\u000b2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00170\u001eJ\u0014\u0010 \u001a\u00020\u000b2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00170\u001eR$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\""}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "viewBinding", "Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/DialogFirstRechargeResultBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "setImageResouse", "imageView", "Landroid/widget/ImageView;", "giftBean", "Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;", "setTextView", "textView", "Landroid/widget/TextView;", "setTextViewCount", "showMoreContent", "datas", "", "showOneContent", "showTwoContent", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FirstRechargeResultDialog extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public DialogFirstRechargeResultBinding viewBinding;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$Companion;", "", "()V", "showDialog", "", "fm", "Landroidx/fragment/app/FragmentManager;", "firstChargeGiftBean", "Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void showDialog(@NotNull FragmentManager fm, @NotNull FirstChargeGiftBean firstChargeGiftBean) {
            Intrinsics.checkNotNullParameter(fm, "fm");
            Intrinsics.checkNotNullParameter(firstChargeGiftBean, "firstChargeGiftBean");
            FirstRechargeResultDialog firstRechargeResultDialog = new FirstRechargeResultDialog();
            Bundle bundle = new Bundle();
            bundle.putParcelable("firstChargeGiftBean", firstChargeGiftBean);
            firstRechargeResultDialog.setArguments(bundle);
            firstRechargeResultDialog.show(fm, FirstRechargeResultDialog.class.getSimpleName());
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m420initView$lambda0(FirstRechargeResultDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m421initView$lambda1(FirstRechargeResultDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setImageResouse(ImageView imageView, FirstChargeGiftBean.ItemBean itemBean) {
        int type = itemBean.getType();
        if (type == 0) {
            if (imageView != null) {
                imageView.setImageResource(R.mipmap.icon_recharge_exp);
            }
        } else if (type == 1) {
            if (imageView != null) {
                imageView.setImageResource(R.mipmap.icon_game_diamond);
            }
        } else if (type != 2) {
            hc.a.k(imageView, itemBean.getUrl(), false);
        } else if (imageView != null) {
            imageView.setImageResource(R.mipmap.icon_game_shuijing);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTextView(TextView textView, FirstChargeGiftBean.ItemBean itemBean) {
        int type = itemBean.getType();
        if (type == 0) {
            if (textView == null) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getString(R.string.signin_perday_result_fifth));
            sb2.append('x');
            int num = itemBean.getNum();
            if (num == null) {
                num = 1;
            }
            sb2.append(num);
            textView.setText(sb2.toString());
        } else if (type == 1) {
            if (textView == null) {
                return;
            }
            textView.setText(getString(R.string.i_want_to_charge_diamonds));
        } else if (type == 2) {
            if (textView == null) {
                return;
            }
            textView.setText(getString(R.string.recharge_crystal));
        } else if (textView == null) {
        } else {
            String name = itemBean.getName();
            if (name == null) {
                name = "";
            }
            if (name.length() == 0) {
                name = getString(R.string.muser_center_report_tenth);
                Intrinsics.checkNotNullExpressionValue(name, "getString(R.string.muser_center_report_tenth)");
            }
            textView.setText(name);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTextViewCount(TextView textView, FirstChargeGiftBean.ItemBean itemBean) {
        if (textView == null) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('x');
        int num = itemBean.getNum();
        if (num == null) {
            num = 1;
        }
        sb2.append(num);
        textView.setText(sb2.toString());
    }

    @JvmStatic
    public static final void showDialog(@NotNull FragmentManager fragmentManager, @NotNull FirstChargeGiftBean firstChargeGiftBean) {
        Companion.showDialog(fragmentManager, firstChargeGiftBean);
    }

    @NotNull
    public final DialogFirstRechargeResultBinding getViewBinding() {
        DialogFirstRechargeResultBinding dialogFirstRechargeResultBinding = this.viewBinding;
        if (dialogFirstRechargeResultBinding != null) {
            return dialogFirstRechargeResultBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        List<FirstChargeGiftBean.ItemBean> datas;
        List<FirstChargeGiftBean.ItemBean> datas2;
        List<FirstChargeGiftBean.ItemBean> datas3;
        List<FirstChargeGiftBean.ItemBean> datas4;
        List<FirstChargeGiftBean.ItemBean> datas5;
        Intrinsics.checkNotNullParameter(root, "root");
        getViewBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FirstRechargeResultDialog.m420initView$lambda0(FirstRechargeResultDialog.this, view);
            }
        });
        getViewBinding().tvIKnow.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FirstRechargeResultDialog.m421initView$lambda1(FirstRechargeResultDialog.this, view);
            }
        });
        Bundle arguments = getArguments();
        Integer num = null;
        FirstChargeGiftBean firstChargeGiftBean = arguments != null ? (FirstChargeGiftBean) arguments.getParcelable("firstChargeGiftBean") : null;
        if (((firstChargeGiftBean == null || (datas5 = firstChargeGiftBean.getDatas()) == null) ? 0 : datas5.size()) >= 7) {
            getViewBinding().fragmentContent.getLayoutParams().height = DensityUtil.dp2px(300.0f);
            ViewGroup.LayoutParams layoutParams = getViewBinding().fragmentContent.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = DensityUtil.dp2px(10.0f);
        }
        if (firstChargeGiftBean != null && (datas4 = firstChargeGiftBean.getDatas()) != null) {
            num = Integer.valueOf(datas4.size());
        }
        if (num != null && num.intValue() == 0) {
            return;
        }
        if (num != null && num.intValue() == 1) {
            if (firstChargeGiftBean == null || (datas3 = firstChargeGiftBean.getDatas()) == null) {
                return;
            }
            showOneContent(datas3);
        } else if (num != null && num.intValue() == 2) {
            if (firstChargeGiftBean == null || (datas2 = firstChargeGiftBean.getDatas()) == null) {
                return;
            }
            showTwoContent(datas2);
        } else if (firstChargeGiftBean == null || (datas = firstChargeGiftBean.getDatas()) == null) {
        } else {
            showMoreContent(datas);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        AppCompatDialog createCenterDialog = createCenterDialog();
        Window window = createCenterDialog.getWindow();
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes != null) {
            attributes.width = -1;
        }
        if (window != null) {
            window.setAttributes(attributes);
        }
        return createCenterDialog;
    }

    public final void setViewBinding(@NotNull DialogFirstRechargeResultBinding dialogFirstRechargeResultBinding) {
        Intrinsics.checkNotNullParameter(dialogFirstRechargeResultBinding, "<set-?>");
        this.viewBinding = dialogFirstRechargeResultBinding;
    }

    public final void showMoreContent(@NotNull final List<FirstChargeGiftBean.ItemBean> datas) {
        Intrinsics.checkNotNullParameter(datas, "datas");
        datas.add(null);
        ViewGroup.LayoutParams layoutParams = getViewBinding().fragmentContent.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginStart(marginLayoutParams.getMarginStart() - DensityUtil.dp2px(7.5f));
        marginLayoutParams.setMarginEnd(marginLayoutParams.getMarginEnd() - DensityUtil.dp2px(7.5f));
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(getContext()).inflate(R.layout.layout_recharge_result_more, (ViewGroup) getViewBinding().fragmentContent, true).findViewById(R.id.recycler_view);
        final GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 3, 1, false);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeResultDialog$showMoreContent$2$1
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i9) {
                if (i9 == datas.size() - 1) {
                    return gridLayoutManager.getSpanCount();
                }
                return 1;
            }
        });
        recyclerView.setLayoutManager(gridLayoutManager);
        recyclerView.setAdapter(new RecyclerView.Adapter<BaseViewHolder>() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeResultDialog$showMoreContent$3
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return datas.size();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i9) {
                if (i9 == datas.size() - 1) {
                    return 1001;
                }
                return super.getItemViewType(i9);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (i9 == datas.size() - 1) {
                    return;
                }
                if (i9 < 3) {
                    ViewGroup.LayoutParams layoutParams2 = holder.itemView.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = DensityUtil.dp2px(0.0f);
                } else {
                    ViewGroup.LayoutParams layoutParams3 = holder.itemView.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin = DensityUtil.dp2px(18.0f);
                }
                holder.itemView.setPadding(DensityUtil.dp2px(7.5f), 0, DensityUtil.dp2px(7.5f), 0);
                FirstChargeGiftBean.ItemBean itemBean = datas.get(i9);
                if (itemBean != null) {
                    FirstRechargeResultDialog firstRechargeResultDialog = this;
                    firstRechargeResultDialog.setImageResouse((ImageView) holder.itemView.findViewById(R.id.image_view), itemBean);
                    firstRechargeResultDialog.setTextView((TextView) holder.itemView.findViewById(R.id.text_view), itemBean);
                    firstRechargeResultDialog.setTextViewCount((TextView) holder.itemView.findViewById(R.id.tv_count), itemBean);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            @NotNull
            public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
                Intrinsics.checkNotNullParameter(parent, "parent");
                if (i9 == 1001) {
                    return new BaseViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_recharge_result_more_footer, parent, false));
                }
                return new BaseViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_first_recharge_result_content, parent, false));
            }
        });
    }

    public final void showOneContent(@NotNull List<FirstChargeGiftBean.ItemBean> datas) {
        Intrinsics.checkNotNullParameter(datas, "datas");
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_recharge_result_one, (ViewGroup) getViewBinding().fragmentContent, true);
        setImageResouse((ImageView) inflate.findViewById(R.id.image_view), datas.get(0));
        setTextView((TextView) inflate.findViewById(R.id.text_view), datas.get(0));
        setTextViewCount((TextView) inflate.findViewById(R.id.tv_count), datas.get(0));
    }

    public final void showTwoContent(@NotNull List<FirstChargeGiftBean.ItemBean> datas) {
        Intrinsics.checkNotNullParameter(datas, "datas");
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_recharge_result_two, (ViewGroup) getViewBinding().fragmentContent, true);
        setImageResouse((ImageView) inflate.findViewById(R.id.item_first).findViewById(R.id.image_view), datas.get(0));
        setTextView((TextView) inflate.findViewById(R.id.item_first).findViewById(R.id.text_view), datas.get(0));
        setTextViewCount((TextView) inflate.findViewById(R.id.item_first).findViewById(R.id.tv_count), datas.get(0));
        setImageResouse((ImageView) inflate.findViewById(R.id.item_second).findViewById(R.id.image_view), datas.get(1));
        setTextView((TextView) inflate.findViewById(R.id.item_second).findViewById(R.id.text_view), datas.get(1));
        setTextViewCount((TextView) inflate.findViewById(R.id.item_second).findViewById(R.id.tv_count), datas.get(1));
    }
}
