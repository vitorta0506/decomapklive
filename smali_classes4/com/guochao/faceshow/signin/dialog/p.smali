.class public final synthetic Lcom/guochao/faceshow/signin/dialog/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/p;->a:Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/p;->a:Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->P1(Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;Landroid/view/View;)V

    return-void
.end method
