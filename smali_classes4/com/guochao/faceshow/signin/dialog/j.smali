.class public final synthetic Lcom/guochao/faceshow/signin/dialog/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/signin/dialog/SignInDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/signin/dialog/SignInDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/j;->a:Lcom/guochao/faceshow/signin/dialog/SignInDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/j;->a:Lcom/guochao/faceshow/signin/dialog/SignInDialog;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/signin/dialog/SignInDialog;->R1(Lcom/guochao/faceshow/signin/dialog/SignInDialog;Landroid/view/View;)V

    return-void
.end method
