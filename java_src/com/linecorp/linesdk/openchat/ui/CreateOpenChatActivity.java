package com.linecorp.linesdk.openchat.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelProviders;
import androidx.lifecycle.g;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.linecorp.linesdk.ActionResult;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.R$id;
import com.linecorp.linesdk.R$layout;
import com.linecorp.linesdk.R$string;
import com.linecorp.linesdk.api.LineApiClientBuilder;
import com.linecorp.linesdk.auth.internal.b;
import com.linecorp.linesdk.openchat.OpenChatRoomInfo;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qc.c;
import rc.a;
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001f B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u001a\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0012\u0010\u0010\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014J\u0006\u0010\u0011\u001a\u00020\nR\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006!"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "", "initViewModel", "showAgreementWarningDialog", "launchLineApp", "Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;", "step", "", "addToBackStack", "", "addFragment", "Landroidx/fragment/app/Fragment;", "createFragment", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "goToNextScreen", "Lrc/a;", "lineApiClient$delegate", "Lkotlin/Lazy;", "getLineApiClient", "()Lrc/a;", "lineApiClient", "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;", "viewModel", "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;", "currentStep", "Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;", "<init>", "()V", "Companion", "CreateOpenChatStep", "line-sdk_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class CreateOpenChatActivity extends AppCompatActivity {
    private static final String ARG_CHANNEL_ID = "arg_channel_id";
    @NotNull
    public static final String ARG_ERROR_RESULT = "arg_error_result";
    @NotNull
    public static final String ARG_OPEN_CHATROOM_INFO = "arg_open_chatroom_info";
    public static final Companion Companion = new Companion(null);
    private HashMap _$_findViewCache;
    private CreateOpenChatStep currentStep;
    private final Lazy lineApiClient$delegate;
    private OpenChatInfoViewModel viewModel;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u001c\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\u0006\u0010\u0010\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;", "", "()V", "ARG_CHANNEL_ID", "", "ARG_ERROR_RESULT", "ARG_OPEN_CHATROOM_INFO", "createIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", RemoteMessageConst.Notification.CHANNEL_ID, "getChatRoomCreationResult", "Lcom/linecorp/linesdk/ActionResult;", "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;", "Lcom/linecorp/linesdk/LineApiError;", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "line-sdk_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final Intent createIntent(@NotNull Context context, @NotNull String str) {
            Intent putExtra = new Intent(context, CreateOpenChatActivity.class).putExtra(CreateOpenChatActivity.ARG_CHANNEL_ID, str);
            Intrinsics.checkExpressionValueIsNotNull(putExtra, "Intent(context, CreateOp…RG_CHANNEL_ID, channelId)");
            return putExtra;
        }

        @JvmStatic
        @NotNull
        public final ActionResult<OpenChatRoomInfo, LineApiError> getChatRoomCreationResult(@NotNull Intent intent) {
            Parcelable parcelableExtra = intent.getParcelableExtra(CreateOpenChatActivity.ARG_OPEN_CHATROOM_INFO);
            if (!(parcelableExtra instanceof OpenChatRoomInfo)) {
                parcelableExtra = null;
            }
            OpenChatRoomInfo openChatRoomInfo = (OpenChatRoomInfo) parcelableExtra;
            if (openChatRoomInfo != null) {
                return new ActionResult.Success(openChatRoomInfo);
            }
            Parcelable parcelableExtra2 = intent.getParcelableExtra(CreateOpenChatActivity.ARG_ERROR_RESULT);
            LineApiError lineApiError = parcelableExtra2 instanceof LineApiError ? parcelableExtra2 : null;
            if (lineApiError != null) {
                return new ActionResult.Error(lineApiError);
            }
            LineApiError lineApiError2 = LineApiError.DEFAULT;
            Intrinsics.checkExpressionValueIsNotNull(lineApiError2, "LineApiError.DEFAULT");
            return new ActionResult.Error(lineApiError2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;", "", "(Ljava/lang/String;I)V", "ChatroomInfo", "UserProfile", "line-sdk_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4.dex */
    public enum CreateOpenChatStep {
        ChatroomInfo,
        UserProfile
    }

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes4.dex */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CreateOpenChatStep.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[CreateOpenChatStep.ChatroomInfo.ordinal()] = 1;
            iArr[CreateOpenChatStep.UserProfile.ordinal()] = 2;
        }
    }

    public CreateOpenChatActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<a>() { // from class: com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity$lineApiClient$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final a invoke() {
                String stringExtra = CreateOpenChatActivity.this.getIntent().getStringExtra("arg_channel_id");
                if (stringExtra == null) {
                    stringExtra = "";
                }
                return new LineApiClientBuilder(CreateOpenChatActivity.this, stringExtra).build();
            }
        });
        this.lineApiClient$delegate = lazy;
        this.currentStep = CreateOpenChatStep.ChatroomInfo;
    }

    private final int addFragment(CreateOpenChatStep createOpenChatStep, boolean z10) {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        if (z10) {
            beginTransaction.addToBackStack(createOpenChatStep.name());
        }
        beginTransaction.replace(R$id.container, createFragment(createOpenChatStep));
        return beginTransaction.commit();
    }

    static /* synthetic */ int addFragment$default(CreateOpenChatActivity createOpenChatActivity, CreateOpenChatStep createOpenChatStep, boolean z10, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            z10 = true;
        }
        return createOpenChatActivity.addFragment(createOpenChatStep, z10);
    }

    private final Fragment createFragment(CreateOpenChatStep createOpenChatStep) {
        int i9 = WhenMappings.$EnumSwitchMapping$0[createOpenChatStep.ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                return ProfileInfoFragment.Companion.newInstance();
            }
            throw new NoWhenBranchMatchedException();
        }
        return OpenChatInfoFragment.Companion.newInstance();
    }

    @JvmStatic
    @NotNull
    public static final Intent createIntent(@NotNull Context context, @NotNull String str) {
        return Companion.createIntent(context, str);
    }

    @JvmStatic
    @NotNull
    public static final ActionResult<OpenChatRoomInfo, LineApiError> getChatRoomCreationResult(@NotNull Intent intent) {
        return Companion.getChatRoomCreationResult(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final a getLineApiClient() {
        return (a) this.lineApiClient$delegate.getValue();
    }

    private final void initViewModel() {
        final SharedPreferences sharedPreferences = getSharedPreferences("openchat", 0);
        ViewModel viewModel = ViewModelProviders.of(this, new ViewModelProvider.Factory() { // from class: com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity$initViewModel$1
            @Override // androidx.lifecycle.ViewModelProvider.Factory
            public <T extends ViewModel> T create(@NotNull Class<T> cls) {
                a lineApiClient;
                if (cls.isAssignableFrom(OpenChatInfoViewModel.class)) {
                    SharedPreferences sharedPreferences2 = sharedPreferences;
                    Intrinsics.checkExpressionValueIsNotNull(sharedPreferences2, "sharedPreferences");
                    lineApiClient = CreateOpenChatActivity.this.getLineApiClient();
                    return new OpenChatInfoViewModel(sharedPreferences2, lineApiClient);
                }
                throw new IllegalStateException("Unknown ViewModel class".toString());
            }

            @Override // androidx.lifecycle.ViewModelProvider.Factory
            public /* synthetic */ ViewModel create(Class cls, CreationExtras creationExtras) {
                return g.b(this, cls, creationExtras);
            }
        }).get(OpenChatInfoViewModel.class);
        Intrinsics.checkExpressionValueIsNotNull(viewModel, "ViewModelProviders.of(\n …nfoViewModel::class.java]");
        OpenChatInfoViewModel openChatInfoViewModel = (OpenChatInfoViewModel) viewModel;
        this.viewModel = openChatInfoViewModel;
        if (openChatInfoViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        openChatInfoViewModel.getOpenChatRoomInfo().observe(this, new Observer<OpenChatRoomInfo>() { // from class: com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity$initViewModel$2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(OpenChatRoomInfo openChatRoomInfo) {
                CreateOpenChatActivity.this.setResult(-1, new Intent().putExtra(CreateOpenChatActivity.ARG_OPEN_CHATROOM_INFO, openChatRoomInfo));
                CreateOpenChatActivity.this.finish();
            }
        });
        OpenChatInfoViewModel openChatInfoViewModel2 = this.viewModel;
        if (openChatInfoViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        openChatInfoViewModel2.getCreateChatRoomError().observe(this, new Observer<c<OpenChatRoomInfo>>() { // from class: com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity$initViewModel$3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(c<OpenChatRoomInfo> lineApiResponse) {
                CreateOpenChatActivity createOpenChatActivity = CreateOpenChatActivity.this;
                Intent intent = new Intent();
                Intrinsics.checkExpressionValueIsNotNull(lineApiResponse, "lineApiResponse");
                createOpenChatActivity.setResult(-1, intent.putExtra(CreateOpenChatActivity.ARG_ERROR_RESULT, lineApiResponse.c()));
                CreateOpenChatActivity.this.finish();
            }
        });
        OpenChatInfoViewModel openChatInfoViewModel3 = this.viewModel;
        if (openChatInfoViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        openChatInfoViewModel3.isCreatingChatRoom().observe(this, new Observer<Boolean>() { // from class: com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity$initViewModel$4
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Boolean isCreatingChatRoom) {
                ProgressBar progressBar = (ProgressBar) CreateOpenChatActivity.this._$_findCachedViewById(R$id.progressBar);
                Intrinsics.checkExpressionValueIsNotNull(progressBar, "progressBar");
                Intrinsics.checkExpressionValueIsNotNull(isCreatingChatRoom, "isCreatingChatRoom");
                progressBar.setVisibility(isCreatingChatRoom.booleanValue() ? 0 : 8);
            }
        });
        OpenChatInfoViewModel openChatInfoViewModel4 = this.viewModel;
        if (openChatInfoViewModel4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        }
        openChatInfoViewModel4.getShouldShowAgreementWarning().observe(this, new Observer<Boolean>() { // from class: com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity$initViewModel$5
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Boolean shouldShowWarning) {
                Intrinsics.checkExpressionValueIsNotNull(shouldShowWarning, "shouldShowWarning");
                if (shouldShowWarning.booleanValue()) {
                    CreateOpenChatActivity.this.showAgreementWarningDialog();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void launchLineApp() {
        startActivity(getPackageManager().getLaunchIntentForPackage("jp.naver.line.android"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showAgreementWarningDialog() {
        final boolean z10 = b.a(this) != null;
        AlertDialog.Builder onDismissListener = new AlertDialog.Builder(this).setMessage(R$string.openchat_not_agree_with_terms).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity$showAgreementWarningDialog$1
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                CreateOpenChatActivity.this.finish();
            }
        });
        if (z10) {
            onDismissListener.setPositiveButton(R$string.open_line, new DialogInterface.OnClickListener() { // from class: com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity$showAgreementWarningDialog$$inlined$apply$lambda$1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i9) {
                    CreateOpenChatActivity.this.launchLineApp();
                }
            });
            onDismissListener.setNegativeButton(R$string.common_cancel, new DialogInterface.OnClickListener() { // from class: com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity$showAgreementWarningDialog$$inlined$apply$lambda$2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i9) {
                    CreateOpenChatActivity.this.finish();
                }
            });
        } else {
            onDismissListener.setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity$showAgreementWarningDialog$$inlined$apply$lambda$3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i9) {
                    CreateOpenChatActivity.this.finish();
                }
            });
        }
        onDismissListener.show();
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
            View findViewById = findViewById(i9);
            this._$_findViewCache.put(Integer.valueOf(i9), findViewById);
            return findViewById;
        }
        return view;
    }

    public final int goToNextScreen() {
        return addFragment$default(this, CreateOpenChatStep.UserProfile, false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_create_open_chat);
        initViewModel();
        addFragment(this.currentStep, false);
    }
}
