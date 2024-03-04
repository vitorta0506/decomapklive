package com.guochao.component.mvp.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.component.mvp.R$layout;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.component.mvp.databinding.FragmentMvpListBinding;
import com.guochao.component.mvp.databinding.ItemGiftBinding;
import com.guochao.component.mvp.fragment.AnchorFreeTimeFragment;
import com.guochao.component.mvp.fragment.AnchorSetedToTopFragment;
import com.guochao.component.mvp.model.GetRewardRequestModel;
import com.guochao.component.mvp.model.GiftModel;
import com.guochao.component.mvp.model.MVPInfoModel;
import com.guochao.component.mvp.model.TypeData;
import com.guochao.component.mvp.viewmodel.MVPUserInfoViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 *2\u00020\u0001:\u0003*+,B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010$\u001a\u00020\fJ\u001a\u0010%\u001a\u00020\f2\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)H\u0014R \u0010\u0003\u001a\b\u0018\u00010\u0004R\u00020\u0000X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR(\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u0017\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0019\u0010\u0002\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001b\u0010\u001e\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b \u0010!¨\u0006-"}, d2 = {"Lcom/guochao/component/mvp/fragment/MVPListFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "adapter", "Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;", "getAdapter", "()Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;", "setAdapter", "(Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;)V", "callBack", "Lkotlin/Function1;", "", "", "getCallBack", "()Lkotlin/jvm/functions/Function1;", "setCallBack", "(Lkotlin/jvm/functions/Function1;)V", "mode", "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;", "getMode", "()Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;", "setMode", "(Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;)V", "viewBinding", "Lcom/guochao/component/mvp/databinding/FragmentMvpListBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/mvp/databinding/FragmentMvpListBinding;", "setViewBinding", "(Lcom/guochao/component/mvp/databinding/FragmentMvpListBinding;)V", "viewModel", "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "getViewModel", "()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "getAll", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "MVPListAdapter", "MVPListViewHolder", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MVPListFragment extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private MVPListAdapter adapter;
    @Nullable
    private Function1<? super Boolean, Unit> callBack;
    @Nullable
    private MVPInfoModel.MvpRightsVo mode;
    public FragmentMvpListBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lcom/guochao/component/mvp/fragment/MVPListFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/mvp/fragment/MVPListFragment;", "myMVPLevel", "", "mode", "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;", "(Ljava/lang/Integer;Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;)Lcom/guochao/component/mvp/fragment/MVPListFragment;", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final MVPListFragment newInstance(@Nullable Integer num, @Nullable MVPInfoModel.MvpRightsVo mvpRightsVo) {
            Bundle bundle = new Bundle();
            if (num != null) {
                bundle.putInt("myMVPLevel", num.intValue());
            }
            bundle.putParcelable(DeviceRequestsHelper.DEVICE_INFO_MODEL, mvpRightsVo);
            MVPListFragment mVPListFragment = new MVPListFragment();
            mVPListFragment.setArguments(bundle);
            return mVPListFragment;
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007¢\u0006\u0002\u0010\bJ\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0014J\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0002R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/component/mvp/model/GiftModel;", "Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;", "isShowButton", "", "list", "", "(Lcom/guochao/component/mvp/fragment/MVPListFragment;ZLjava/util/List;)V", "mIsShowButton", "convert", "", "holder", BaseConfig.ITEM, "isGet", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class MVPListAdapter extends BaseQuickAdapter<GiftModel, MVPListViewHolder> {
        private boolean mIsShowButton;
        final /* synthetic */ MVPListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MVPListAdapter(MVPListFragment mVPListFragment, @NotNull boolean z10, List<GiftModel> list) {
            super(R$layout.item_gift, list);
            Intrinsics.checkNotNullParameter(list, "list");
            this.this$0 = mVPListFragment;
            this.mIsShowButton = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: convert$lambda-1  reason: not valid java name */
        public static final void m255convert$lambda1(MVPListFragment this$0, GiftModel item, MVPListAdapter this$1, View view) {
            TypeData typeData;
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(item, "$item");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_receive_click);
            Function1<Boolean, Unit> callBack = this$0.getCallBack();
            if (callBack != null) {
                callBack.invoke(Boolean.TRUE);
            }
            MVPInfoModel.MvpRightsVo mode = this$0.getMode();
            Integer level = mode != null ? mode.getLevel() : null;
            List<TypeData> typeDataList = item.getTypeDataList();
            this$0.getViewModel().getReward(new GetRewardRequestModel(0, level, null, (typeDataList == null || (typeData = typeDataList.get(0)) == null) ? null : typeData.getConfData(), 4, null), new MVPListFragment$MVPListAdapter$convert$2$1(this$1, this$0, item, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: convert$lambda-4$lambda-3  reason: not valid java name */
        public static final void m256convert$lambda4$lambda3(final MVPListFragment this$0, final GiftModel item, final MVPListAdapter this$1, View view) {
            TypeData typeData;
            Integer bussinessId;
            TypeData typeData2;
            Integer level;
            Integer level2;
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(item, "$item");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_receive_click);
            Function1<Boolean, Unit> callBack = this$0.getCallBack();
            if (callBack != null) {
                callBack.invoke(Boolean.TRUE);
            }
            if (item.getTypeDataList() != null) {
                List<TypeData> typeDataList = item.getTypeDataList();
                if ((typeDataList != null ? typeDataList.size() : 0) > 1) {
                    MVPInfoModel.MvpRightsVo mode = this$0.getMode();
                    if (mode == null || (level2 = mode.getLevel()) == null) {
                        return;
                    }
                    GiftSelectFragment newInstance = GiftSelectFragment.Companion.newInstance(item.getType(), level2.intValue(), (ArrayList) item.getTypeDataList());
                    newInstance.setCallBack(new Function1<Boolean, Unit>() { // from class: com.guochao.component.mvp.fragment.MVPListFragment$MVPListAdapter$convert$3$1$1$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                            invoke(bool.booleanValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(boolean z10) {
                            List<TypeData> typeDataList2 = GiftModel.this.getTypeDataList();
                            TypeData typeData3 = typeDataList2 != null ? typeDataList2.get(0) : null;
                            if (typeData3 != null) {
                                typeData3.setStatus(2);
                            }
                            this$1.notifyDataSetChanged();
                            if (this$0.getActivity() instanceof MVPActivity) {
                                FragmentActivity activity = this$0.getActivity();
                                Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.component.mvp.activity.MVPActivity");
                                ((MVPActivity) activity).checkGetAll();
                            }
                        }
                    });
                    FragmentManager parentFragmentManager = this$0.getParentFragmentManager();
                    Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
                    newInstance.show(parentFragmentManager, "giftSelect");
                    return;
                }
            }
            int type = item.getType();
            MVPInfoModel.MvpRightsVo mode2 = this$0.getMode();
            int intValue = (mode2 == null || (level = mode2.getLevel()) == null) ? -1 : level.intValue();
            List<TypeData> typeDataList2 = item.getTypeDataList();
            String confData = (typeDataList2 == null || (typeData2 = typeDataList2.get(0)) == null) ? null : typeData2.getConfData();
            List<TypeData> typeDataList3 = item.getTypeDataList();
            this$0.getViewModel().getReward(new GetRewardRequestModel(type, Integer.valueOf(intValue), (typeDataList3 == null || (typeData = typeDataList3.get(0)) == null || (bussinessId = typeData.getBussinessId()) == null) ? null : bussinessId.toString(), confData), new MVPListFragment$MVPListAdapter$convert$3$1$2(item, this$0, this$1, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: convert$lambda-7$lambda-6  reason: not valid java name */
        public static final void m257convert$lambda7$lambda6(final MVPListFragment this$0, final GiftModel item, final Ref.ObjectRef count, final MVPListAdapter this$1, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(item, "$item");
            Intrinsics.checkNotNullParameter(count, "$count");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            AnchorFreeTimeFragment.Companion companion = AnchorFreeTimeFragment.Companion;
            MVPInfoModel.MvpRightsVo mode = this$0.getMode();
            AnchorFreeTimeFragment newInstance = companion.newInstance(mode != null ? mode.getLevel() : null);
            newInstance.setCallBack(new Function1<String, Unit>() { // from class: com.guochao.component.mvp.fragment.MVPListFragment$MVPListAdapter$convert$5$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                    invoke2(str);
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Code restructure failed: missing block: B:67:0x00db, code lost:
                    r0 = kotlin.text.StringsKt__StringsKt.split$default((java.lang.CharSequence) r3, new java.lang.String[]{","}, false, 0, 6, (java.lang.Object) null);
                 */
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke2(@org.jetbrains.annotations.NotNull java.lang.String r10) {
                    /*
                        Method dump skipped, instructions count: 314
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.mvp.fragment.MVPListFragment$MVPListAdapter$convert$5$1$1.invoke2(java.lang.String):void");
                }
            });
            FragmentManager parentFragmentManager = this$0.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
            newInstance.show(parentFragmentManager, "freeTime");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: convert$lambda-9$lambda-8  reason: not valid java name */
        public static final void m258convert$lambda9$lambda8(final MVPListFragment this$0, final GiftModel item, final Ref.ObjectRef count, final MVPListAdapter this$1, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(item, "$item");
            Intrinsics.checkNotNullParameter(count, "$count");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            AnchorSetedToTopFragment.Companion companion = AnchorSetedToTopFragment.Companion;
            MVPInfoModel.MvpRightsVo mode = this$0.getMode();
            AnchorSetedToTopFragment newInstance = companion.newInstance(mode != null ? mode.getLevel() : null);
            newInstance.setCallBack(new Function1<String, Unit>() { // from class: com.guochao.component.mvp.fragment.MVPListFragment$MVPListAdapter$convert$6$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                    invoke2(str);
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Code restructure failed: missing block: B:67:0x00db, code lost:
                    r0 = kotlin.text.StringsKt__StringsKt.split$default((java.lang.CharSequence) r3, new java.lang.String[]{","}, false, 0, 6, (java.lang.Object) null);
                 */
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke2(@org.jetbrains.annotations.NotNull java.lang.String r10) {
                    /*
                        Method dump skipped, instructions count: 314
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.mvp.fragment.MVPListFragment$MVPListAdapter$convert$6$1$1.invoke2(java.lang.String):void");
                }
            });
            FragmentManager parentFragmentManager = this$0.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
            newInstance.show(parentFragmentManager, "setTop");
        }

        public final boolean isGet(@NotNull GiftModel item) {
            Intrinsics.checkNotNullParameter(item, "item");
            List<TypeData> typeDataList = item.getTypeDataList();
            if (typeDataList != null) {
                for (TypeData typeData : typeDataList) {
                    Integer status = typeData.getStatus();
                    if (status != null && status.intValue() == 2) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x00cb, code lost:
            r10 = kotlin.text.StringsKt__StringsKt.split$default((java.lang.CharSequence) r12, new java.lang.String[]{","}, false, 0, 6, (java.lang.Object) null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x013e, code lost:
            r11 = kotlin.text.StringsKt__StringsKt.split$default((java.lang.CharSequence) r16, new java.lang.String[]{","}, false, 0, 6, (java.lang.Object) null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0189, code lost:
            r7 = kotlin.text.StringsKt__StringsKt.split$default((java.lang.CharSequence) r17, new java.lang.String[]{","}, false, 0, 6, (java.lang.Object) null);
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void convert(@org.jetbrains.annotations.NotNull com.guochao.component.mvp.fragment.MVPListFragment.MVPListViewHolder r24, @org.jetbrains.annotations.NotNull final com.guochao.component.mvp.model.GiftModel r25) {
            /*
                Method dump skipped, instructions count: 1332
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.mvp.fragment.MVPListFragment.MVPListAdapter.convert(com.guochao.component.mvp.fragment.MVPListFragment$MVPListViewHolder, com.guochao.component.mvp.model.GiftModel):void");
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Landroid/view/View;)V", "viewBinding", "Lcom/guochao/component/mvp/databinding/ItemGiftBinding;", "getViewBinding", "()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class MVPListViewHolder extends BaseViewHolder {
        @NotNull
        private final ItemGiftBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MVPListViewHolder(@NotNull View view) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            ItemGiftBinding bind = ItemGiftBinding.bind(view);
            Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
            this.viewBinding = bind;
        }

        @NotNull
        public final ItemGiftBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    public MVPListFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.guochao.component.mvp.fragment.MVPListFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Fragment invoke() {
                return Fragment.this;
            }
        };
        this.viewModel$delegate = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(MVPUserInfoViewModel.class), new Function0<ViewModelStore>() { // from class: com.guochao.component.mvp.fragment.MVPListFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelStore invoke() {
                ViewModelStore viewModelStore = ((ViewModelStoreOwner) Function0.this.invoke()).getViewModelStore();
                Intrinsics.checkNotNullExpressionValue(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, null);
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    @Nullable
    public final MVPListAdapter getAdapter() {
        return this.adapter;
    }

    public final void getAll() {
        List<GiftModel> data;
        List<TypeData> typeDataList;
        MVPListAdapter mVPListAdapter = this.adapter;
        if (mVPListAdapter != null && (data = mVPListAdapter.getData()) != null) {
            for (GiftModel giftModel : data) {
                if (giftModel.getType() != 7 && giftModel.getType() != 6 && (typeDataList = giftModel.getTypeDataList()) != null) {
                    for (TypeData typeData : typeDataList) {
                        typeData.setStatus(2);
                    }
                }
            }
        }
        MVPListAdapter mVPListAdapter2 = this.adapter;
        if (mVPListAdapter2 != null) {
            mVPListAdapter2.notifyDataSetChanged();
        }
    }

    @Nullable
    public final Function1<Boolean, Unit> getCallBack() {
        return this.callBack;
    }

    @Nullable
    public final MVPInfoModel.MvpRightsVo getMode() {
        return this.mode;
    }

    @NotNull
    public final FragmentMvpListBinding getViewBinding() {
        FragmentMvpListBinding fragmentMvpListBinding = this.viewBinding;
        if (fragmentMvpListBinding != null) {
            return fragmentMvpListBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @NotNull
    public final MVPUserInfoViewModel getViewModel() {
        return (MVPUserInfoViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Integer level;
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        Bundle arguments = getArguments();
        this.mode = arguments != null ? (MVPInfoModel.MvpRightsVo) arguments.getParcelable(DeviceRequestsHelper.DEVICE_INFO_MODEL) : null;
        Bundle arguments2 = getArguments();
        int i9 = arguments2 != null ? arguments2.getInt("myMVPLevel") : 0;
        MVPInfoModel.MvpRightsVo mvpRightsVo = this.mode;
        boolean z10 = i9 == ((mvpRightsVo == null || (level = mvpRightsVo.getLevel()) == null) ? 0 : level.intValue());
        MVPInfoModel.MvpRightsVo mvpRightsVo2 = this.mode;
        List<GiftModel> dataList = mvpRightsVo2 != null ? mvpRightsVo2.getDataList() : null;
        Intrinsics.checkNotNull(dataList, "null cannot be cast to non-null type kotlin.collections.MutableList<com.guochao.component.mvp.model.GiftModel>");
        this.adapter = new MVPListAdapter(this, z10, TypeIntrinsics.asMutableList(dataList));
        getViewBinding().recyclerView.setAdapter(this.adapter);
    }

    public final void setAdapter(@Nullable MVPListAdapter mVPListAdapter) {
        this.adapter = mVPListAdapter;
    }

    public final void setCallBack(@Nullable Function1<? super Boolean, Unit> function1) {
        this.callBack = function1;
    }

    public final void setMode(@Nullable MVPInfoModel.MvpRightsVo mvpRightsVo) {
        this.mode = mvpRightsVo;
    }

    public final void setViewBinding(@NotNull FragmentMvpListBinding fragmentMvpListBinding) {
        Intrinsics.checkNotNullParameter(fragmentMvpListBinding, "<set-?>");
        this.viewBinding = fragmentMvpListBinding;
    }
}
