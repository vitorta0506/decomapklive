.class public Lcom/facebook/login/widget/LoginButton;
.super Lcom/facebook/FacebookButtonBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/LoginButton$f;,
        Lcom/facebook/login/widget/LoginButton$e;,
        Lcom/facebook/login/widget/LoginButton$ToolTipMode;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field protected d:Lcom/facebook/login/widget/LoginButton$e;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/facebook/login/widget/ToolTipPopup$Style;

.field private h:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

.field private i:J

.field private j:Lcom/facebook/login/widget/ToolTipPopup;

.field private k:Lcom/facebook/AccessTokenTracker;

.field private l:Lcom/facebook/login/LoginManager;

.field private m:Ljava/lang/Float;

.field private n:I

.field private final o:Ljava/lang/String;

.field private p:Lcom/facebook/CallbackManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Landroidx/activity/result/ActivityResultLauncher;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/widget/LoginButton;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/widget/LoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/widget/LoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/widget/LoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/facebook/login/widget/LoginButton$e;

    invoke-direct {p1}, Lcom/facebook/login/widget/LoginButton$e;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    const-string p1, "fb_login_view_usage"

    .line 6
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->e:Ljava/lang/String;

    .line 7
    sget-object p1, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->g:Lcom/facebook/login/widget/ToolTipPopup$Style;

    const-wide/16 p1, 0x1770

    .line 8
    iput-wide p1, p0, Lcom/facebook/login/widget/LoginButton;->i:J

    const/16 p1, 0xff

    .line 9
    iput p1, p0, Lcom/facebook/login/widget/LoginButton;->n:I

    .line 10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->o:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->p:Lcom/facebook/CallbackManager;

    .line 12
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->q:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method static synthetic b(Lcom/facebook/login/widget/LoginButton;Lcom/facebook/internal/FetchedAppSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton;->t(Lcom/facebook/internal/FetchedAppSettings;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/login/widget/LoginButton;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->callExternalOnClickListener(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lcom/facebook/login/widget/LoginButton;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/login/widget/LoginButton;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/login/widget/LoginButton;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lcom/facebook/login/widget/LoginButton;->q:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/CallbackManager;
    .locals 0

    iget-object p0, p0, Lcom/facebook/login/widget/LoginButton;->p:Lcom/facebook/CallbackManager;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcom/facebook/login/widget/LoginButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/login/widget/LoginButton;->a:Z

    return p0
.end method

.method private j()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/login/widget/LoginButton$d;->a:[I

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->h:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/login/R$string;->com_facebook_tooltip_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/login/widget/LoginButton$b;

    invoke-direct {v2, p0, v0}, Lcom/facebook/login/widget/LoginButton$b;-><init>(Lcom/facebook/login/widget/LoginButton;Ljava/lang/String;)V

    .line 6
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    new-instance v0, Lcom/facebook/login/widget/ToolTipPopup;

    invoke-direct {v0, p1, p0}, Lcom/facebook/login/widget/ToolTipPopup;-><init>(Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->j:Lcom/facebook/login/widget/ToolTipPopup;

    .line 2
    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton;->g:Lcom/facebook/login/widget/ToolTipPopup$Style;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/ToolTipPopup;->g(Lcom/facebook/login/widget/ToolTipPopup$Style;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton;->j:Lcom/facebook/login/widget/ToolTipPopup;

    iget-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->i:J

    invoke-virtual {p1, v0, v1}, Lcom/facebook/login/widget/ToolTipPopup;->f(J)V

    .line 4
    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton;->j:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-virtual {p1}, Lcom/facebook/login/widget/ToolTipPopup;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private n(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->measureTextWidth(Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingLeft()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/Button;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingRight()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, p1

    return v0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private t(Lcom/facebook/internal/FetchedAppSettings;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/internal/FetchedAppSettings;->getNuxEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/facebook/internal/FetchedAppSettings;->getNuxContent()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton;->l(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getNewLoginClickListener()Lcom/facebook/login/widget/LoginButton$f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setInternalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/login/widget/LoginButton;->o(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/facebook/common/R$color;->com_facebook_blue:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string p1, "Continue with Facebook"

    .line 6
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->b:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lcom/facebook/login/widget/LoginButton$c;

    invoke-direct {p1, p0}, Lcom/facebook/login/widget/LoginButton$c;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->k:Lcom/facebook/AccessTokenTracker;

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->r()V

    .line 9
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->q()V

    .line 10
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->s()V

    .line 11
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallbackManager()Lcom/facebook/CallbackManager;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->p:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method public getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$e;->c()Lcom/facebook/login/DefaultAudience;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultRequestCode()I
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method protected getDefaultStyleResource()I
    .locals 1

    sget v0, Lcom/facebook/login/R$style;->com_facebook_loginview_default_style:I

    return v0
.end method

.method public getLoggerID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$e;->d()Lcom/facebook/login/LoginBehavior;

    move-result-object v0

    return-object v0
.end method

.method protected getLoginButtonContinueLabel()I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    sget v0, Lcom/facebook/login/R$string;->com_facebook_loginview_log_in_button_continue:I

    return v0
.end method

.method getLoginManager()Lcom/facebook/login/LoginManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lcom/facebook/login/LoginManager;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lcom/facebook/login/LoginManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->l:Lcom/facebook/login/LoginManager;

    return-object v0
.end method

.method public getLoginTargetApp()Lcom/facebook/login/LoginTargetApp;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$e;->e()Lcom/facebook/login/LoginTargetApp;

    move-result-object v0

    return-object v0
.end method

.method public getMessengerPageId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$e;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNewLoginClickListener()Lcom/facebook/login/widget/LoginButton$f;
    .locals 1

    new-instance v0, Lcom/facebook/login/widget/LoginButton$f;

    invoke-direct {v0, p0}, Lcom/facebook/login/widget/LoginButton$f;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$e;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResetMessengerState()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$e;->h()Z

    move-result v0

    return v0
.end method

.method public getShouldSkipAccountDeduplication()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$e;->i()Z

    move-result v0

    return v0
.end method

.method public getToolTipDisplayTime()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->i:J

    return-wide v0
.end method

.method public getToolTipMode()Lcom/facebook/login/widget/LoginButton$ToolTipMode;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->h:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->j:Lcom/facebook/login/widget/ToolTipPopup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup;->d()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->j:Lcom/facebook/login/widget/ToolTipPopup;

    :cond_0
    return-void
.end method

.method protected m(I)I
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 3
    sget v2, Lcom/facebook/login/R$string;->com_facebook_loginview_log_in_button_continue:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {p0, v2}, Lcom/facebook/login/widget/LoginButton;->n(Ljava/lang/String;)I

    move-result v3

    .line 5
    invoke-static {v3, p1}, Landroid/widget/Button;->resolveSize(II)I

    move-result p1

    if-ge p1, v3, :cond_1

    .line 6
    sget p1, Lcom/facebook/login/R$string;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/login/widget/LoginButton;->n(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method protected o(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->h:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/facebook/login/R$styleable;->com_facebook_login_view:[I

    .line 3
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    sget p2, Lcom/facebook/login/R$styleable;->com_facebook_login_view_com_facebook_confirm_logout:I

    const/4 p3, 0x1

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/facebook/login/widget/LoginButton;->a:Z

    .line 6
    sget p2, Lcom/facebook/login/R$styleable;->com_facebook_login_view_com_facebook_login_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton;->b:Ljava/lang/String;

    .line 7
    sget p2, Lcom/facebook/login/R$styleable;->com_facebook_login_view_com_facebook_logout_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    .line 8
    sget p2, Lcom/facebook/login/R$styleable;->com_facebook_login_view_com_facebook_tooltip_mode:I

    sget-object p3, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 9
    invoke-virtual {p3}, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->getValue()I

    move-result p3

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 11
    invoke-static {p2}, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->fromInt(I)Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton;->h:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 12
    sget p2, Lcom/facebook/login/R$styleable;->com_facebook_login_view_com_facebook_login_button_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton;->m:Ljava/lang/Float;

    .line 14
    :cond_1
    sget p2, Lcom/facebook/login/R$styleable;->com_facebook_login_view_com_facebook_login_button_transparency:I

    const/16 p3, 0xff

    .line 15
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/facebook/login/widget/LoginButton;->n:I

    if-gez p2, :cond_2

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcom/facebook/login/widget/LoginButton;->n:I

    .line 17
    :cond_2
    iget p2, p0, Lcom/facebook/login/widget/LoginButton;->n:I

    if-le p2, p3, :cond_3

    .line 18
    iput p3, p0, Lcom/facebook/login/widget/LoginButton;->n:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 21
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/facebook/FacebookButtonBase;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/activity/result/ActivityResultRegistryOwner;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/activity/result/ActivityResultRegistryOwner;

    .line 4
    invoke-interface {v0}, Landroidx/activity/result/ActivityResultRegistryOwner;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    const-string v1, "facebook-login"

    .line 5
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getLoginManager()Lcom/facebook/login/LoginManager;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton;->p:Lcom/facebook/CallbackManager;

    iget-object v4, p0, Lcom/facebook/login/widget/LoginButton;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/login/LoginManager;->createLogInActivityResultContract(Lcom/facebook/CallbackManager;Ljava/lang/String;)Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;

    move-result-object v2

    new-instance v3, Lcom/facebook/login/widget/LoginButton$a;

    invoke-direct {v3, p0}, Lcom/facebook/login/widget/LoginButton$a;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->q:Landroidx/activity/result/ActivityResultLauncher;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->isTracking()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->startTracking()V

    .line 9
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->q:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->k:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->stopTracking()V

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/facebook/FacebookButtonBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean p1, p0, Lcom/facebook/login/widget/LoginButton;->f:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/facebook/login/widget/LoginButton;->f:Z

    .line 4
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Landroid/widget/Button;->getCompoundPaddingTop()I

    move-result v0

    iget v1, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr v1, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p2, v1

    add-int/2addr v0, p2

    .line 4
    invoke-virtual {p0}, Landroid/widget/Button;->getCompoundPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    .line 5
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/LoginButton;->m(I)I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 8
    sget v2, Lcom/facebook/login/R$string;->com_facebook_loginview_log_out_button:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/login/widget/LoginButton;->n(Ljava/lang/String;)I

    move-result p2

    .line 10
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1}, Landroid/widget/Button;->resolveSize(II)I

    move-result p1

    .line 11
    invoke-virtual {p0, p1, v0}, Landroid/widget/Button;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected p()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$drawable;->com_facebook_button_icon:I

    .line 2
    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected q()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->m:Ljava/lang/Float;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_3

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_3

    .line 4
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 6
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_2

    .line 7
    iget-object v4, p0, Lcom/facebook/login/widget/LoginButton;->m:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_4

    .line 9
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 10
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->m:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected r()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget v1, Lcom/facebook/login/R$string;->com_facebook_loginview_log_out_button:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getLoginButtonContinueLabel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-direct {p0, v1}, Lcom/facebook/login/widget/LoginButton;->n(Ljava/lang/String;)I

    move-result v3

    if-le v3, v2, :cond_4

    .line 11
    sget v1, Lcom/facebook/login/R$string;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 13
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected s()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/facebook/login/widget/LoginButton;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$e;->j(Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/login/DefaultAudience;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$e;->k(Lcom/facebook/login/DefaultAudience;)V

    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/login/LoginBehavior;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$e;->l(Lcom/facebook/login/LoginBehavior;)V

    return-void
.end method

.method setLoginManager(Lcom/facebook/login/LoginManager;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->l:Lcom/facebook/login/LoginManager;

    return-void
.end method

.method public setLoginTargetApp(Lcom/facebook/login/LoginTargetApp;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$e;->m(Lcom/facebook/login/LoginTargetApp;)V

    return-void
.end method

.method public setLoginText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->r()V

    return-void
.end method

.method public setLogoutText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->r()V

    return-void
.end method

.method public setMessengerPageId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$e;->n(Ljava/lang/String;)V

    return-void
.end method

.method public setPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$e;->o(Ljava/util/List;)V

    return-void
.end method

.method public varargs setPermissions([Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$e;->o(Ljava/util/List;)V

    return-void
.end method

.method setProperties(Lcom/facebook/login/widget/LoginButton$e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$e;->o(Ljava/util/List;)V

    return-void
.end method

.method public varargs setPublishPermissions([Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$e;->o(Ljava/util/List;)V

    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$e;->o(Ljava/util/List;)V

    return-void
.end method

.method public varargs setReadPermissions([Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$e;->o(Ljava/util/List;)V

    return-void
.end method

.method public setResetMessengerState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->d:Lcom/facebook/login/widget/LoginButton$e;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$e;->p(Z)V

    return-void
.end method

.method public setToolTipDisplayTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/facebook/login/widget/LoginButton;->i:J

    return-void
.end method

.method public setToolTipMode(Lcom/facebook/login/widget/LoginButton$ToolTipMode;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->h:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    return-void
.end method

.method public setToolTipStyle(Lcom/facebook/login/widget/ToolTipPopup$Style;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->g:Lcom/facebook/login/widget/ToolTipPopup$Style;

    return-void
.end method
