package com.linecorp.linesdk.openchat.ui;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProviders;
import com.linecorp.linesdk.R$id;
import com.linecorp.linesdk.R$menu;
import com.linecorp.linesdk.R$string;
import com.linecorp.linesdk.databinding.ProfileInfoFragmentBinding;
import com.linecorp.linesdk.openchat.KotlinExtensionsKt;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0002J\u0012\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\f\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\u0013\u001a\u00020\bH\u0002J\b\u0010\u0014\u001a\u00020\bH\u0002J\b\u0010\u0015\u001a\u00020\bH\u0002J\b\u0010\u0016\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;", "Landroidx/fragment/app/Fragment;", "()V", "binding", "Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;", "viewModel", "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;", "dismissKeyboard", "", "onActivityCreated", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "setupProfileName", "setupProfileNameGuide", "setupToolbar", "setupViews", "Companion", "line-sdk_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final class ProfileInfoFragment extends Fragment {
    public static final Companion Companion = new Companion(null);
    private HashMap _$_findViewCache;
    private ProfileInfoFragmentBinding binding;
    private OpenChatInfoViewModel viewModel;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;", "", "()V", "newInstance", "Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;", "line-sdk_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ProfileInfoFragment newInstance() {
            return new ProfileInfoFragment();
        }
    }

    public static final /* synthetic */ OpenChatInfoViewModel access$getViewModel$p(ProfileInfoFragment profileInfoFragment) {
        OpenChatInfoViewModel openChatInfoViewModel = profileInfoFragment.viewModel;
        if (openChatInfoViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        return openChatInfoViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dismissKeyboard() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkExpressionValueIsNotNull(requireActivity, "requireActivity()");
        View currentFocus = requireActivity.getCurrentFocus();
        if (currentFocus != null) {
            Intrinsics.checkExpressionValueIsNotNull(currentFocus, "requireActivity().currentFocus ?: return");
            Object systemService = requireActivity().getSystemService("input_method");
            if (systemService != null) {
                ((InputMethodManager) systemService).hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        }
    }

    private final void setupProfileName() {
        EditText displayNameEditText = (EditText) _$_findCachedViewById(R$id.displayNameEditText);
        Intrinsics.checkExpressionValueIsNotNull(displayNameEditText, "displayNameEditText");
        KotlinExtensionsKt.addAfterTextChangedAction(displayNameEditText, new Function1<String, Unit>() { // from class: com.linecorp.linesdk.openchat.ui.ProfileInfoFragment$setupProfileName$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String str) {
                ProfileInfoFragment.access$getViewModel$p(ProfileInfoFragment.this).getProfileName().setValue(str);
            }
        });
    }

    private final void setupProfileNameGuide() {
        TextView displayNameGuide = (TextView) _$_findCachedViewById(R$id.displayNameGuide);
        Intrinsics.checkExpressionValueIsNotNull(displayNameGuide, "displayNameGuide");
        Resources resources = getResources();
        int i9 = R$string.openchat_create_profile_input_guide;
        Object[] objArr = new Object[1];
        OpenChatInfoViewModel openChatInfoViewModel = this.viewModel;
        if (openChatInfoViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        objArr[0] = openChatInfoViewModel.getChatroomName().getValue();
        displayNameGuide.setText(resources.getString(i9, objArr));
    }

    private final void setupToolbar() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkExpressionValueIsNotNull(requireActivity, "requireActivity()");
        Toolbar toolbar = (Toolbar) requireActivity.findViewById(R$id.toolbar);
        toolbar.setTitle(getString(R$string.openchat_create_profile_title));
        toolbar.getMenu().clear();
        toolbar.inflateMenu(R$menu.menu_profile_info);
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "toolbar");
        final MenuItem findItem = toolbar.getMenu().findItem(R$id.menu_item_create_profile_done);
        findItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.linecorp.linesdk.openchat.ui.ProfileInfoFragment$setupToolbar$1
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                Intrinsics.checkExpressionValueIsNotNull(menuItem, "menuItem");
                if (menuItem.getItemId() == R$id.menu_item_create_profile_done) {
                    ProfileInfoFragment.this.dismissKeyboard();
                    ProfileInfoFragment.access$getViewModel$p(ProfileInfoFragment.this).createChatroom();
                    return true;
                }
                return false;
            }
        });
        OpenChatInfoViewModel openChatInfoViewModel = this.viewModel;
        if (openChatInfoViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        openChatInfoViewModel.isProfileValid().observe(this, new Observer<Boolean>() { // from class: com.linecorp.linesdk.openchat.ui.ProfileInfoFragment$setupToolbar$2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Boolean bool) {
                MenuItem doneMenuItem = findItem;
                Intrinsics.checkExpressionValueIsNotNull(doneMenuItem, "doneMenuItem");
                doneMenuItem.setEnabled(bool != null ? bool.booleanValue() : false);
            }
        });
    }

    private final void setupViews() {
        setupToolbar();
        setupProfileName();
        setupProfileNameGuide();
    }

    public void _$_clearFindViewByIdCache() {
        HashMap hashMap = this._$_findViewCache;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public View _$_findCachedViewById(int i9) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i9));
        if (view == null) {
            View view2 = getView();
            if (view2 == null) {
                return null;
            }
            View findViewById = view2.findViewById(i9);
            this._$_findViewCache.put(Integer.valueOf(i9), findViewById);
            return findViewById;
        }
        return view;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        ViewModel viewModel = ViewModelProviders.of(requireActivity()).get(OpenChatInfoViewModel.class);
        Intrinsics.checkExpressionValueIsNotNull(viewModel, "ViewModelProviders.of(re…nfoViewModel::class.java)");
        this.viewModel = (OpenChatInfoViewModel) viewModel;
        ProfileInfoFragmentBinding profileInfoFragmentBinding = this.binding;
        if (profileInfoFragmentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        OpenChatInfoViewModel openChatInfoViewModel = this.viewModel;
        if (openChatInfoViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        profileInfoFragmentBinding.setViewModel(openChatInfoViewModel);
        setupViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        ProfileInfoFragmentBinding inflate = ProfileInfoFragmentBinding.inflate(layoutInflater, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(inflate, "ProfileInfoFragmentBindi…flater, container, false)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        inflate.setLifecycleOwner(this);
        ProfileInfoFragmentBinding profileInfoFragmentBinding = this.binding;
        if (profileInfoFragmentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return profileInfoFragmentBinding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }
}
