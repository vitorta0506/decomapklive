.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$initView$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$initView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$initView$1$3",
        "Landroid/content/DialogInterface$OnKeyListener;",
        "onKey",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
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


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$initView$1$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$initView$1$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
