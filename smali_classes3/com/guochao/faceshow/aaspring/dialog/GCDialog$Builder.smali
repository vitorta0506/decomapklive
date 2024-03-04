.class public final Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/dialog/GCDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010-\u001a\u00020\u00052\u0006\u0010.\u001a\u00020/J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0013J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0013J\u000e\u00100\u001a\u00020\u00002\u0006\u00101\u001a\u00020\rJ@\u00102\u001a\u00020\u00002\u001b\u0008\u0002\u0010\u0003\u001a\u0015\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u00a2\u0006\u0002\u0008\u00072\u001b\u0008\u0002\u0010\u001b\u001a\u0015\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u00a2\u0006\u0002\u0008\u0007J\u001a\u0010$\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u00132\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0012\u00103\u001a\u00020\u00002\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\rJ\u000e\u0010\'\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0013J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\rR-\u0010\u0003\u001a\u0015\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u00a2\u0006\u0002\u0008\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R-\u0010\u001b\u001a\u0015\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u00a2\u0006\u0002\u0008\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\t\"\u0004\u0008\u001d\u0010\u000bR\u001a\u0010\u001e\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000f\"\u0004\u0008 \u0010\u0011R\u001c\u0010!\u001a\u0004\u0018\u00010\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000f\"\u0004\u0008#\u0010\u0011R\u001a\u0010$\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0015\"\u0004\u0008&\u0010\u0017R\u001a\u0010\'\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0015\"\u0004\u0008)\u0010\u0017R\u001a\u0010*\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u000f\"\u0004\u0008,\u0010\u0011\u00a8\u00065"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;",
        "",
        "()V",
        "cancel",
        "Lkotlin/Function1;",
        "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "getCancel$lib_core_release",
        "()Lkotlin/jvm/functions/Function1;",
        "setCancel$lib_core_release",
        "(Lkotlin/jvm/functions/Function1;)V",
        "cancelText",
        "",
        "getCancelText$lib_core_release",
        "()Ljava/lang/CharSequence;",
        "setCancelText$lib_core_release",
        "(Ljava/lang/CharSequence;)V",
        "cancellableOnBack",
        "",
        "getCancellableOnBack$lib_core_release",
        "()Z",
        "setCancellableOnBack$lib_core_release",
        "(Z)V",
        "cancellableOnTouchOutside",
        "getCancellableOnTouchOutside$lib_core_release",
        "setCancellableOnTouchOutside$lib_core_release",
        "confirm",
        "getConfirm$lib_core_release",
        "setConfirm$lib_core_release",
        "content",
        "getContent$lib_core_release",
        "setContent$lib_core_release",
        "okText",
        "getOkText$lib_core_release",
        "setOkText$lib_core_release",
        "showCancel",
        "getShowCancel$lib_core_release",
        "setShowCancel$lib_core_release",
        "singleButton",
        "getSingleButton$lib_core_release",
        "setSingleButton$lib_core_release",
        "title",
        "getTitle$lib_core_release",
        "setTitle$lib_core_release",
        "build",
        "context",
        "Landroid/content/Context;",
        "contentText",
        "text",
        "onClick",
        "showConfirm",
        "single",
        "lib_core_release"
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
.field private cancel:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cancelText:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cancellableOnBack:Z

.field private cancellableOnTouchOutside:Z

.field private confirm:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private content:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private okText:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private showCancel:Z

.field private singleButton:Z

.field private title:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->title:Ljava/lang/CharSequence;

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->content:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->showCancel:Z

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->cancellableOnBack:Z

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->cancellableOnTouchOutside:Z

    return-void
.end method

.method public static synthetic onClick$default(Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic showCancel$default(Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;ZLjava/lang/CharSequence;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->showCancel(ZLjava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic showConfirm$default(Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Ljava/lang/CharSequence;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->showConfirm(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final cancellableOnBack(Z)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->cancellableOnBack:Z

    return-object p0
.end method

.method public final cancellableOnTouchOutside(Z)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->cancellableOnTouchOutside:Z

    return-object p0
.end method

.method public final contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->content:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getCancel$lib_core_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->cancel:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getCancelText$lib_core_release()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->cancelText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getCancellableOnBack$lib_core_release()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->cancellableOnBack:Z

    return v0
.end method

.method public final getCancellableOnTouchOutside$lib_core_release()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->cancellableOnTouchOutside:Z

    return v0
.end method

.method public final getConfirm$lib_core_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->confirm:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getContent$lib_core_release()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->content:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getOkText$lib_core_release()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->okText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getShowCancel$lib_core_release()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->showCancel:Z

    return v0
.end method

.method public final getSingleButton$lib_core_release()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->singleButton:Z

    return v0
.end method

.method public final getTitle$lib_core_release()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final onClick(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->cancel:Lkotlin/jvm/functions/Function1;

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->confirm:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final setCancel$lib_core_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->cancel:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setCancelText$lib_core_release(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->cancelText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setCancellableOnBack$lib_core_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->cancellableOnBack:Z

    return-void
.end method

.method public final setCancellableOnTouchOutside$lib_core_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->cancellableOnTouchOutside:Z

    return-void
.end method

.method public final setConfirm$lib_core_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->confirm:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setContent$lib_core_release(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->content:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setOkText$lib_core_release(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->okText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setShowCancel$lib_core_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->showCancel:Z

    return-void
.end method

.method public final setSingleButton$lib_core_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->singleButton:Z

    return-void
.end method

.method public final setTitle$lib_core_release(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method public final showCancel(ZLjava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;
    .locals 0
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->showCancel:Z

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->cancelText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final showConfirm(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->okText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final singleButton(Z)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->singleButton:Z

    return-object p0
.end method

.method public final title(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method
