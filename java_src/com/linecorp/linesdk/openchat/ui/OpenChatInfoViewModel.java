package com.linecorp.linesdk.openchat.ui;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.arch.core.util.Function;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.linecorp.linesdk.openchat.OpenChatCategory;
import com.linecorp.linesdk.openchat.OpenChatParameters;
import com.linecorp.linesdk.openchat.OpenChatRoomInfo;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.jetbrains.annotations.NotNull;
import qc.c;
import rc.a;
@Metadata(bv = {}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 >2\u00020\u0001:\u0001>B\u0017\u0012\u0006\u00101\u001a\u000200\u0012\u0006\u0010;\u001a\u00020:¢\u0006\u0004\b<\u0010=J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\u001b\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0012\u001a\u00020\u0002J!\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0013\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0014H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001aR\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00070\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001d\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070\u001b8\u0006¢\u0006\f\n\u0004\b \u0010\u001d\u001a\u0004\b!\u0010\u001fR\u001d\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00070\u001b8\u0006¢\u0006\f\n\u0004\b\"\u0010\u001d\u001a\u0004\b#\u0010\u001fR\u001d\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00100\u001b8\u0006¢\u0006\f\n\u0004\b$\u0010\u001d\u001a\u0004\b%\u0010\u001fR\u001d\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00180\u001b8\u0006¢\u0006\f\n\u0004\b&\u0010\u001d\u001a\u0004\b&\u0010\u001fR\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00150\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010\u001dR \u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010\u001dR\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00180\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010\u001dR\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00180\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010\u001dR\u001d\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00180+8\u0006¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b,\u0010.R\u001d\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00180+8\u0006¢\u0006\f\n\u0004\b/\u0010-\u001a\u0004\b/\u0010.R\u0014\u00101\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0017\u00104\u001a\b\u0012\u0004\u0012\u00020\u00150+8F¢\u0006\u0006\u001a\u0004\b3\u0010.R\u001d\u00106\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140+8F¢\u0006\u0006\u001a\u0004\b5\u0010.R\u0017\u00107\u001a\b\u0012\u0004\u0012\u00020\u00180+8F¢\u0006\u0006\u001a\u0004\b7\u0010.R\u0017\u00109\u001a\b\u0012\u0004\u0012\u00020\u00180+8F¢\u0006\u0006\u001a\u0004\b8\u0010.\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006?"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;", "Landroidx/lifecycle/ViewModel;", "", "checkAgreementStatus", "Lcom/linecorp/linesdk/openchat/OpenChatParameters;", "generateOpenChatParameters", "saveProfileName", "", "getSavedProfileName", "Landroid/content/Context;", "context", "", "getCategoryStringArray", "(Landroid/content/Context;)[Ljava/lang/String;", "", "position", "Lcom/linecorp/linesdk/openchat/OpenChatCategory;", "getSelectedCategory", "createChatroom", "openChatParameters", "Lqc/c;", "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;", "createChatRoomAsync", "(Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "checkAgreementStatusAsync", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/lifecycle/MutableLiveData;", "chatroomName", "Landroidx/lifecycle/MutableLiveData;", "getChatroomName", "()Landroidx/lifecycle/MutableLiveData;", "profileName", "getProfileName", "description", "getDescription", "category", "getCategory", "isSearchIncluded", "_openChatRoomInfo", "_createChatRoomError", "_isCreatingChatRoom", "_shouldShowAgreementWarning", "Landroidx/lifecycle/LiveData;", "isValid", "Landroidx/lifecycle/LiveData;", "()Landroidx/lifecycle/LiveData;", "isProfileValid", "Landroid/content/SharedPreferences;", "sharedPreferences", "Landroid/content/SharedPreferences;", "getOpenChatRoomInfo", "openChatRoomInfo", "getCreateChatRoomError", "createChatRoomError", "isCreatingChatRoom", "getShouldShowAgreementWarning", "shouldShowAgreementWarning", "Lrc/a;", "lineApiClient", "<init>", "(Landroid/content/SharedPreferences;Lrc/a;)V", "Companion", "line-sdk_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class OpenChatInfoViewModel extends ViewModel {
    public static final Companion Companion = new Companion(null);
    private static final OpenChatCategory DEFAULT_CATEGORY = OpenChatCategory.NotSelected;
    private static final String KEY_PROFILE_NAME = "key_profile_name";
    private final MutableLiveData<c<OpenChatRoomInfo>> _createChatRoomError;
    private final MutableLiveData<Boolean> _isCreatingChatRoom;
    private final MutableLiveData<OpenChatRoomInfo> _openChatRoomInfo;
    private final MutableLiveData<Boolean> _shouldShowAgreementWarning;
    @NotNull
    private final MutableLiveData<OpenChatCategory> category;
    @NotNull
    private final MutableLiveData<String> chatroomName;
    @NotNull
    private final MutableLiveData<String> description;
    @NotNull
    private final LiveData<Boolean> isProfileValid;
    @NotNull
    private final MutableLiveData<Boolean> isSearchIncluded;
    @NotNull
    private final LiveData<Boolean> isValid;
    private final a lineApiClient;
    @NotNull
    private final MutableLiveData<String> profileName;
    private final SharedPreferences sharedPreferences;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$Companion;", "", "()V", "DEFAULT_CATEGORY", "Lcom/linecorp/linesdk/openchat/OpenChatCategory;", "KEY_PROFILE_NAME", "", "line-sdk_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$sam$androidx_arch_core_util_Function$0] */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$sam$androidx_arch_core_util_Function$0] */
    public OpenChatInfoViewModel(@NotNull SharedPreferences sharedPreferences, @NotNull a aVar) {
        this.sharedPreferences = sharedPreferences;
        this.lineApiClient = aVar;
        MutableLiveData<String> mutableLiveData = new MutableLiveData<>();
        this.chatroomName = mutableLiveData;
        MutableLiveData<String> mutableLiveData2 = new MutableLiveData<>();
        this.profileName = mutableLiveData2;
        MutableLiveData<String> mutableLiveData3 = new MutableLiveData<>();
        this.description = mutableLiveData3;
        MutableLiveData<OpenChatCategory> mutableLiveData4 = new MutableLiveData<>();
        this.category = mutableLiveData4;
        MutableLiveData<Boolean> mutableLiveData5 = new MutableLiveData<>();
        this.isSearchIncluded = mutableLiveData5;
        this._openChatRoomInfo = new MutableLiveData<>();
        this._createChatRoomError = new MutableLiveData<>();
        this._isCreatingChatRoom = new MutableLiveData<>();
        this._shouldShowAgreementWarning = new MutableLiveData<>();
        final OpenChatInfoViewModel$isValid$1 openChatInfoViewModel$isValid$1 = OpenChatInfoViewModel$isValid$1.INSTANCE;
        LiveData<Boolean> map = Transformations.map(mutableLiveData, (Function) (openChatInfoViewModel$isValid$1 != null ? new Function() { // from class: com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$sam$androidx_arch_core_util_Function$0
            @Override // androidx.arch.core.util.Function
            public final /* synthetic */ Object apply(Object obj) {
                return Function1.this.invoke(obj);
            }
        } : openChatInfoViewModel$isValid$1));
        Intrinsics.checkExpressionValueIsNotNull(map, "Transformations.map(chat…Name, String::isNotEmpty)");
        this.isValid = map;
        final OpenChatInfoViewModel$isProfileValid$1 openChatInfoViewModel$isProfileValid$1 = OpenChatInfoViewModel$isProfileValid$1.INSTANCE;
        LiveData<Boolean> map2 = Transformations.map(mutableLiveData2, (Function) (openChatInfoViewModel$isProfileValid$1 != null ? new Function() { // from class: com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$sam$androidx_arch_core_util_Function$0
            @Override // androidx.arch.core.util.Function
            public final /* synthetic */ Object apply(Object obj) {
                return Function1.this.invoke(obj);
            }
        } : openChatInfoViewModel$isProfileValid$1));
        Intrinsics.checkExpressionValueIsNotNull(map2, "Transformations.map(prof…Name, String::isNotEmpty)");
        this.isProfileValid = map2;
        mutableLiveData.setValue("");
        mutableLiveData2.setValue(getSavedProfileName());
        mutableLiveData3.setValue("");
        mutableLiveData4.setValue(DEFAULT_CATEGORY);
        mutableLiveData5.setValue(Boolean.TRUE);
        checkAgreementStatus();
    }

    private final void checkAgreementStatus() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new OpenChatInfoViewModel$checkAgreementStatus$1(this, null), 3, null);
    }

    private final OpenChatParameters generateOpenChatParameters() {
        String value = this.chatroomName.getValue();
        String str = value != null ? value : "";
        String value2 = this.description.getValue();
        String str2 = value2 != null ? value2 : "";
        String value3 = this.profileName.getValue();
        String str3 = value3 != null ? value3 : "";
        OpenChatCategory value4 = this.category.getValue();
        if (value4 == null) {
            value4 = DEFAULT_CATEGORY;
        }
        OpenChatCategory openChatCategory = value4;
        Boolean value5 = this.isSearchIncluded.getValue();
        if (value5 == null) {
            value5 = Boolean.TRUE;
        }
        return new OpenChatParameters(str, str2, str3, openChatCategory, value5.booleanValue());
    }

    private final String getSavedProfileName() {
        String string = this.sharedPreferences.getString(KEY_PROFILE_NAME, null);
        return string != null ? string : "";
    }

    private final void saveProfileName() {
        SharedPreferences.Editor editor = this.sharedPreferences.edit();
        Intrinsics.checkExpressionValueIsNotNull(editor, "editor");
        editor.putString(KEY_PROFILE_NAME, this.profileName.getValue());
        editor.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object checkAgreementStatusAsync(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super qc.c<java.lang.Boolean>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$checkAgreementStatusAsync$1
            if (r0 == 0) goto L13
            r0 = r6
            com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$checkAgreementStatusAsync$1 r0 = (com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$checkAgreementStatusAsync$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$checkAgreementStatusAsync$1 r0 = new com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$checkAgreementStatusAsync$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r0 = r0.L$0
            com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel r0 = (com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4d
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.CoroutineDispatcher r6 = kotlinx.coroutines.Dispatchers.getIO()
            com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$checkAgreementStatusAsync$2 r2 = new com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$checkAgreementStatusAsync$2
            r4 = 0
            r2.<init>(r5, r4)
            r0.L$0 = r5
            r0.label = r3
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r6, r2, r0)
            if (r6 != r1) goto L4d
            return r1
        L4d:
            java.lang.String r0 = "withContext(Dispatchers.…openChatAgreementStatus }"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel.checkAgreementStatusAsync(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object createChatRoomAsync(@org.jetbrains.annotations.NotNull com.linecorp.linesdk.openchat.OpenChatParameters r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super qc.c<com.linecorp.linesdk.openchat.OpenChatRoomInfo>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$createChatRoomAsync$1
            if (r0 == 0) goto L13
            r0 = r7
            com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$createChatRoomAsync$1 r0 = (com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$createChatRoomAsync$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$createChatRoomAsync$1 r0 = new com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$createChatRoomAsync$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.L$1
            com.linecorp.linesdk.openchat.OpenChatParameters r6 = (com.linecorp.linesdk.openchat.OpenChatParameters) r6
            java.lang.Object r6 = r0.L$0
            com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel r6 = (com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel) r6
            kotlin.ResultKt.throwOnFailure(r7)
            goto L53
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.CoroutineDispatcher r7 = kotlinx.coroutines.Dispatchers.getIO()
            com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$createChatRoomAsync$2 r2 = new com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$createChatRoomAsync$2
            r4 = 0
            r2.<init>(r5, r6, r4)
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r7, r2, r0)
            if (r7 != r1) goto L53
            return r1
        L53:
            java.lang.String r6 = "withContext(Dispatchers.…oom(openChatParameters) }"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, r6)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel.createChatRoomAsync(com.linecorp.linesdk.openchat.OpenChatParameters, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void createChatroom() {
        saveProfileName();
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new OpenChatInfoViewModel$createChatroom$1(this, generateOpenChatParameters(), null), 3, null);
    }

    @NotNull
    public final MutableLiveData<OpenChatCategory> getCategory() {
        return this.category;
    }

    @NotNull
    public final String[] getCategoryStringArray(@NotNull Context context) {
        OpenChatCategory[] values = OpenChatCategory.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (OpenChatCategory openChatCategory : values) {
            arrayList.add(context.getResources().getString(openChatCategory.getResourceId()));
        }
        Object[] array = arrayList.toArray(new String[0]);
        if (array != null) {
            return (String[]) array;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @NotNull
    public final MutableLiveData<String> getChatroomName() {
        return this.chatroomName;
    }

    @NotNull
    public final LiveData<c<OpenChatRoomInfo>> getCreateChatRoomError() {
        return this._createChatRoomError;
    }

    @NotNull
    public final MutableLiveData<String> getDescription() {
        return this.description;
    }

    @NotNull
    public final LiveData<OpenChatRoomInfo> getOpenChatRoomInfo() {
        return this._openChatRoomInfo;
    }

    @NotNull
    public final MutableLiveData<String> getProfileName() {
        return this.profileName;
    }

    @NotNull
    public final OpenChatCategory getSelectedCategory(int i9) {
        int lastIndex;
        OpenChatCategory[] values = OpenChatCategory.values();
        if (i9 >= 0) {
            lastIndex = ArraysKt___ArraysKt.getLastIndex(values);
            if (i9 <= lastIndex) {
                return values[i9];
            }
        }
        return DEFAULT_CATEGORY;
    }

    @NotNull
    public final LiveData<Boolean> getShouldShowAgreementWarning() {
        return this._shouldShowAgreementWarning;
    }

    @NotNull
    public final LiveData<Boolean> isCreatingChatRoom() {
        return this._isCreatingChatRoom;
    }

    @NotNull
    public final LiveData<Boolean> isProfileValid() {
        return this.isProfileValid;
    }

    @NotNull
    public final MutableLiveData<Boolean> isSearchIncluded() {
        return this.isSearchIncluded;
    }

    @NotNull
    public final LiveData<Boolean> isValid() {
        return this.isValid;
    }
}
