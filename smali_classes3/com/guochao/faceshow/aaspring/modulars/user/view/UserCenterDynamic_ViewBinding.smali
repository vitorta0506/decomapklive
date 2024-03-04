.class public Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterDynamic_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterDynamic;Landroid/view/View;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class p1, Lcom/guochao/faceshow/aaspring/views/RoundImageView;

    const v0, 0x7f0a03da

    const-string v1, "field \'firstImage\'"

    invoke-static {p2, v0, v1, p1}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/RoundImageView;

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
