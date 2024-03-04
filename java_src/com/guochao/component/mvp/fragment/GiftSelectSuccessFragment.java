package com.guochao.component.mvp.fragment;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.component.mvp.R$id;
import com.guochao.component.mvp.R$layout;
import com.guochao.component.mvp.R$mipmap;
import com.guochao.component.mvp.R$string;
import com.guochao.component.mvp.databinding.FragmentMvpSelectGiftSuccessBinding;
import com.guochao.component.mvp.model.TypeData;
import com.guochao.component.mvp.viewmodel.MVPUserInfoViewModel;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.adapter.BaseViewHolder;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0012\u0010\u001d\u001a\u00020\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR$\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001f"}, d2 = {"Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;", "Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;", "()V", "callBack", "Lkotlin/Function1;", "", "", "getCallBack", "()Lkotlin/jvm/functions/Function1;", "setCallBack", "(Lkotlin/jvm/functions/Function1;)V", "viewBinding", "Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;", "setViewBinding", "(Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftSuccessBinding;)V", "viewModel", "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "getViewModel", "()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "Companion", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GiftSelectSuccessFragment extends FullWidthCenterFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Function1<? super Boolean, Unit> callBack;
    public FragmentMvpSelectGiftSuccessBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0007¨\u0006\b"}, d2 = {"Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;", "data", "", "Lcom/guochao/component/mvp/model/TypeData;", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final GiftSelectSuccessFragment newInstance(@Nullable List<TypeData> list) {
            GiftSelectSuccessFragment giftSelectSuccessFragment = new GiftSelectSuccessFragment();
            Bundle bundle = new Bundle();
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            if (list != null) {
                for (TypeData typeData : list) {
                    if (typeData.getType() == 1 || typeData.getType() == 2 || typeData.getType() == 3 || typeData.getType() == 4) {
                        arrayList.add(typeData);
                    }
                }
            }
            bundle.putParcelableArrayList("data", arrayList);
            giftSelectSuccessFragment.setArguments(bundle);
            return giftSelectSuccessFragment;
        }
    }

    public GiftSelectSuccessFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<MVPUserInfoViewModel>() { // from class: com.guochao.component.mvp.fragment.GiftSelectSuccessFragment$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MVPUserInfoViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, MVPUserInfoViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(MVPUserInfoViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.component.mvp.viewmodel.MVPUserInfoViewModel");
                return (MVPUserInfoViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final MVPUserInfoViewModel getViewModel() {
        return (MVPUserInfoViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m252initView$lambda0(GiftSelectSuccessFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m253initView$lambda1(GiftSelectSuccessFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
        Function1<? super Boolean, Unit> function1 = this$0.callBack;
        if (function1 != null) {
            function1.invoke(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m254initView$lambda3(GiftSelectSuccessFragment this$0, ArrayList data, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(data, "$data");
        this$0.dismissAllowingStateLoss();
        Iterator it = data.iterator();
        while (it.hasNext()) {
            TypeData typeData = (TypeData) it.next();
            int type = typeData.getType();
            int i9 = -1;
            int i10 = 3;
            if (type == 1) {
                i9 = 2;
                i10 = 0;
            } else if (type == 2) {
                i9 = 1;
                i10 = 2;
            } else if (type == 3) {
                i9 = 3;
                i10 = 1;
            } else if (type != 4) {
                i10 = -1;
            } else {
                i9 = 4;
            }
            if (i9 == 4) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_use_click, String.valueOf(i10));
                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), null, null, new GiftSelectSuccessFragment$initView$3$1$1(this$0, null), 3, null);
            } else if (i9 > 0) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_use_click, String.valueOf(i10));
                new PostRequest(" tokens/user/info/setDressUp").D("dressUpId", String.valueOf(typeData.getBussinessId())).B("types", i9).L();
            }
        }
        Context context = this$0.getContext();
        String string = this$0.getString(R$string.common_do_success);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.common_do_success)");
        ToastUtils.showToast$default(context, string, 0, 0, 12, null);
    }

    @JvmStatic
    @NotNull
    public static final GiftSelectSuccessFragment newInstance(@Nullable List<TypeData> list) {
        return Companion.newInstance(list);
    }

    @Nullable
    public final Function1<Boolean, Unit> getCallBack() {
        return this.callBack;
    }

    @NotNull
    public final FragmentMvpSelectGiftSuccessBinding getViewBinding() {
        FragmentMvpSelectGiftSuccessBinding fragmentMvpSelectGiftSuccessBinding = this.viewBinding;
        if (fragmentMvpSelectGiftSuccessBinding != null) {
            return fragmentMvpSelectGiftSuccessBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.mvp.fragment.FullWidthCenterFragment, com.guochao.component.mvp.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        Bundle arguments = getArguments();
        final ArrayList parcelableArrayList = arguments != null ? arguments.getParcelableArrayList("data") : null;
        if (parcelableArrayList == null) {
            parcelableArrayList = new ArrayList();
        }
        ImageView imageView = getViewBinding().closeIV;
        Intrinsics.checkNotNullExpressionValue(imageView, "viewBinding.closeIV");
        ViewExtendsKt.onClick$default(imageView, 0L, new View.OnClickListener() { // from class: com.guochao.component.mvp.fragment.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GiftSelectSuccessFragment.m252initView$lambda0(GiftSelectSuccessFragment.this, view);
            }
        }, 1, null);
        TextView textView = getViewBinding().okTV;
        Intrinsics.checkNotNullExpressionValue(textView, "viewBinding.okTV");
        ViewExtendsKt.onClick$default(textView, 0L, new View.OnClickListener() { // from class: com.guochao.component.mvp.fragment.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GiftSelectSuccessFragment.m253initView$lambda1(GiftSelectSuccessFragment.this, view);
            }
        }, 1, null);
        TextView textView2 = getViewBinding().useTV;
        Intrinsics.checkNotNullExpressionValue(textView2, "viewBinding.useTV");
        ViewExtendsKt.onClick$default(textView2, 0L, new View.OnClickListener() { // from class: com.guochao.component.mvp.fragment.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GiftSelectSuccessFragment.m254initView$lambda3(GiftSelectSuccessFragment.this, parcelableArrayList, view);
            }
        }, 1, null);
        FragmentMvpSelectGiftSuccessBinding viewBinding = getViewBinding();
        int size = parcelableArrayList.size();
        if (size == 1) {
            View inflate = LayoutInflater.from(root.getContext()).inflate(R$layout.layout_get_gift_one, (ViewGroup) viewBinding.fragmentDataContainer, false);
            com.bumptech.glide.c.u(inflate.getContext()).r(((TypeData) parcelableArrayList.get(0)).getConfData()).m().Q0((ImageView) inflate.findViewById(R$id.imageView));
            ((TextView) inflate.findViewById(R$id.nameTV)).setText(((TypeData) parcelableArrayList.get(0)).getName());
            viewBinding.fragmentDataContainer.addView(inflate);
        } else if (size != 2) {
            View inflate2 = LayoutInflater.from(root.getContext()).inflate(R$layout.layout_get_gift_more, (ViewGroup) viewBinding.fragmentDataContainer, false);
            Intrinsics.checkNotNull(inflate2, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt = ((ViewGroup) inflate2).getChildAt(0);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
            RecyclerView recyclerView = (RecyclerView) childAt;
            ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.setMarginStart(DensityUtil.dp2px(12.0f));
            marginLayoutParams.setMarginEnd(DensityUtil.dp2px(12.0f));
            marginLayoutParams.bottomMargin = DensityUtil.dp2px(24.0f);
            recyclerView.setLayoutManager(new GridLayoutManager(recyclerView.getContext(), 3, 1, false));
            recyclerView.setAdapter(new RecyclerView.Adapter<BaseViewHolder>() { // from class: com.guochao.component.mvp.fragment.GiftSelectSuccessFragment$initView$4$3$2
                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemCount() {
                    return parcelableArrayList.size();
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
                    Intrinsics.checkNotNullParameter(holder, "holder");
                    ViewGroup.LayoutParams layoutParams2 = holder.itemView.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = i9 < 3 ? 0 : DensityUtil.dp2px(12.0f);
                    holder.itemView.setPadding(DensityUtil.dp2px(6.0f), 0, DensityUtil.dp2px(6.0f), 0);
                    View findViewById = holder.itemView.findViewById(R$id.imageView);
                    Intrinsics.checkNotNullExpressionValue(findViewById, "holder.itemView.findViewById(R.id.imageView)");
                    ImageView imageView2 = (ImageView) findViewById;
                    TypeData typeData = parcelableArrayList.get(i9);
                    Intrinsics.checkNotNullExpressionValue(typeData, "data[position]");
                    TypeData typeData2 = typeData;
                    TextView textView3 = (TextView) holder.getView(R$id.nameTV);
                    int type = typeData2.getType();
                    if (type == 0) {
                        imageView2.setImageResource(R$mipmap.ic_mvp_diamond);
                        if (textView3 == null) {
                            return;
                        }
                        textView3.setText(this.getString(R$string.mvp_only_for_you_diamond));
                    } else if (type == 1) {
                        if (textView3 != null) {
                            textView3.setText(this.getString(R$string.mvp_get_title_tips_car));
                        }
                        com.bumptech.glide.c.v(imageView2).r(typeData2.getConfData()).m().Q0(imageView2);
                    } else if (type == 2) {
                        if (textView3 != null) {
                            textView3.setText(this.getString(R$string.mvp_get_title_tips_head));
                        }
                        com.bumptech.glide.c.v(imageView2).r(typeData2.getConfData()).m().Q0(imageView2);
                    } else if (type == 3) {
                        if (textView3 != null) {
                            textView3.setText(this.getString(R$string.i_want_to_charge_shade));
                        }
                        com.bumptech.glide.c.v(imageView2).r(typeData2.getConfData()).m().Q0(imageView2);
                    } else if (type == 4) {
                        if (textView3 != null) {
                            textView3.setText(this.getString(R$string.mvp_only_for_you_badge));
                        }
                        com.bumptech.glide.c.v(imageView2).r(typeData2.getConfData()).m().Q0(imageView2);
                    } else if (type == 5) {
                        if (textView3 != null) {
                            textView3.setText(typeData2.getName());
                        }
                        com.bumptech.glide.c.v(imageView2).r(typeData2.getConfData()).m().Q0(imageView2);
                    } else if (type != 8) {
                        com.bumptech.glide.c.v(imageView2).r(typeData2.getConfData()).m().Q0(imageView2);
                        if (textView3 == null) {
                            return;
                        }
                        textView3.setText(typeData2.getName());
                    } else {
                        if (textView3 != null) {
                            textView3.setText(typeData2.getName());
                        }
                        com.bumptech.glide.c.v(imageView2).r(typeData2.getConfData()).m().Q0(imageView2);
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                @NotNull
                public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    return new BaseViewHolder(LayoutInflater.from(parent.getContext()).inflate(R$layout.item_get_gift_content, parent, false));
                }
            });
            viewBinding.fragmentDataContainer.addView(inflate2);
        } else {
            View inflate3 = LayoutInflater.from(root.getContext()).inflate(R$layout.layout_get_gift_two, (ViewGroup) viewBinding.fragmentDataContainer, false);
            Intrinsics.checkNotNull(inflate3, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) inflate3;
            View childAt2 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt2, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt3 = ((ViewGroup) childAt2).getChildAt(0);
            Intrinsics.checkNotNull(childAt3, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup2 = (ViewGroup) childAt3;
            View childAt4 = viewGroup.getChildAt(0);
            Intrinsics.checkNotNull(childAt4, "null cannot be cast to non-null type android.view.ViewGroup");
            View childAt5 = ((ViewGroup) childAt4).getChildAt(1);
            Intrinsics.checkNotNull(childAt5, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup3 = (ViewGroup) childAt5;
            int i9 = R$id.imageView;
            com.bumptech.glide.c.u(viewGroup2.getContext()).r(((TypeData) parcelableArrayList.get(0)).getConfData()).m().Q0((ImageView) viewGroup2.findViewById(i9));
            int i10 = R$id.nameTV;
            ((TextView) viewGroup2.findViewById(i10)).setText(((TypeData) parcelableArrayList.get(0)).getName());
            com.bumptech.glide.c.u(viewGroup3.getContext()).r(((TypeData) parcelableArrayList.get(1)).getConfData()).m().Q0((ImageView) viewGroup3.findViewById(i9));
            ((TextView) viewGroup3.findViewById(i10)).setText(((TypeData) parcelableArrayList.get(1)).getName());
            viewBinding.fragmentDataContainer.addView(inflate3);
        }
    }

    @Override // com.guochao.component.mvp.fragment.FullWidthCenterFragment, com.guochao.component.mvp.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
    }

    public final void setCallBack(@Nullable Function1<? super Boolean, Unit> function1) {
        this.callBack = function1;
    }

    public final void setViewBinding(@NotNull FragmentMvpSelectGiftSuccessBinding fragmentMvpSelectGiftSuccessBinding) {
        Intrinsics.checkNotNullParameter(fragmentMvpSelectGiftSuccessBinding, "<set-?>");
        this.viewBinding = fragmentMvpSelectGiftSuccessBinding;
    }
}
