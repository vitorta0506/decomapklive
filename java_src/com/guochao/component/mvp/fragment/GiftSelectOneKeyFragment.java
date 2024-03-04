package com.guochao.component.mvp.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatDialog;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.mvp.R$layout;
import com.guochao.component.mvp.R$mipmap;
import com.guochao.component.mvp.R$string;
import com.guochao.component.mvp.databinding.FragmentMvpSelectGiftOneKeyBinding;
import com.guochao.component.mvp.databinding.ItemGiftSelectBinding;
import com.guochao.component.mvp.model.GetRewardRequestModel;
import com.guochao.component.mvp.model.GiftModel;
import com.guochao.component.mvp.model.MVPInfoModel;
import com.guochao.component.mvp.model.TypeData;
import com.guochao.component.mvp.viewmodel.MVPUserInfoViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
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
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 ?2\u00020\u0001:\u0004?@ABB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u00101\u001a\u00020\u0006J\b\u00102\u001a\u000203H\u0016J \u00104\u001a\u00020\u00052\u0016\u00105\u001a\u0012\u0012\u0004\u0012\u00020706j\b\u0012\u0004\u0012\u000207`8H\u0002J\u001a\u00109\u001a\u00020\u00062\u0006\u0010:\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u00010=H\u0015J\u0012\u0010>\u001a\u00020\u00062\b\u0010<\u001a\u0004\u0018\u00010=H\u0016R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001e\u0010\u000b\u001a\u00060\fR\u00020\u0000X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u0017\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR$\u0010!\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001b\"\u0004\b#\u0010\u001dR$\u0010$\u001a\u00020%8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b&\u0010\u0002\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001b\u0010+\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b-\u0010.¨\u0006C"}, d2 = {"Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;", "Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;", "()V", "callBack", "Lkotlin/Function1;", "", "", "getCallBack", "()Lkotlin/jvm/functions/Function1;", "setCallBack", "(Lkotlin/jvm/functions/Function1;)V", "mAdapter", "Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;", "getMAdapter", "()Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;", "setMAdapter", "(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;)V", "mData", "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;", "getMData", "()Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;", "setMData", "(Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;)V", "multiGift", "", "Lcom/guochao/component/mvp/model/GiftModel;", "getMultiGift", "()Ljava/util/List;", "setMultiGift", "(Ljava/util/List;)V", "oneGift", "getOneGift", "setOneGift", "unGetGift", "getUnGetGift", "setUnGetGift", "viewBinding", "Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;", "setViewBinding", "(Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;)V", "viewModel", "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "getViewModel", "()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "checkButton", "createCenterDialog", "Landroidx/appcompat/app/AppCompatDialog;", "hasDressup", "dataList", "Ljava/util/ArrayList;", "Lcom/guochao/component/mvp/model/TypeData;", "Lkotlin/collections/ArrayList;", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "Companion", "GiftSelectAdapter", "GiftSelectViewHolder", "GiftSingleSelectAdapter", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GiftSelectOneKeyFragment extends FullWidthCenterFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Function1<? super Boolean, Unit> callBack;
    @NotNull
    private GiftSingleSelectAdapter mAdapter;
    @Nullable
    private MVPInfoModel.MvpRightsVo mData;
    @Nullable
    private List<GiftModel> multiGift;
    @Nullable
    private List<GiftModel> oneGift;
    @Nullable
    private List<GiftModel> unGetGift;
    public FragmentMvpSelectGiftOneKeyBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;", "data", "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final GiftSelectOneKeyFragment newInstance(@Nullable MVPInfoModel.MvpRightsVo mvpRightsVo) {
            GiftSelectOneKeyFragment giftSelectOneKeyFragment = new GiftSelectOneKeyFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable("data", mvpRightsVo);
            giftSelectOneKeyFragment.setArguments(bundle);
            return giftSelectOneKeyFragment;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/component/mvp/model/TypeData;", "Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectViewHolder;", "list", "", "(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Ljava/util/List;)V", "selectedPosition", "", "getSelectedPosition", "()I", "setSelectedPosition", "(I)V", "convert", "", "holder", BaseConfig.ITEM, "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class GiftSelectAdapter extends BaseQuickAdapter<TypeData, GiftSelectViewHolder> {
        private int selectedPosition;
        final /* synthetic */ GiftSelectOneKeyFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GiftSelectAdapter(@NotNull GiftSelectOneKeyFragment giftSelectOneKeyFragment, List<TypeData> list) {
            super(R$layout.item_gift_select, list);
            Intrinsics.checkNotNullParameter(list, "list");
            this.this$0 = giftSelectOneKeyFragment;
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
            GiftSelectOneKeyFragment giftSelectOneKeyFragment = this.this$0;
            viewBinding.bgFL.setSelected(item.getSelected());
            viewBinding.nameTV.setSelected(item.getSelected());
            if (item.getType() == 0) {
                viewBinding.imageView.setImageResource(R$mipmap.ic_mvp_diamond);
                viewBinding.nameTV.setText(giftSelectOneKeyFragment.getString(R$string.mvp_only_for_you_diamond));
                return;
            }
            com.bumptech.glide.c.v(viewBinding.imageView).r(item.getConfData()).m().Q0(viewBinding.imageView);
            viewBinding.nameTV.setText(item.getName());
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Landroid/view/View;)V", "viewBinding", "Lcom/guochao/component/mvp/databinding/ItemGiftSelectBinding;", "getViewBinding", "()Lcom/guochao/component/mvp/databinding/ItemGiftSelectBinding;", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
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

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/component/mvp/model/TypeData;", "Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectViewHolder;", "list", "", "(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Ljava/util/List;)V", "selectedPosition", "", "getSelectedPosition", "()I", "setSelectedPosition", "(I)V", "convert", "", "holder", BaseConfig.ITEM, "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class GiftSingleSelectAdapter extends BaseQuickAdapter<TypeData, GiftSelectViewHolder> {
        private int selectedPosition;
        final /* synthetic */ GiftSelectOneKeyFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GiftSingleSelectAdapter(@NotNull GiftSelectOneKeyFragment giftSelectOneKeyFragment, List<TypeData> list) {
            super(R$layout.item_gift_select, list);
            Intrinsics.checkNotNullParameter(list, "list");
            this.this$0 = giftSelectOneKeyFragment;
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
            GiftSelectOneKeyFragment giftSelectOneKeyFragment = this.this$0;
            viewBinding.bgFL.setSelected(item.getSelected());
            viewBinding.nameTV.setSelected(item.getSelected());
            int type = item.getType();
            if (type == 0) {
                viewBinding.imageView.setImageResource(R$mipmap.ic_mvp_diamond);
                viewBinding.nameTV.setText(giftSelectOneKeyFragment.getString(R$string.mvp_only_for_you_diamond));
            } else if (type == 1) {
                viewBinding.nameTV.setText(giftSelectOneKeyFragment.getString(R$string.mvp_get_title_tips_car));
                com.bumptech.glide.c.v(viewBinding.imageView).r(item.getConfData()).m().Q0(viewBinding.imageView);
            } else if (type == 2) {
                viewBinding.nameTV.setText(giftSelectOneKeyFragment.getString(R$string.mvp_get_title_tips_head));
                com.bumptech.glide.c.v(viewBinding.imageView).r(item.getConfData()).m().Q0(viewBinding.imageView);
            } else if (type == 3) {
                viewBinding.nameTV.setText(giftSelectOneKeyFragment.getString(R$string.i_want_to_charge_shade));
                com.bumptech.glide.c.v(viewBinding.imageView).r(item.getConfData()).m().Q0(viewBinding.imageView);
            } else if (type == 4) {
                viewBinding.nameTV.setText(giftSelectOneKeyFragment.getString(R$string.mvp_only_for_you_badge));
                com.bumptech.glide.c.v(viewBinding.imageView).r(item.getConfData()).m().Q0(viewBinding.imageView);
            } else if (type == 5) {
                viewBinding.nameTV.setText("");
                com.bumptech.glide.c.v(viewBinding.imageView).r(item.getConfData()).m().Q0(viewBinding.imageView);
            } else if (type != 8) {
                com.bumptech.glide.c.v(viewBinding.imageView).r(item.getConfData()).m().Q0(viewBinding.imageView);
                viewBinding.nameTV.setText(item.getName());
            } else {
                viewBinding.nameTV.setText("");
                com.bumptech.glide.c.v(viewBinding.imageView).r(item.getConfData()).m().Q0(viewBinding.imageView);
            }
        }
    }

    public GiftSelectOneKeyFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<MVPUserInfoViewModel>() { // from class: com.guochao.component.mvp.fragment.GiftSelectOneKeyFragment$special$$inlined$lazyViewModel$default$1
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
        this.mAdapter = new GiftSingleSelectAdapter(this, new ArrayList());
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final MVPUserInfoViewModel getViewModel() {
        return (MVPUserInfoViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:5:0x000a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean hasDressup(java.util.ArrayList<com.guochao.component.mvp.model.TypeData> r5) {
        /*
            r4 = this;
            java.util.Iterator r5 = r5.iterator()
        L4:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L2d
            java.lang.Object r0 = r5.next()
            com.guochao.component.mvp.model.TypeData r0 = (com.guochao.component.mvp.model.TypeData) r0
            int r1 = r0.getType()
            r2 = 1
            if (r1 == r2) goto L2c
            int r1 = r0.getType()
            r3 = 2
            if (r1 == r3) goto L2c
            int r1 = r0.getType()
            r3 = 3
            if (r1 == r3) goto L2c
            int r0 = r0.getType()
            r1 = 4
            if (r0 != r1) goto L4
        L2c:
            return r2
        L2d:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.mvp.fragment.GiftSelectOneKeyFragment.hasDressup(java.util.ArrayList):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m247initView$lambda0(GiftSelectOneKeyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m248initView$lambda1(GiftSelectOneKeyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-20$lambda-19$lambda-18  reason: not valid java name */
    public static final void m249initView$lambda20$lambda19$lambda18(GiftSelectAdapter adapter, GiftModel giftModel, GiftSelectOneKeyFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i9) {
        Intrinsics.checkNotNullParameter(adapter, "$adapter");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        adapter.setSelectedPosition(i9);
        for (TypeData typeData : adapter.getData()) {
            typeData.setSelected(false);
        }
        adapter.getItem(i9).setSelected(true);
        adapter.notifyDataSetChanged();
        giftModel.setSelected(i9);
        this$0.checkButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-8  reason: not valid java name */
    public static final void m250initView$lambda8(GiftSelectOneKeyFragment this$0, View view) {
        List<TypeData> typeDataList;
        Integer level;
        List<TypeData> typeDataList2;
        Integer level2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<GiftModel> list = this$0.oneGift;
        if (list != null) {
            for (GiftModel giftModel : list) {
                if (giftModel != null && (typeDataList2 = giftModel.getTypeDataList()) != null) {
                    for (TypeData typeData : typeDataList2) {
                        if (typeData.getSelected() || typeData.getType() == 0 || typeData.getType() == 4) {
                            int type = giftModel.getType();
                            MVPInfoModel.MvpRightsVo mvpRightsVo = this$0.mData;
                            int intValue = (mvpRightsVo == null || (level2 = mvpRightsVo.getLevel()) == null) ? -1 : level2.intValue();
                            String confData = typeData.getConfData();
                            Integer bussinessId = typeData.getBussinessId();
                            GetRewardRequestModel getRewardRequestModel = new GetRewardRequestModel(type, Integer.valueOf(intValue), bussinessId != null ? bussinessId.toString() : null, confData);
                            typeData.setType(giftModel.getType());
                            arrayList2.add(typeData);
                            arrayList.add(getRewardRequestModel);
                        }
                    }
                }
            }
        }
        List<GiftModel> list2 = this$0.multiGift;
        if (list2 != null) {
            for (GiftModel giftModel2 : list2) {
                boolean z10 = false;
                if (giftModel2 != null && giftModel2.getSelected() == -1) {
                    z10 = true;
                }
                if (z10) {
                    return;
                }
                if (giftModel2 != null && (typeDataList = giftModel2.getTypeDataList()) != null) {
                    for (TypeData typeData2 : typeDataList) {
                        if (typeData2.getSelected() || typeData2.getType() == 0 || typeData2.getType() == 4) {
                            int type2 = giftModel2.getType();
                            MVPInfoModel.MvpRightsVo mvpRightsVo2 = this$0.mData;
                            int intValue2 = (mvpRightsVo2 == null || (level = mvpRightsVo2.getLevel()) == null) ? -1 : level.intValue();
                            String confData2 = typeData2.getConfData();
                            Integer bussinessId2 = typeData2.getBussinessId();
                            GetRewardRequestModel getRewardRequestModel2 = new GetRewardRequestModel(type2, Integer.valueOf(intValue2), bussinessId2 != null ? bussinessId2.toString() : null, confData2);
                            typeData2.setType(giftModel2.getType());
                            arrayList2.add(typeData2);
                            arrayList.add(getRewardRequestModel2);
                        }
                    }
                }
            }
        }
        this$0.getViewModel().getReward(arrayList, new GiftSelectOneKeyFragment$initView$3$3(this$0, arrayList2, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-9  reason: not valid java name */
    public static final void m251initView$lambda9(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
    }

    @JvmStatic
    @NotNull
    public static final GiftSelectOneKeyFragment newInstance(@Nullable MVPInfoModel.MvpRightsVo mvpRightsVo) {
        return Companion.newInstance(mvpRightsVo);
    }

    public final void checkButton() {
        boolean z10;
        List<GiftModel> list = this.multiGift;
        if (list != null) {
            if (!(list != null && list.size() == 0)) {
                List<GiftModel> list2 = this.multiGift;
                Object obj = null;
                if (list2 != null) {
                    Iterator<T> it = list2.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Object next = it.next();
                        GiftModel giftModel = (GiftModel) next;
                        if (giftModel == null || giftModel.getSelected() != -1) {
                            z10 = false;
                            continue;
                        } else {
                            z10 = true;
                            continue;
                        }
                        if (z10) {
                            obj = next;
                            break;
                        }
                    }
                    obj = (GiftModel) obj;
                }
                getViewBinding().okTV.setEnabled(obj == null);
                return;
            }
        }
        getViewBinding().okTV.setEnabled(true);
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
    public final GiftSingleSelectAdapter getMAdapter() {
        return this.mAdapter;
    }

    @Nullable
    public final MVPInfoModel.MvpRightsVo getMData() {
        return this.mData;
    }

    @Nullable
    public final List<GiftModel> getMultiGift() {
        return this.multiGift;
    }

    @Nullable
    public final List<GiftModel> getOneGift() {
        return this.oneGift;
    }

    @Nullable
    public final List<GiftModel> getUnGetGift() {
        return this.unGetGift;
    }

    @NotNull
    public final FragmentMvpSelectGiftOneKeyBinding getViewBinding() {
        FragmentMvpSelectGiftOneKeyBinding fragmentMvpSelectGiftOneKeyBinding = this.viewBinding;
        if (fragmentMvpSelectGiftOneKeyBinding != null) {
            return fragmentMvpSelectGiftOneKeyBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0107 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x007b A[SYNTHETIC] */
    @Override // com.guochao.component.mvp.fragment.FullWidthCenterFragment, com.guochao.component.mvp.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initView(@org.jetbrains.annotations.NotNull android.view.View r13, @org.jetbrains.annotations.Nullable android.os.Bundle r14) {
        /*
            Method dump skipped, instructions count: 733
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.mvp.fragment.GiftSelectOneKeyFragment.initView(android.view.View, android.os.Bundle):void");
    }

    @Override // com.guochao.component.mvp.fragment.FullWidthCenterFragment, com.guochao.component.mvp.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
    }

    public final void setCallBack(@Nullable Function1<? super Boolean, Unit> function1) {
        this.callBack = function1;
    }

    public final void setMAdapter(@NotNull GiftSingleSelectAdapter giftSingleSelectAdapter) {
        Intrinsics.checkNotNullParameter(giftSingleSelectAdapter, "<set-?>");
        this.mAdapter = giftSingleSelectAdapter;
    }

    public final void setMData(@Nullable MVPInfoModel.MvpRightsVo mvpRightsVo) {
        this.mData = mvpRightsVo;
    }

    public final void setMultiGift(@Nullable List<GiftModel> list) {
        this.multiGift = list;
    }

    public final void setOneGift(@Nullable List<GiftModel> list) {
        this.oneGift = list;
    }

    public final void setUnGetGift(@Nullable List<GiftModel> list) {
        this.unGetGift = list;
    }

    public final void setViewBinding(@NotNull FragmentMvpSelectGiftOneKeyBinding fragmentMvpSelectGiftOneKeyBinding) {
        Intrinsics.checkNotNullParameter(fragmentMvpSelectGiftOneKeyBinding, "<set-?>");
        this.viewBinding = fragmentMvpSelectGiftOneKeyBinding;
    }
}
