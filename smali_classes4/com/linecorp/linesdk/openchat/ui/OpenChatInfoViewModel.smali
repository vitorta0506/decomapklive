.class public final Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 >2\u00020\u0001:\u0001>B\u0017\u0012\u0006\u00101\u001a\u000200\u0012\u0006\u0010;\u001a\u00020:\u00a2\u0006\u0004\u0008<\u0010=J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u001b\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0012\u001a\u00020\u0002J!\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0013\u001a\u00020\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0014H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u001d\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u001d\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001d\u001a\u0004\u0008!\u0010\u001fR\u001d\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001d\u001a\u0004\u0008#\u0010\u001fR\u001d\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u001d\u001a\u0004\u0008%\u0010\u001fR\u001d\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u001d\u001a\u0004\u0008&\u0010\u001fR\u001a\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u001dR \u0010(\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u001dR\u001a\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010\u001dR\u001a\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010\u001dR\u001d\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00180+8\u0006\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008,\u0010.R\u001d\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00180+8\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u0010-\u001a\u0004\u0008/\u0010.R\u0014\u00101\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0017\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00150+8F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010.R\u001d\u00106\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140+8F\u00a2\u0006\u0006\u001a\u0004\u00085\u0010.R\u0017\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u00180+8F\u00a2\u0006\u0006\u001a\u0004\u00087\u0010.R\u0017\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u00180+8F\u00a2\u0006\u0006\u001a\u0004\u00088\u0010.\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006?"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "",
        "checkAgreementStatus",
        "Lcom/linecorp/linesdk/openchat/OpenChatParameters;",
        "generateOpenChatParameters",
        "saveProfileName",
        "",
        "getSavedProfileName",
        "Landroid/content/Context;",
        "context",
        "",
        "getCategoryStringArray",
        "(Landroid/content/Context;)[Ljava/lang/String;",
        "",
        "position",
        "Lcom/linecorp/linesdk/openchat/OpenChatCategory;",
        "getSelectedCategory",
        "createChatroom",
        "openChatParameters",
        "Lqc/c;",
        "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
        "createChatRoomAsync",
        "(Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "checkAgreementStatusAsync",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Landroidx/lifecycle/MutableLiveData;",
        "chatroomName",
        "Landroidx/lifecycle/MutableLiveData;",
        "getChatroomName",
        "()Landroidx/lifecycle/MutableLiveData;",
        "profileName",
        "getProfileName",
        "description",
        "getDescription",
        "category",
        "getCategory",
        "isSearchIncluded",
        "_openChatRoomInfo",
        "_createChatRoomError",
        "_isCreatingChatRoom",
        "_shouldShowAgreementWarning",
        "Landroidx/lifecycle/LiveData;",
        "isValid",
        "Landroidx/lifecycle/LiveData;",
        "()Landroidx/lifecycle/LiveData;",
        "isProfileValid",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "getOpenChatRoomInfo",
        "openChatRoomInfo",
        "getCreateChatRoomError",
        "createChatRoomError",
        "isCreatingChatRoom",
        "getShouldShowAgreementWarning",
        "shouldShowAgreementWarning",
        "Lrc/a;",
        "lineApiClient",
        "<init>",
        "(Landroid/content/SharedPreferences;Lrc/a;)V",
        "Companion",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$Companion;

.field private static final DEFAULT_CATEGORY:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field private static final KEY_PROFILE_NAME:Ljava/lang/String; = "key_profile_name"


# instance fields
.field private final _createChatRoomError:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lqc/c<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _isCreatingChatRoom:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _openChatRoomInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final _shouldShowAgreementWarning:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final category:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/linecorp/linesdk/openchat/OpenChatCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chatroomName:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final description:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isProfileValid:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isSearchIncluded:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isValid:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lineApiClient:Lrc/a;

