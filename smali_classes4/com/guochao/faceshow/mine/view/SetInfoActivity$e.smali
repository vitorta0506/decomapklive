.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->k1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$e;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$e;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->g1(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$e;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->m0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Landroid/app/Dialog;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$e;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->n0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Landroid/app/Dialog;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
