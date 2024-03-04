.class public Lcom/guochao/faceshow/aaspring/views/doodle/dialog/DoodleTextDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/doodle/dialog/DoodleTextDialog;Landroid/view/View;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0c55

    const-string v0, "field \'tvCancel\' and method \'onViewClicked\'"

    .line 2
    invoke-static {p2, p1, v0}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 3
    const-class v0, Landroid/widget/TextView;

    const-string v1, "field \'tvCancel\'"

    invoke-static {p2, p1, v1, v0}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