.field private final profileName:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->Companion:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$Companion;

    sget-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->NotSelected:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    sput-object v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->DEFAULT_CATEGORY:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lrc/a;)V
    .locals 5
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrc/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->lineApiClient:Lrc/a;

    .line 2
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->chatroomName:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p2, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->profileName:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->description:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->category:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v2, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isSearchIncluded:Landroidx/lifecycle/MutableLiveData;

    .line 7
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->_openChatRoomInfo:Landroidx/lifecycle/MutableLiveData;

    .line 8
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->_createChatRoomError:Landroidx/lifecycle/MutableLiveData;

    .line 9
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->_isCreatingChatRoom:Landroidx/lifecycle/MutableLiveData;

    .line 10
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->_shouldShowAgreementWarning:Landroidx/lifecycle/MutableLiveData;

    .line 11
    sget-object v3, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$isValid$1;->INSTANCE:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$isValid$1;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$sam$androidx_arch_core_util_Function$0;

    invoke-direct {v4, v3}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$sam$androidx_arch_core_util_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v3, v4

    :cond_0
    check-cast v3, Landroidx/arch/core/util/Function;

    invoke-static {p1, v3}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    const-string v4, "Transformations.map(chat\u2026Name, String::isNotEmpty)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isValid:Landroidx/lifecycle/LiveData;

    .line 12
    sget-object v3, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$isProfileValid$1;->INSTANCE:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$isProfileValid$1;

    if-eqz v3, :cond_1

    new-instance v4, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$sam$androidx_arch_core_util_Function$0;

    invoke-direct {v4, v3}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$sam$androidx_arch_core_util_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v3, v4

    :cond_1
    check-cast v3, Landroidx/arch/core/util/Function;

    invoke-static {p2, v3}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    const-string v4, "Transformations.map(prof\u2026Name, String::isNotEmpty)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isProfileValid:Landroidx/lifecycle/LiveData;

    const-string v3, ""

    .line 13
    invoke-virtual {p1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 14
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getSavedProfileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 16
    sget-object p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->DEFAULT_CATEGORY:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 17
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 18
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->checkAgreementStatus()V

    return-void
.end method

.method public static final synthetic access$getLineApiClient$p(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)Lrc/a;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->lineApiClient:Lrc/a;

    return-object p0
.end method

.method public static final synthetic access$get_createChatRoomError$p(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->_createChatRoomError:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_isCreatingChatRoom$p(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->_isCreatingChatRoom:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_openChatRoomInfo$p(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->_openChatRoomInfo:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_shouldShowAgreementWarning$p(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->_shouldShowAgreementWarning:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private final checkAgreementStatus()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatus$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatus$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final generateOpenChatParameters()Lcom/linecorp/linesdk/openchat/OpenChatParameters;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->chatroomName:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->description:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 3
    :goto_1
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->profileName:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 4
    :goto_2
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->category:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->DEFAULT_CATEGORY:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    :goto_3
    move-object v6, v0

    .line 5
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isSearchIncluded:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 6
    new-instance v0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/linecorp/linesdk/openchat/OpenChatParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/openchat/OpenChatCategory;Z)V

    return-object v0
.end method

.method private final getSavedProfileName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_profile_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private final saveProfileName()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->profileName:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "key_profile_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method final synthetic checkAgreementStatusAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lqc/c<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatusAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatusAsync$1;

    iget v1, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatusAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatusAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatusAsync$1;

    invoke-direct {v0, p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatusAsync$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatusAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatusAsync$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatusAsync$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatusAsync$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatusAsync$2;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatusAsync$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$checkAgreementStatusAsync$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string/jumbo v0, "withContext(Dispatchers.\u2026openChatAgreementStatus }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method final synthetic createChatRoomAsync(Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lcom/linecorp/linesdk/openchat/OpenChatParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/openchat/OpenChatParameters;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lqc/c<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;

    iget v1, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;

    invoke-direct {v0, p0, p2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/linecorp/linesdk/openchat/OpenChatParameters;

    iget-object p1, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$2;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatRoomAsync$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string/jumbo p1, "withContext(Dispatchers.\u2026oom(openChatParameters) }"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final createChatroom()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->saveProfileName()V

    .line 2
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->generateOpenChatParameters()Lcom/linecorp/linesdk/openchat/OpenChatParameters;

    move-result-object v0

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v0, v2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getCategory()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/linecorp/linesdk/openchat/OpenChatCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->category:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCategoryStringArray(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->values()[Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->getResourceId()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v3, [Ljava/lang/String;

    .line 5
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getChatroomName()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->chatroomName:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCreateChatRoomError()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lqc/c<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->_createChatRoomError:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getDescription()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->description:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getOpenChatRoomInfo()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->_openChatRoomInfo:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getProfileName()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->profileName:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getSelectedCategory(I)Lcom/linecorp/linesdk/openchat/OpenChatCategory;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->values()[Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    move-result-object v0

    if-ltz p1, :cond_0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v1

    if-gt p1, v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->DEFAULT_CATEGORY:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    :goto_0
    return-object p1
.end method

.method public final getShouldShowAgreementWarning()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->_shouldShowAgreementWarning:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final isCreatingChatRoom()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->_isCreatingChatRoom:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final isProfileValid()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isProfileValid:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final isSearchIncluded()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isSearchIncluded:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final isValid()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isValid:Landroidx/lifecycle/LiveData;

    return-object v0
.end method
