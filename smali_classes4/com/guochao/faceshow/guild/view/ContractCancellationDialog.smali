.class public final Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;
.super Lcom/guochao/faceshow/guild/view/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J&\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;",
        "Lcom/guochao/faceshow/guild/view/BaseDialogFragment;",
        "contractHistoryBean",
        "Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;",
        "(Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;)V",
        "mContractHistoryBean",
        "mOnMenuClickListener",
        "Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;",
        "getMOnMenuClickListener",
        "()Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;",
        "setMOnMenuClickListener",
        "(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;)V",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "",
        "OnMenuClickListener",
        "component_guild_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private mContractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mOnMenuClickListener:Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "contractHistoryBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/view/BaseDialogFragment;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;->mContractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;->onCreateView$lambda-1(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;->onCreateView$lambda-0(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreateView$lambda-0(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;->mOnMenuClickListener:Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;->confirm()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private static final onCreateView$lambda-1(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getMOnMenuClickListener()Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;->mOnMenuClickListener:Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p3, Lcom/guochao/faceshow/guild/R$layout;->cancel_contract_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_1
    sget p2, Lcom/guochao/faceshow/guild/R$id;->guild_id:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lcom/guochao/faceshow/guild/R$string;->guild_id_tips:I

    new-array v2, p3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;->mContractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getGuildId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget p2, Lcom/guochao/faceshow/guild/R$id;->guild_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lcom/guochao/faceshow/guild/R$string;->guild_name_tips:I

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;->mContractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    invoke-virtual {p0, v1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget p2, Lcom/guochao/faceshow/guild/R$id;->confirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p3, Lcom/guochao/faceshow/guild/view/d;

    invoke-direct {p3, p0}, Lcom/guochao/faceshow/guild/view/d;-><init>(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget p2, Lcom/guochao/faceshow/guild/R$id;->cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p3, Lcom/guochao/faceshow/guild/view/c;

    invoke-direct {p3, p0}, Lcom/guochao/faceshow/guild/view/c;-><init>(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void
.end method

.method public final setMOnMenuClickListener(Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/guild/view/ContractCancellationDialog;->mOnMenuClickListener:Lcom/guochao/faceshow/guild/view/ContractCancellationDialog$OnMenuClickListener;

    return-void
.end method
