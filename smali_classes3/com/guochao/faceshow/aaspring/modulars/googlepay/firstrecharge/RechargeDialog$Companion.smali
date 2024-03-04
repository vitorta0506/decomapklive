.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J-\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0002\u0010\u0016J7\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018H\u0007\u00a2\u0006\u0002\u0010\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;",
        "",
        "()V",
        "DRESS_UP_MARKET",
        "",
        "F2F_GIFT",
        "FILTER_1V1",
        "FROM_TASK",
        "IM_GIFT",
        "LIVE_GAME",
        "LIVE_GIFT",
        "TRTC_CALL",
        "TRTC_GIFT",
        "VIDEO_GIFT",
        "VOICE_ENTER",
        "VOICE_GIFT",
        "showDialog",
        "",
        "fm",
        "Landroidx/fragment/app/FragmentManager;",
        "type",
        "from",
        "(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "hideLessMoney",
        "",
        "(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;Z)V",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic showDialog$default(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic showDialog$default(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 3
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    return-void
.end method


# virtual methods
.method public final showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    return-void
.end method

.method public final showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;Z)V
    .locals 4
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const-string v1, "fm.fragments"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 4
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->isShow()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;-><init>()V

    .line 6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    const-string v3, "type"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_3

    .line 8
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_3
    const-string p2, "from"

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "hideLessMoney"

    .line 9
    invoke-virtual {v1, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 11
    const-class p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
