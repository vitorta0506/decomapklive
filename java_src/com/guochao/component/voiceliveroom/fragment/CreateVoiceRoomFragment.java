package com.guochao.component.voiceliveroom.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.RecyclerView;
import com.beloo.widget.chipslayoutmanager.ChipsLayoutManager;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.component.liveroom.R$mipmap;
import com.guochao.component.liveroom.databinding.FragmentCreateVoiceRoomBinding;
import com.guochao.component.voiceliveroom.fragment.CreateVoiceRoomFragment;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.component.voiceliveroom.model.VoiceRoomClassifyModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomCreateRoomModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.viewmodel.CreateVoiceRoomViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallbackKt;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u00029:B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010*\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010+H\u0002J$\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u00042\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u000401J\u000e\u00102\u001a\u00020-2\u0006\u0010\u0012\u001a\u00020\u0013J\u001a\u00103\u001a\u00020-2\u0006\u00104\u001a\u0002052\b\u00106\u001a\u0004\u0018\u000107H\u0014J\u0006\u00108\u001a\u00020-R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR$\u0010\u001d\u001a\u00020\u001e8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u001f\u0010\u0002\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001b\u0010$\u001a\u00020%8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b&\u0010'¨\u0006;"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;", "Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;", "()V", "bgUrl", "", "getBgUrl", "()Ljava/lang/String;", "setBgUrl", "(Ljava/lang/String;)V", "coverIV", "getCoverIV", "setCoverIV", "currentSelect", "", "getCurrentSelect", "()I", "setCurrentSelect", "(I)V", "iData", "Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$IData;", "imageView", "Landroid/widget/ImageView;", "getImageView", "()Landroid/widget/ImageView;", "setImageView", "(Landroid/widget/ImageView;)V", "titleTV", "getTitleTV", "setTitleTV", "viewBinding", "Lcom/guochao/component/liveroom/databinding/FragmentCreateVoiceRoomBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/FragmentCreateVoiceRoomBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/FragmentCreateVoiceRoomBinding;)V", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "buildTagIds", "", "createVoiceRoom", "", "title", "coverImg", "gcValueCallback", "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;", "getData", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "updateCoverAndTitle", "IData", "TagAdapter", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class CreateVoiceRoomFragment extends BaseGCLiveRoomFragment {
    @Nullable
    private String bgUrl;
    @Nullable
    private String coverIV;
    private int currentSelect;
    @Nullable
    private IData iData;
    @Nullable
    private ImageView imageView;
    @Nullable
    private String titleTV;
    public FragmentCreateVoiceRoomBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$IData;", "", "setData", "", DeviceRequestsHelper.DEVICE_INFO_MODEL, "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface IData {
        void setData(@Nullable VoiceRoomInfoModel voiceRoomInfoModel);
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\bH\u0016J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\bH\u0016R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "list", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;", "(Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;Ljava/util/List;)V", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class TagAdapter extends RecyclerView.Adapter<BaseViewHolder> {
        @Nullable
        private final List<VoiceRoomClassifyModel> list;

        public TagAdapter(@Nullable List<VoiceRoomClassifyModel> list) {
            this.list = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onBindViewHolder$lambda-1$lambda-0  reason: not valid java name */
        public static final void m264onBindViewHolder$lambda1$lambda0(CreateVoiceRoomFragment this$0, BaseViewHolder holder, TagAdapter this$1, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(holder, "$holder");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            this$0.setCurrentSelect(holder.getAbsoluteAdapterPosition());
            this$1.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<VoiceRoomClassifyModel> list = this.list;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull final BaseViewHolder holder, int i9) {
            VoiceRoomClassifyModel voiceRoomClassifyModel;
            Intrinsics.checkNotNullParameter(holder, "holder");
            List<VoiceRoomClassifyModel> list = this.list;
            if (list == null || (voiceRoomClassifyModel = list.get(i9)) == null) {
                return;
            }
            final CreateVoiceRoomFragment createVoiceRoomFragment = CreateVoiceRoomFragment.this;
            ((TextView) holder.getView(R$id.text)).setText(voiceRoomClassifyModel.getName());
            holder.itemView.setSelected(createVoiceRoomFragment.getCurrentSelect() == holder.getAbsoluteAdapterPosition());
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CreateVoiceRoomFragment.TagAdapter.m264onBindViewHolder$lambda1$lambda0(CreateVoiceRoomFragment.this, holder, this, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            View inflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.grid_item_tag_adapter, parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "from(parent.context)\n   …g_adapter, parent, false)");
            return new BaseViewHolder(inflate);
        }
    }

    public CreateVoiceRoomFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<CreateVoiceRoomViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.CreateVoiceRoomFragment$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CreateVoiceRoomViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, CreateVoiceRoomViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(CreateVoiceRoomViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.component.voiceliveroom.viewmodel.CreateVoiceRoomViewModel");
                return (CreateVoiceRoomViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        this.currentSelect = -1;
    }

    private final List<Integer> buildTagIds() {
        VoiceRoomInfoModel value;
        List<VoiceRoomClassifyModel> tagConfs;
        List<VoiceRoomClassifyModel> tagConfs2;
        int i9 = this.currentSelect;
        if (i9 != -1) {
            VoiceRoomInfoModel value2 = getViewModel().getVoiceRoomInfo().getValue();
            if (i9 >= ((value2 == null || (tagConfs2 = value2.getTagConfs()) == null) ? 0 : tagConfs2.size()) || (value = getViewModel().getVoiceRoomInfo().getValue()) == null || (tagConfs = value.getTagConfs()) == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(Integer.valueOf(tagConfs.get(this.currentSelect).getId()));
            return arrayList;
        }
        return null;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m263initView$lambda1(CreateVoiceRoomFragment this$0, VoiceRoomInfoModel voiceRoomInfoModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (voiceRoomInfoModel == null) {
            return;
        }
        if (voiceRoomInfoModel.getId() != -1) {
            this$0.coverIV = voiceRoomInfoModel.getCoverImgUrl();
            this$0.titleTV = voiceRoomInfoModel.getTitle();
            this$0.getViewBinding().recyclerView.setVisibility(4);
            this$0.getViewBinding().tags.setVisibility(4);
            this$0.currentSelect = -1;
            IData iData = this$0.iData;
            if (iData != null) {
                iData.setData(voiceRoomInfoModel);
            }
        } else {
            this$0.getViewBinding().recyclerView.setVisibility(0);
            this$0.getViewBinding().tags.setVisibility(0);
            this$0.currentSelect = 0;
            this$0.getViewBinding().recyclerView.setAdapter(new TagAdapter(voiceRoomInfoModel.getTagConfs()));
        }
        ImageView imageView = this$0.imageView;
        if (imageView != null) {
            com.bumptech.glide.c.v(imageView).r(voiceRoomInfoModel.getBackImgUrl()).b0(R$mipmap.voice_room_create_bg).Q0(imageView);
        }
        this$0.bgUrl = voiceRoomInfoModel.getBackImgUrl();
    }

    public final void createVoiceRoom(@NotNull String title, @NotNull String coverImg, @NotNull final GCValueCallback<String> gcValueCallback) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(coverImg, "coverImg");
        Intrinsics.checkNotNullParameter(gcValueCallback, "gcValueCallback");
        VoiceRoomInfoModel value = getViewModel().getVoiceRoomInfo().getValue();
        boolean z10 = false;
        if (value != null && value.getId() == -1) {
            z10 = true;
        }
        if (z10 && this.currentSelect < 0) {
            gcValueCallback.onValue("");
        } else {
            getViewModel().createRoom(new VoiceRoomCreateRoomModel(title, coverImg, buildTagIds(), null, 8, null), GCValueCallbackKt.callbackOnLifecycle(this, new Function1<String, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.CreateVoiceRoomFragment$createVoiceRoom$1
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

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull String it) {
                    String userId;
                    Intrinsics.checkNotNullParameter(it, "it");
                    gcValueCallback.onValue(it);
                    if (it.length() == 0) {
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    VoiceRoomInfoModel voiceRoomInfoModel = new VoiceRoomInfoModel(0, null, null, null, null, null, null, null, null, null, 0, 0, 0L, 0, null, 0, 0, 0L, 0L, null, 0L, 0, null, 0, null, null, 0, 0, null, null, null, null, 0, -1, 1, null);
                    UserSessionViewModel.Companion companion = UserSessionViewModel.Companion;
                    UserSessionModel current = companion.instance().current();
                    voiceRoomInfoModel.setRoomId(current != null ? current.getUserId() : null);
                    UserSessionModel current2 = companion.instance().current();
                    voiceRoomInfoModel.setUserId(current2 != null ? current2.getUserId() : null);
                    UserSessionModel current3 = companion.instance().current();
                    if (current3 != null && (userId = current3.getUserId()) != null) {
                        voiceRoomInfoModel.setId(Integer.parseInt(userId));
                    }
                    voiceRoomInfoModel.setChatGroupId(it);
                    arrayList.add(voiceRoomInfoModel);
                    Context context = this.getContext();
                    if (context != null) {
                        VoiceRoomMiniHelper.gotoVoiceRoom(context, 0, arrayList);
                    }
                    FragmentActivity activity = this.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                }
            }, new Function2<Integer, String, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.CreateVoiceRoomFragment$createVoiceRoom$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: invoke */
                public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, String str) {
                    invoke(num.intValue(), str);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i9, @Nullable String str) {
                    gcValueCallback.onError(i9, str);
                }
            }));
        }
    }

    @Nullable
    public final String getBgUrl() {
        return this.bgUrl;
    }

    @Nullable
    public final String getCoverIV() {
        return this.coverIV;
    }

    public final int getCurrentSelect() {
        return this.currentSelect;
    }

    public final void getData(@NotNull IData iData) {
        Intrinsics.checkNotNullParameter(iData, "iData");
        this.iData = iData;
    }

    @Nullable
    public final ImageView getImageView() {
        return this.imageView;
    }

    @Nullable
    public final String getTitleTV() {
        return this.titleTV;
    }

    @NotNull
    public final FragmentCreateVoiceRoomBinding getViewBinding() {
        FragmentCreateVoiceRoomBinding fragmentCreateVoiceRoomBinding = this.viewBinding;
        if (fragmentCreateVoiceRoomBinding != null) {
            return fragmentCreateVoiceRoomBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @NotNull
    public final CreateVoiceRoomViewModel getViewModel() {
        return (CreateVoiceRoomViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        FragmentActivity activity = getActivity();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("voice_room_cover");
        UserSessionModel current = UserSessionViewModel.Companion.instance().current();
        sb2.append(current != null ? current.getUserId() : null);
        this.coverIV = SpUtils.getStr(activity, sb2.toString());
        getViewBinding().recyclerView.setLayoutManager(ChipsLayoutManager.G(requireContext()).a());
        getViewModel().getVoiceRoomInfo().observe(this, new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                CreateVoiceRoomFragment.m263initView$lambda1(CreateVoiceRoomFragment.this, (VoiceRoomInfoModel) obj);
            }
        });
        getViewModel().loadVoiceRoomInfo();
    }

    public final void setBgUrl(@Nullable String str) {
        this.bgUrl = str;
    }

    public final void setCoverIV(@Nullable String str) {
        this.coverIV = str;
    }

    public final void setCurrentSelect(int i9) {
        this.currentSelect = i9;
    }

    public final void setImageView(@Nullable ImageView imageView) {
        this.imageView = imageView;
    }

    public final void setTitleTV(@Nullable String str) {
        this.titleTV = str;
    }

    public final void setViewBinding(@NotNull FragmentCreateVoiceRoomBinding fragmentCreateVoiceRoomBinding) {
        Intrinsics.checkNotNullParameter(fragmentCreateVoiceRoomBinding, "<set-?>");
        this.viewBinding = fragmentCreateVoiceRoomBinding;
    }

    public final void updateCoverAndTitle() {
    }
}
