package com.guochao.faceshow.signin.dialog;

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
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.adapter.BaseViewHolder;
import com.guochao.faceshow.signin.R$layout;
import com.guochao.faceshow.signin.R$mipmap;
import com.guochao.faceshow.signin.R$string;
import com.guochao.faceshow.signin.bean.GrowTaskBean;
import com.guochao.faceshow.signin.bean.RewardList;
import com.guochao.faceshow.signin.databinding.DialogGrowRewardBinding;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0002J\u001a\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\u0012\u0010 \u001a\u00020\u001a2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0012\u0010!\u001a\u00020\"2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010#\u001a\u00020\u001aH\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR+\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0014\u0010\u0002\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006%"}, d2 = {"Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "taskBean", "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;", "getTaskBean", "()Lcom/guochao/faceshow/signin/bean/GrowTaskBean;", "setTaskBean", "(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V", "<set-?>", "", "type", "getType", "()I", "setType", "(I)V", "type$delegate", "Lkotlin/properties/ReadWriteProperty;", "viewBinding", "Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;", "setViewBinding", "(Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;)V", "getTaskList", "", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "refreshRecyclerView", "Companion", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GrowRewardDialog extends GCCoreFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(GrowRewardDialog.class, "type", "getType()I", 0))};
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private GrowTaskBean taskBean;
    @NotNull
    private final ReadWriteProperty type$delegate = Delegates.INSTANCE.notNull();
    public DialogGrowRewardBinding viewBinding;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;", "", "()V", "showDialog", "Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "type", "", "taskBean", "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ GrowRewardDialog showDialog$default(Companion companion, FragmentManager fragmentManager, int i9, GrowTaskBean growTaskBean, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                growTaskBean = null;
            }
            return companion.showDialog(fragmentManager, i9, growTaskBean);
        }

        @JvmStatic
        @NotNull
        public final GrowRewardDialog showDialog(@NotNull FragmentManager fragmentManager, int i9, @Nullable GrowTaskBean growTaskBean) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            GrowRewardDialog growRewardDialog = new GrowRewardDialog();
            Bundle bundle = new Bundle();
            bundle.putInt("type", i9);
            bundle.putParcelable("GrowTaskBean", growTaskBean);
            growRewardDialog.setArguments(bundle);
            growRewardDialog.show(fragmentManager, GrowRewardDialog.class.getSimpleName());
            return growRewardDialog;
        }
    }

    private final void getTaskList() {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), Dispatchers.getMain(), null, new GrowRewardDialog$getTaskList$1(this, null), 2, null);
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m745initView$lambda0(GrowRewardDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m746initView$lambda1(GrowRewardDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshRecyclerView() {
        RecyclerView recyclerView = getViewBinding().rewardContent;
        View view = getView();
        recyclerView.setLayoutManager(new LinearLayoutManager(view != null ? view.getContext() : null));
        getViewBinding().rewardContent.setAdapter(new RecyclerView.Adapter<BaseViewHolder>() { // from class: com.guochao.faceshow.signin.dialog.GrowRewardDialog$refreshRecyclerView$1
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                List<RewardList> prizeVoList;
                GrowTaskBean taskBean = GrowRewardDialog.this.getTaskBean();
                if (taskBean == null || (prizeVoList = taskBean.getPrizeVoList()) == null) {
                    return 0;
                }
                return prizeVoList.size();
            }

            public final void setImageResource(@NotNull ImageView imageView, @NotNull RewardList rewardBean) {
                Intrinsics.checkNotNullParameter(imageView, "imageView");
                Intrinsics.checkNotNullParameter(rewardBean, "rewardBean");
                Integer prizeAttribute = rewardBean.getPrizeAttribute();
                if (prizeAttribute != null && prizeAttribute.intValue() == 0) {
                    imageView.setBackgroundResource(R$mipmap.gift_clip_light);
                    imageView.measure(0, 0);
                    int intValue = (((float) imageView.getMeasuredWidth()) / 8.0f > 0.0f ? Float.valueOf(imageView.getMeasuredWidth() / 8.0f) : Integer.valueOf(DensityUtil.dp2px(12.0f))).intValue();
                    imageView.setPadding(intValue, intValue, intValue, intValue);
                }
                Integer prizeType = rewardBean.getPrizeType();
                if (prizeType != null && prizeType.intValue() == 0) {
                    imageView.setImageResource(R$mipmap.icon_signin_fifth);
                } else if (prizeType != null && prizeType.intValue() == 1) {
                    imageView.setImageResource(R$mipmap.icon_signin_first);
                } else if (prizeType != null && prizeType.intValue() == 2) {
                    imageView.setImageResource(R$mipmap.icon_signin_shuijing);
                } else {
                    com.bumptech.glide.c.v(imageView).r(rewardBean.getRewardImg()).Q0(imageView);
                }
            }

            public final void setNumberText(@NotNull TextView textView, @Nullable RewardList rewardList) {
                Intrinsics.checkNotNullParameter(textView, "textView");
                if (rewardList != null) {
                    GrowRewardDialog growRewardDialog = GrowRewardDialog.this;
                    Integer prizeUseDay = rewardList.getPrizeUseDay();
                    int intValue = prizeUseDay != null ? prizeUseDay.intValue() : 1;
                    Integer prizeAttribute = rewardList.getPrizeAttribute();
                    if (prizeAttribute != null && prizeAttribute.intValue() == 1) {
                        Integer prizeType = rewardList.getPrizeType();
                        if (prizeType != null && prizeType.intValue() == 3) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append('x');
                            Integer prizeNum = rewardList.getPrizeNum();
                            sb2.append(prizeNum != null ? prizeNum.intValue() : 1);
                            textView.setText(sb2.toString());
                            return;
                        } else if (prizeType != null && prizeType.intValue() == 4) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append('x');
                            sb3.append(growRewardDialog.getString(intValue == 1 ? R$string.f_dress_day : R$string.f_dress_days, Integer.valueOf(intValue)));
                            textView.setText(sb3.toString());
                            return;
                        } else if (prizeType != null && prizeType.intValue() == 5) {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append('x');
                            sb4.append(growRewardDialog.getString(intValue == 1 ? R$string.f_dress_day : R$string.f_dress_days, Integer.valueOf(intValue)));
                            textView.setText(sb4.toString());
                            return;
                        } else if (prizeType != null && prizeType.intValue() == 6) {
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append('x');
                            sb5.append(growRewardDialog.getString(intValue == 1 ? R$string.f_dress_day : R$string.f_dress_days, Integer.valueOf(intValue)));
                            textView.setText(sb5.toString());
                            return;
                        } else {
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append('x');
                            Integer prizeNum2 = rewardList.getPrizeNum();
                            sb6.append(prizeNum2 != null ? prizeNum2.intValue() : 1);
                            textView.setText(sb6.toString());
                            return;
                        }
                    }
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append('x');
                    Integer prizeNum3 = rewardList.getPrizeNum();
                    sb7.append(prizeNum3 != null ? prizeNum3.intValue() : 1);
                    textView.setText(sb7.toString());
                }
            }

            public final void setTextName(@NotNull TextView textView, @NotNull RewardList rewardBean) {
                Intrinsics.checkNotNullParameter(textView, "textView");
                Intrinsics.checkNotNullParameter(rewardBean, "rewardBean");
                Integer prizeAttribute = rewardBean.getPrizeAttribute();
                if (prizeAttribute != null && prizeAttribute.intValue() == 0) {
                    Integer prizeType = rewardBean.getPrizeType();
                    if (prizeType != null && prizeType.intValue() == 3) {
                        textView.setText(GrowRewardDialog.this.getString(R$string.signin_task_gift_chips));
                        return;
                    } else if (prizeType != null && prizeType.intValue() == 4) {
                        textView.setText(GrowRewardDialog.this.getString(R$string.signin_task_touxiangkuang_chips));
                        return;
                    } else if (prizeType != null && prizeType.intValue() == 5) {
                        textView.setText(GrowRewardDialog.this.getString(R$string.signin_task_gongliao_chips));
                        return;
                    } else if (prizeType != null && prizeType.intValue() == 6) {
                        textView.setText(GrowRewardDialog.this.getString(R$string.signin_task_zuojia_chips));
                        return;
                    } else {
                        return;
                    }
                }
                Integer prizeType2 = rewardBean.getPrizeType();
                if (prizeType2 != null && prizeType2.intValue() == 0) {
                    textView.setText(GrowRewardDialog.this.getString(R$string.signin_perday_result_fifth));
                } else if (prizeType2 != null && prizeType2.intValue() == 1) {
                    textView.setText(GrowRewardDialog.this.getString(R$string.signin_reward_diamond));
                } else if (prizeType2 != null && prizeType2.intValue() == 2) {
                    textView.setText(GrowRewardDialog.this.getString(R$string.recharge_crystal));
                } else {
                    textView.setText(rewardBean.getRewardName());
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
                List<RewardList> prizeVoList;
                RewardList rewardList;
                List<RewardList> prizeVoList2;
                Intrinsics.checkNotNullParameter(holder, "holder");
                View view2 = holder.itemView;
                Intrinsics.checkNotNull(view2, "null cannot be cast to non-null type android.view.ViewGroup");
                View childAt = ((ViewGroup) view2).getChildAt(0);
                Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.view.ViewGroup");
                ViewGroup viewGroup = (ViewGroup) childAt;
                GrowRewardDialog growRewardDialog = GrowRewardDialog.this;
                View childAt2 = viewGroup.getChildAt(0);
                Intrinsics.checkNotNull(childAt2, "null cannot be cast to non-null type android.widget.ImageView");
                ImageView imageView = (ImageView) childAt2;
                View childAt3 = viewGroup.getChildAt(1);
                Intrinsics.checkNotNull(childAt3, "null cannot be cast to non-null type android.widget.TextView");
                TextView textView = (TextView) childAt3;
                View childAt4 = viewGroup.getChildAt(2);
                Intrinsics.checkNotNull(childAt4, "null cannot be cast to non-null type android.widget.TextView");
                TextView textView2 = (TextView) childAt4;
                GrowTaskBean taskBean = growRewardDialog.getTaskBean();
                setNumberText(textView2, (taskBean == null || (prizeVoList2 = taskBean.getPrizeVoList()) == null) ? null : prizeVoList2.get(i9));
                GrowTaskBean taskBean2 = growRewardDialog.getTaskBean();
                if (taskBean2 == null || (prizeVoList = taskBean2.getPrizeVoList()) == null || (rewardList = prizeVoList.get(i9)) == null) {
                    return;
                }
                setTextName(textView, rewardList);
                setImageResource(imageView, rewardList);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            @NotNull
            public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new BaseViewHolder(LayoutInflater.from(parent.getContext()).inflate(R$layout.item_grow_gift_bag, parent, false));
            }
        });
    }

    @JvmStatic
    @NotNull
    public static final GrowRewardDialog showDialog(@NotNull FragmentManager fragmentManager, int i9, @Nullable GrowTaskBean growTaskBean) {
        return Companion.showDialog(fragmentManager, i9, growTaskBean);
    }

    @Nullable
    public final GrowTaskBean getTaskBean() {
        return this.taskBean;
    }

    public final int getType() {
        return ((Number) this.type$delegate.getValue(this, $$delegatedProperties[0])).intValue();
    }

    @NotNull
    public final DialogGrowRewardBinding getViewBinding() {
        DialogGrowRewardBinding dialogGrowRewardBinding = this.viewBinding;
        if (dialogGrowRewardBinding != null) {
            return dialogGrowRewardBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        Bundle arguments = getArguments();
        setType(arguments != null ? arguments.getInt("type", 0) : 0);
        Bundle arguments2 = getArguments();
        GrowTaskBean growTaskBean = arguments2 != null ? (GrowTaskBean) arguments2.getParcelable("GrowTaskBean") : null;
        this.taskBean = growTaskBean;
        if (growTaskBean == null) {
            getTaskList();
        } else {
            refreshRecyclerView();
        }
        getViewBinding().ivTitle.setText(getString(getType() == 0 ? R$string.signin_grow_gift_bag : R$string.signin_task_reward));
        getViewBinding().startSignin.setText(getString(getType() == 0 ? R$string.signin_goto_do_task : R$string.lottery_i_know));
        getViewBinding().startSignin.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.dialog.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GrowRewardDialog.m745initView$lambda0(GrowRewardDialog.this, view);
            }
        });
        getViewBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.dialog.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GrowRewardDialog.m746initView$lambda1(GrowRewardDialog.this, view);
            }
        });
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

    public final void setTaskBean(@Nullable GrowTaskBean growTaskBean) {
        this.taskBean = growTaskBean;
    }

    public final void setType(int i9) {
        this.type$delegate.setValue(this, $$delegatedProperties[0], Integer.valueOf(i9));
    }

    public final void setViewBinding(@NotNull DialogGrowRewardBinding dialogGrowRewardBinding) {
        Intrinsics.checkNotNullParameter(dialogGrowRewardBinding, "<set-?>");
        this.viewBinding = dialogGrowRewardBinding;
    }
}
