package com.linecorp.linesdk.openchat.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.IntegerRes;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProviders;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.linecorp.linesdk.R$id;
import com.linecorp.linesdk.R$integer;
import com.linecorp.linesdk.R$menu;
import com.linecorp.linesdk.R$string;
import com.linecorp.linesdk.databinding.OpenChatInfoFragmentBinding;
import com.linecorp.linesdk.openchat.KotlinExtensionsKt;
import com.linecorp.linesdk.openchat.OpenChatCategory;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.IOUtils;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0012\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010\r\u001a\u00020\u000bH\u0002J\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\b\u0010\u0019\u001a\u00020\u000fH\u0002J\b\u0010\u001a\u001a\u00020\u000fH\u0002J\b\u0010\u001b\u001a\u00020\u000fH\u0002J\b\u0010\u001c\u001a\u00020\u000fH\u0002J\b\u0010\u001d\u001a\u00020\u000fH\u0002J\b\u0010\u001e\u001a\u00020\u000fH\u0002J\b\u0010\u001f\u001a\u00020\u000fH\u0002J\u0010\u0010 \u001a\n \"*\u0004\u0018\u00010!0!H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;", "Landroidx/fragment/app/Fragment;", "()V", "binding", "Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;", "viewModel", "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;", "generateTextLengthLimitString", "", ViewHierarchyConstants.TEXT_KEY, "limitResId", "", "getResourceInt", "resId", "onActivityCreated", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "setupCategoryLabel", "setupDescription", "setupName", "setupSearchOption", "setupToolbar", "setupViewModel", "setupViews", "showCategorySelectionDialog", "Landroidx/appcompat/app/AlertDialog;", "kotlin.jvm.PlatformType", "Companion", "line-sdk_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final class OpenChatInfoFragment extends Fragment {
    public static final Companion Companion = new Companion(null);
    private HashMap _$_findViewCache;
    private OpenChatInfoFragmentBinding binding;
    private OpenChatInfoViewModel viewModel;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;", "", "()V", "newInstance", "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;", "line-sdk_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final OpenChatInfoFragment newInstance() {
            return new OpenChatInfoFragment();
        }
    }

    public static final /* synthetic */ OpenChatInfoViewModel access$getViewModel$p(OpenChatInfoFragment openChatInfoFragment) {
        OpenChatInfoViewModel openChatInfoViewModel = openChatInfoFragment.viewModel;
        if (openChatInfoViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        return openChatInfoViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String generateTextLengthLimitString(String str, int i9) {
        int resourceInt = getResourceInt(i9);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str.length());
        sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
        sb2.append(resourceInt);
        return sb2.toString();
    }

    private final int getResourceInt(@IntegerRes int i9) {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkExpressionValueIsNotNull(requireActivity, "requireActivity()");
        return requireActivity.getResources().getInteger(i9);
    }

    private final void setupCategoryLabel() {
        ((TextView) _$_findCachedViewById(R$id.categoryLabelTextView)).setOnClickListener(new View.OnClickListener() { // from class: com.linecorp.linesdk.openchat.ui.OpenChatInfoFragment$setupCategoryLabel$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OpenChatInfoFragment.this.showCategorySelectionDialog();
            }
        });
    }

    private final void setupDescription() {
        EditText descriptionEditText = (EditText) _$_findCachedViewById(R$id.descriptionEditText);
        Intrinsics.checkExpressionValueIsNotNull(descriptionEditText, "descriptionEditText");
        OpenChatInfoViewModel openChatInfoViewModel = this.viewModel;
        if (openChatInfoViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        KotlinExtensionsKt.addAfterTextChangedAction(descriptionEditText, new OpenChatInfoFragment$setupDescription$1(openChatInfoViewModel.getDescription()));
    }

    private final void setupName() {
        EditText nameEditText = (EditText) _$_findCachedViewById(R$id.nameEditText);
        Intrinsics.checkExpressionValueIsNotNull(nameEditText, "nameEditText");
        OpenChatInfoViewModel openChatInfoViewModel = this.viewModel;
        if (openChatInfoViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        KotlinExtensionsKt.addAfterTextChangedAction(nameEditText, new OpenChatInfoFragment$setupName$1(openChatInfoViewModel.getChatroomName()));
    }

    private final void setupSearchOption() {
        ((CheckBox) _$_findCachedViewById(R$id.searchIncludedCheckBox)).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.linecorp.linesdk.openchat.ui.OpenChatInfoFragment$setupSearchOption$1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                OpenChatInfoFragment.access$getViewModel$p(OpenChatInfoFragment.this).isSearchIncluded().setValue(Boolean.valueOf(z10));
            }
        });
        ((ConstraintLayout) _$_findCachedViewById(R$id.searchIncludedContainer)).setOnClickListener(new View.OnClickListener() { // from class: com.linecorp.linesdk.openchat.ui.OpenChatInfoFragment$setupSearchOption$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ((CheckBox) OpenChatInfoFragment.this._$_findCachedViewById(R$id.searchIncludedCheckBox)).toggle();
            }
        });
    }

    private final void setupToolbar() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkExpressionValueIsNotNull(requireActivity, "requireActivity()");
        Toolbar toolbar = (Toolbar) requireActivity.findViewById(R$id.toolbar);
        toolbar.setTitle(getString(R$string.openchat_create_room_title));
        toolbar.getMenu().clear();
        toolbar.inflateMenu(R$menu.menu_openchat_info);
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "toolbar");
        final MenuItem findItem = toolbar.getMenu().findItem(R$id.menu_item_openchat_next);
        findItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.linecorp.linesdk.openchat.ui.OpenChatInfoFragment$setupToolbar$1
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                Intrinsics.checkExpressionValueIsNotNull(menuItem, "menuItem");
                if (menuItem.getItemId() == R$id.menu_item_openchat_next) {
                    FragmentActivity requireActivity2 = OpenChatInfoFragment.this.requireActivity();
                    if (requireActivity2 != null) {
                        ((CreateOpenChatActivity) requireActivity2).goToNextScreen();
                        return true;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity");
                }
                return false;
            }
        });
        OpenChatInfoViewModel openChatInfoViewModel = this.viewModel;
        if (openChatInfoViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        openChatInfoViewModel.isValid().observe(this, new Observer<Boolean>() { // from class: com.linecorp.linesdk.openchat.ui.OpenChatInfoFragment$setupToolbar$2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Boolean bool) {
                MenuItem nextMenuItem = findItem;
                Intrinsics.checkExpressionValueIsNotNull(nextMenuItem, "nextMenuItem");
                nextMenuItem.setEnabled(bool != null ? bool.booleanValue() : false);
            }
        });
    }

    private final void setupViewModel() {
        ViewModel viewModel = ViewModelProviders.of(requireActivity()).get(OpenChatInfoViewModel.class);
        Intrinsics.checkExpressionValueIsNotNull(viewModel, "ViewModelProviders.of(re…nfoViewModel::class.java)");
        this.viewModel = (OpenChatInfoViewModel) viewModel;
        OpenChatInfoFragmentBinding openChatInfoFragmentBinding = this.binding;
        if (openChatInfoFragmentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        OpenChatInfoViewModel openChatInfoViewModel = this.viewModel;
        if (openChatInfoViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        openChatInfoFragmentBinding.setViewModel(openChatInfoViewModel);
        OpenChatInfoViewModel openChatInfoViewModel2 = this.viewModel;
        if (openChatInfoViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        openChatInfoViewModel2.getChatroomName().observe(this, new Observer<String>() { // from class: com.linecorp.linesdk.openchat.ui.OpenChatInfoFragment$setupViewModel$1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(String name) {
                String generateTextLengthLimitString;
                TextView nameMaxTextView = (TextView) OpenChatInfoFragment.this._$_findCachedViewById(R$id.nameMaxTextView);
                Intrinsics.checkExpressionValueIsNotNull(nameMaxTextView, "nameMaxTextView");
                OpenChatInfoFragment openChatInfoFragment = OpenChatInfoFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(name, "name");
                generateTextLengthLimitString = openChatInfoFragment.generateTextLengthLimitString(name, R$integer.max_chatroom_name_length);
                nameMaxTextView.setText(generateTextLengthLimitString);
            }
        });
        OpenChatInfoViewModel openChatInfoViewModel3 = this.viewModel;
        if (openChatInfoViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        openChatInfoViewModel3.getDescription().observe(this, new Observer<String>() { // from class: com.linecorp.linesdk.openchat.ui.OpenChatInfoFragment$setupViewModel$2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(String name) {
                String generateTextLengthLimitString;
                TextView descriptionMaxTextView = (TextView) OpenChatInfoFragment.this._$_findCachedViewById(R$id.descriptionMaxTextView);
                Intrinsics.checkExpressionValueIsNotNull(descriptionMaxTextView, "descriptionMaxTextView");
                OpenChatInfoFragment openChatInfoFragment = OpenChatInfoFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(name, "name");
                generateTextLengthLimitString = openChatInfoFragment.generateTextLengthLimitString(name, R$integer.max_chatroom_description_length);
                descriptionMaxTextView.setText(generateTextLengthLimitString);
            }
        });
        OpenChatInfoViewModel openChatInfoViewModel4 = this.viewModel;
        if (openChatInfoViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        openChatInfoViewModel4.getCategory().observe(this, new Observer<OpenChatCategory>() { // from class: com.linecorp.linesdk.openchat.ui.OpenChatInfoFragment$setupViewModel$3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(OpenChatCategory openChatCategory) {
                if (openChatCategory != null) {
                    int resourceId = openChatCategory.getResourceId();
                    TextView categoryLabelTextView = (TextView) OpenChatInfoFragment.this._$_findCachedViewById(R$id.categoryLabelTextView);
                    Intrinsics.checkExpressionValueIsNotNull(categoryLabelTextView, "categoryLabelTextView");
                    categoryLabelTextView.setText(OpenChatInfoFragment.this.getResources().getString(resourceId));
                }
            }
        });
    }

    private final void setupViews() {
        setupToolbar();
        setupName();
        setupDescription();
        setupCategoryLabel();
        setupSearchOption();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AlertDialog showCategorySelectionDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(requireContext());
        OpenChatInfoViewModel openChatInfoViewModel = this.viewModel;
        if (openChatInfoViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        Context requireContext = requireContext();
        Intrinsics.checkExpressionValueIsNotNull(requireContext, "requireContext()");
        return builder.setItems(openChatInfoViewModel.getCategoryStringArray(requireContext), new DialogInterface.OnClickListener() { // from class: com.linecorp.linesdk.openchat.ui.OpenChatInfoFragment$showCategorySelectionDialog$1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i9) {
                OpenChatInfoFragment.access$getViewModel$p(OpenChatInfoFragment.this).getCategory().setValue(OpenChatInfoFragment.access$getViewModel$p(OpenChatInfoFragment.this).getSelectedCategory(i9));
            }
        }).show();
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
        setupViewModel();
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
        OpenChatInfoFragmentBinding inflate = OpenChatInfoFragmentBinding.inflate(layoutInflater, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(inflate, "OpenChatInfoFragmentBind…flater, container, false)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        inflate.setLifecycleOwner(this);
        OpenChatInfoFragmentBinding openChatInfoFragmentBinding = this.binding;
        if (openChatInfoFragmentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return openChatInfoFragmentBinding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }
}
