.class public final Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;",
        "()V",
        "viewBinding",
        "Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;)V",
        "initView",
        "",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "Companion",
        "lib_sign_in_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public viewBinding:Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;->Companion:Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;-><init>()V

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;->initView$lambda-0(Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static final start(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;->Companion:Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity$Companion;->start(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;->viewBinding:Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->statusBarSpace:Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->ivLeftBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/signin/activity/g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/signin/activity/g;-><init>(Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/widget/TextView;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->tvTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->rulesTitle2:Landroid/widget/TextView;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->rulesTitle3:Landroid/widget/TextView;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setCustomBold([Landroid/widget/TextView;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->rulesContent2:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/guochao/faceshow/signin/R$string;->signin_center_primary_content2_1:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    sget v2, Lcom/guochao/faceshow/signin/R$string;->signin_center_primary_content2_2:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    sget v2, Lcom/guochao/faceshow/signin/R$string;->signin_center_primary_content2_3:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;->rulesContent3:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/guochao/faceshow/signin/R$string;->signin_center_primary_content3_1:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    sget v2, Lcom/guochao/faceshow/signin/R$string;->signin_center_primary_content3_2:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    sget v2, Lcom/guochao/faceshow/signin/R$string;->signin_center_primary_content3_3:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    sget v2, Lcom/guochao/faceshow/signin/R$string;->signin_center_primary_content3_4:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    sget v1, Lcom/guochao/faceshow/signin/R$string;->signin_center_primary_content3_5:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/activity/UserSigninCenterRulesActivity;->viewBinding:Lcom/guochao/faceshow/signin/databinding/ActivitySigninCenterRulesBinding;

    return-void
.end method
