package com.guochao.component.mvp.fragment;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.GridLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.mvp.R$layout;
import com.guochao.component.mvp.R$string;
import com.guochao.component.mvp.databinding.FragmentMvpSelectGiftBinding;
import com.guochao.component.mvp.databinding.ItemGiftSelectBinding;
import com.guochao.component.mvp.model.GetRewardRequestModel;
import com.guochao.component.mvp.model.TypeData;
import com.guochao.component.mvp.viewmodel.MVPUserInfoViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.utils.BaseConfig;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 &2\u00020\u0001:\u0003&'(B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\u001a\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0015J\u0012\u0010%\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010$H\u0016R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001e\u0010\u000b\u001a\u00060\fR\u00020\u0000X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001a\u0010\u001b¨\u0006)"}, d2 = {"Lcom/guochao/component/mvp/fragment/GiftSelectFragment;", "Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;", "()V", "callBack", "Lkotlin/Function1;", "", "", "getCallBack", "()Lkotlin/jvm/functions/Function1;", "setCallBack", "(Lkotlin/jvm/functions/Function1;)V", "mAdapter", "Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;", "getMAdapter", "()Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;", "setMAdapter", "(Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;)V", "viewBinding", "Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;", "setViewBinding", "(Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftBinding;)V", "viewModel", "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "getViewModel", "()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "createCenterDialog", "Landroidx/appcompat/app/AppCompatDialog;", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "Companion", "GiftSelectAdapter", "GiftSelectViewHolder", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GiftSelectFragment extends FullWidthCenterFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Function1<? super Boolean, Unit> callBack;
    @NotNull
    private GiftSelectAdapter mAdapter;
    public FragmentMvpSelectGiftBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0007¨\u0006\u000b"}, d2 = {"Lcom/guochao/component/mvp/fragment/GiftSelectFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/mvp/fragment/GiftSelectFragment;", "type", "", "level", "list", "Ljava/util/ArrayList;", "Lcom/guochao/component/mvp/model/TypeData;", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final GiftSelectFragment newInstance(int i9, int i10, @Nullable ArrayList<TypeData> arrayList) {
            GiftSelectFragment giftSelectFragment = new GiftSelectFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("type", i9);
            if (arrayList != null) {
                for (TypeData typeData : arrayList) {
                    typeData.setType(i9);
                }
            }
            bundle.putInt("level", i10);
            if (arrayList != null) {
                bundle.putParcelableArrayList("list", arrayList);
            }
            giftSelectFragment.setArguments(bundle);
            return giftSelectFragment;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/component/mvp/model/TypeData;", "Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectViewHolder;", "list", "", "(Lcom/guochao/component/mvp/fragment/GiftSelectFragment;Ljava/util/List;)V", "selectedPosition", "", "getSelectedPosition", "()I", "setSelectedPosition", "(I)V", "convert", "", "holder", BaseConfig.ITEM, "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class GiftSelectAdapter extends BaseQuickAdapter<TypeData, GiftSelectViewHolder> {
        private int selectedPosition;
        final /* synthetic */ GiftSelectFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GiftSelectAdapter(@NotNull GiftSelectFragment giftSelectFragment, List<TypeData> list) {
            super(R$layout.item_gift_select, list);
            Intrinsics.checkNotNullParameter(list, "list");
            this.this$0 = giftSelectFragment;
            this.selectedPosition = -1;
        }

        public final int getSelectedPosition() {
            return this.selectedPosition;
        }

        public final void setSelectedPosition(int i9) {
            this.selectedPosition = i9;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NotNull GiftSelectViewHolder holder, @NotNull TypeData item) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            Intrinsics.checkNotNullParameter(item, "item");
            ItemGiftSelectBinding viewBinding = holder.getViewBinding();
            viewBinding.bgFL.setSelected(item.getSelected());
            viewBinding.nameTV.setSelected(item.getSelected());
            com.bumptech.glide.c.v(viewBinding.imageView).r(item.getConfData()).Q0(viewBinding.imageView);
            viewBinding.nameTV.setText(item.getName());
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/guochao/component/mvp/fragment/GiftSelectFragment$GiftSelectViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Landroid/view/View;)V", "viewBinding", "Lcom/guochao/component/mvp/databinding/ItemGiftSelectBinding;", "getViewBinding", "()Lcom/guochao/component/mvp/databinding/ItemGiftSelectBinding;", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class GiftSelectViewHolder extends BaseViewHolder {
        @NotNull
        private final ItemGiftSelectBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GiftSelectViewHolder(@NotNull View view) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            ItemGiftSelectBinding bind = ItemGiftSelectBinding.bind(view);
            Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
            this.viewBinding = bind;
        }

        @NotNull
        public final ItemGiftSelectBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    public GiftSelectFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<MVPUserInfoViewModel>() { // from class: com.guochao.component.mvp.fragment.GiftSelectFragment$special$$inlined$lazyViewModel$default$1
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
        this.mAdapter = new GiftSelectAdapter(this, new ArrayList());
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final MVPUserInfoViewModel getViewModel() {
        return (MVPUserInfoViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m244initView$lambda0(GiftSelectFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m245initView$lambda1(GiftSelectFragment this$0, View view) {
        Integer bussinessId;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Bundle arguments = this$0.getArguments();
        int i9 = arguments != null ? arguments.getInt("type") : -1;
        Bundle arguments2 = this$0.getArguments();
        int i10 = arguments2 != null ? arguments2.getInt("level") : -1;
        GiftSelectAdapter giftSelectAdapter = this$0.mAdapter;
        TypeData item = giftSelectAdapter.getItem(giftSelectAdapter.getSelectedPosition());
        String confData = item != null ? item.getConfData() : null;
        GiftSelectAdapter giftSelectAdapter2 = this$0.mAdapter;
        TypeData item2 = giftSelectAdapter2.getItem(giftSelectAdapter2.getSelectedPosition());
        this$0.getViewModel().getReward(new GetRewardRequestModel(i9, Integer.valueOf(i10), (item2 == null || (bussinessId = item2.getBussinessId()) == null) ? null : bussinessId.toString(), confData), new GiftSelectFragment$initView$2$1(this$0, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m246initView$lambda3(GiftSelectFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.mAdapter.setSelectedPosition(i9);
        for (TypeData typeData : this$0.mAdapter.getData()) {
            typeData.setSelected(false);
        }
        this$0.mAdapter.getItem(i9).setSelected(true);
        this$0.mAdapter.notifyDataSetChanged();
        this$0.getViewBinding().okTV.setEnabled(true);
    }

    @JvmStatic
    @NotNull
    public static final GiftSelectFragment newInstance(int i9, int i10, @Nullable ArrayList<TypeData> arrayList) {
        return Companion.newInstance(i9, i10, arrayList);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    @NotNull
    public AppCompatDialog createCenterDialog() {
        return createCenterDialog();
    }

    @Nullable
    public final Function1<Boolean, Unit> getCallBack() {
        return this.callBack;
    }

    @NotNull
    public final GiftSelectAdapter getMAdapter() {
        return this.mAdapter;
    }

    @NotNull
    public final FragmentMvpSelectGiftBinding getViewBinding() {
        FragmentMvpSelectGiftBinding fragmentMvpSelectGiftBinding = this.viewBinding;
        if (fragmentMvpSelectGiftBinding != null) {
            return fragmentMvpSelectGiftBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.mvp.fragment.FullWidthCenterFragment, com.guochao.component.mvp.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        ImageView imageView = getViewBinding().closeIV;
        Intrinsics.checkNotNullExpressionValue(imageView, "viewBinding.closeIV");
        ViewExtendsKt.onClick$default(imageView, 0L, new View.OnClickListener() { // from class: com.guochao.component.mvp.fragment.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GiftSelectFragment.m244initView$lambda0(GiftSelectFragment.this, view);
            }
        }, 1, null);
        TextView textView = getViewBinding().okTV;
        Intrinsics.checkNotNullExpressionValue(textView, "viewBinding.okTV");
        ViewExtendsKt.onClick$default(textView, 0L, new View.OnClickListener() { // from class: com.guochao.component.mvp.fragment.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GiftSelectFragment.m245initView$lambda1(GiftSelectFragment.this, view);
            }
        }, 1, null);
        this.mAdapter.setOnItemClickListener(new x0.f() { // from class: com.guochao.component.mvp.fragment.l
            @Override // x0.f
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                GiftSelectFragment.m246initView$lambda3(GiftSelectFragment.this, baseQuickAdapter, view, i9);
            }
        });
        FragmentMvpSelectGiftBinding viewBinding = getViewBinding();
        Bundle arguments = getArguments();
        Integer num = null;
        ArrayList parcelableArrayList = arguments != null ? arguments.getParcelableArrayList("list") : null;
        if ((parcelableArrayList != null ? parcelableArrayList.size() : 0) >= 3) {
            viewBinding.recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 3));
        } else {
            viewBinding.recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 2));
        }
        if (parcelableArrayList != null) {
            Iterator it = parcelableArrayList.iterator();
            int i9 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i9 = -1;
                    break;
                } else if (((TypeData) it.next()).getSelected()) {
                    break;
                } else {
                    i9++;
                }
            }
            num = Integer.valueOf(i9);
        }
        if (num != null && num.intValue() != -1) {
            this.mAdapter.setSelectedPosition(num.intValue());
            getViewBinding().okTV.setEnabled(true);
        }
        this.mAdapter.setNewInstance(parcelableArrayList);
        viewBinding.recyclerView.setAdapter(this.mAdapter);
        Bundle arguments2 = getArguments();
        int i10 = arguments2 != null ? arguments2.getInt("type") : -1;
        if (i10 == 1) {
            viewBinding.titleTV.setText(getString(R$string.mvp_gift_select_title_something, getString(R$string.i_want_to_charge_car)));
        } else if (i10 == 2) {
            viewBinding.titleTV.setText(getString(R$string.mvp_gift_select_title_something, getString(R$string.i_want_to_charge_avatar)));
        } else if (i10 != 3) {
        } else {
            viewBinding.titleTV.setText(getString(R$string.mvp_gift_select_title_something, getString(R$string.i_want_to_charge_shade)));
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

    public final void setMAdapter(@NotNull GiftSelectAdapter giftSelectAdapter) {
        Intrinsics.checkNotNullParameter(giftSelectAdapter, "<set-?>");
        this.mAdapter = giftSelectAdapter;
    }

    public final void setViewBinding(@NotNull FragmentMvpSelectGiftBinding fragmentMvpSelectGiftBinding) {
        Intrinsics.checkNotNullParameter(fragmentMvpSelectGiftBinding, "<set-?>");
        this.viewBinding = fragmentMvpSelectGiftBinding;
    }
}
