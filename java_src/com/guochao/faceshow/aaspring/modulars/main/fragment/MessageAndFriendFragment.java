package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.viewpager.widget.ViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.modulars.chat.search.activity.SearchUserActivity;
import com.guochao.faceshow.aaspring.modulars.friend.FriendGroupMangerActivity;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel;
import com.guochao.faceshow.aaspring.utils.AppSettings;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.VideoPlayPauseUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.databinding.FragmentMessageAndFriendBinding;
import com.guochao.faceshow.views.e;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u0013H\u0016J\u000e\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001bJ\b\u0010\u001c\u001a\u00020\u0013H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001d"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "fragment", "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;)V", "viewModel", "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "select", "index", "", "showReadAllDialog", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MessageAndFriendFragment extends GCCoreFragment {
    @NotNull
    private final ConversationListFragmentV2 fragment;
    public FragmentMessageAndFriendBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    public MessageAndFriendFragment() {
        Lazy lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ConversationViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.MessageAndFriendFragment$special$$inlined$lazyGlobalViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ConversationViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, ConversationViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(ConversationViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel");
                return (ConversationViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        this.fragment = new ConversationListFragmentV2();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final ConversationViewModel getViewModel() {
        return (ConversationViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3$lambda-0  reason: not valid java name */
    public static final void m513initView$lambda3$lambda0(MessageAndFriendFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int currentItem = this$0.getViewBinding().viewPager.getCurrentItem();
        if (currentItem == 0) {
            SearchUserActivity.start(this$0.getContext());
            this$0.requireActivity().overridePendingTransition(0, 0);
        } else if (currentItem != 1) {
        } else {
            this$0.showReadAllDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3$lambda-2  reason: not valid java name */
    public static final void m514initView$lambda3$lambda2(MessageAndFriendFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int currentItem = this$0.getViewBinding().viewPager.getCurrentItem();
        if (currentItem != 0) {
            if (currentItem != 1) {
                return;
            }
            SearchUserActivity.start(this$0.getContext());
            this$0.requireActivity().overridePendingTransition(0, 0);
            return;
        }
        this$0.startActivity(new Intent(this$0.getActivity(), FriendGroupMangerActivity.class));
        this$0.getViewBinding().groupTips.setVisibility(8);
        AppSettings.setSetting(com.guochao.faceshow.aaspring.modulars.login.utils.e.b(this$0.getActivity()).userId + "friendGroup", true);
    }

    private final void showReadAllDialog() {
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(requireContext(), new e.a() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.o
            @Override // com.guochao.faceshow.views.e.a
            public final void onClick(Dialog dialog, boolean z10) {
                MessageAndFriendFragment.m515showReadAllDialog$lambda5(MessageAndFriendFragment.this, dialog, z10);
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar2) {
                com.guochao.faceshow.views.d.a(this, eVar2);
            }
        });
        eVar.b(getString(R.string.ignore_unread_title));
        eVar.f(getString(R.string.ignore_unread_content));
        eVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showReadAllDialog$lambda-5  reason: not valid java name */
    public static final void m515showReadAllDialog$lambda5(MessageAndFriendFragment this$0, Dialog dialog, boolean z10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z10) {
            this$0.getViewModel().readAll();
            dialog.dismiss();
        }
    }

    @NotNull
    public final FragmentMessageAndFriendBinding getViewBinding() {
        FragmentMessageAndFriendBinding fragmentMessageAndFriendBinding = this.viewBinding;
        if (fragmentMessageAndFriendBinding != null) {
            return fragmentMessageAndFriendBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        FragmentMessageAndFriendBinding viewBinding = getViewBinding();
        ViewPager viewPager = viewBinding.viewPager;
        final FragmentManager childFragmentManager = getChildFragmentManager();
        viewPager.setAdapter(new FragmentPagerAdapter(childFragmentManager) { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.MessageAndFriendFragment$initView$1$1
            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                return 2;
            }

            @Override // androidx.fragment.app.FragmentPagerAdapter
            @NotNull
            public Fragment getItem(int i9) {
                ConversationListFragmentV2 conversationListFragmentV2;
                if (i9 == 0) {
                    return new FriendListFragment();
                }
                conversationListFragmentV2 = MessageAndFriendFragment.this.fragment;
                return conversationListFragmentV2;
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            @Nullable
            public CharSequence getPageTitle(int i9) {
                if (i9 == 0) {
                    return MessageAndFriendFragment.this.getString(R.string.friends_text);
                }
                return MessageAndFriendFragment.this.getString(R.string.chat_1);
            }
        });
        viewBinding.tabs.setupWithViewPager(viewBinding.viewPager);
        viewBinding.viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.MessageAndFriendFragment$initView$1$2
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i9) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i9, float f10, int i10) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i9) {
                ConversationListFragmentV2 conversationListFragmentV2;
                ConversationListFragmentV2 conversationListFragmentV22;
                MessageAndFriendFragment.this.select(i9);
                if (i9 == 1) {
                    conversationListFragmentV2 = MessageAndFriendFragment.this.fragment;
                    if (conversationListFragmentV2.isAdded()) {
                        conversationListFragmentV22 = MessageAndFriendFragment.this.fragment;
                        conversationListFragmentV22.loadOnline();
                    }
                }
            }
        });
        viewBinding.menu1.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MessageAndFriendFragment.m513initView$lambda3$lambda0(MessageAndFriendFragment.this, view);
            }
        });
        viewBinding.viewPager.setCurrentItem(1);
        viewBinding.menuSearch.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MessageAndFriendFragment.m514initView$lambda3$lambda2(MessageAndFriendFragment.this, view);
            }
        });
        select(1);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        VideoPlayPauseUtils.startVideoPlayPause();
        StatusBarHelper.showStatusBar(getActivity(), true);
    }

    public final void select(int i9) {
        FragmentMessageAndFriendBinding viewBinding = getViewBinding();
        if (i9 == 0) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.im_friend_tab_click);
            viewBinding.menu1.setImageResource(R.mipmap.icon_im_search);
            viewBinding.menuSearch.setImageResource(R.mipmap.icon_friend_group);
            if (AppSettings.getSetting(com.guochao.faceshow.aaspring.modulars.login.utils.e.b(getActivity()).userId + "friendGroup")) {
                getViewBinding().groupTips.setVisibility(8);
            } else {
                getViewBinding().groupTips.setVisibility(0);
            }
        } else if (i9 == 1) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.im_page);
            viewBinding.menu1.setImageResource(R.mipmap.icon_im_clear);
            viewBinding.menuSearch.setImageResource(R.mipmap.icon_im_search);
            getViewBinding().groupTips.setVisibility(8);
        }
        viewBinding.viewPager.setCurrentItem(i9, true);
    }

    public final void setViewBinding(@NotNull FragmentMessageAndFriendBinding fragmentMessageAndFriendBinding) {
        Intrinsics.checkNotNullParameter(fragmentMessageAndFriendBinding, "<set-?>");
        this.viewBinding = fragmentMessageAndFriendBinding;
    }
}
