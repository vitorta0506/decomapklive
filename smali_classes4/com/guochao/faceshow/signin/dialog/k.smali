.class public final synthetic Lcom/guochao/faceshow/signin/dialog/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/signin/dialog/SignInDialog;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Landroid/view/ViewGroup;

.field public final synthetic e:Landroid/view/ViewGroup;

.field public final synthetic f:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/signin/dialog/SignInDialog;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/k;->a:Lcom/guochao/faceshow/signin/dialog/SignInDialog;

    iput-object p2, p0, Lcom/guochao/faceshow/signin/dialog/k;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/guochao/faceshow/signin/dialog/k;->c:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/guochao/faceshow/signin/dialog/k;->d:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/guochao/faceshow/signin/dialog/k;->e:Landroid/view/ViewGroup;

    iput-object p6, p0, Lcom/guochao/faceshow/signin/dialog/k;->f:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/k;->a:Lcom/guochao/faceshow/signin/dialog/SignInDialog;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/dialog/k;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/guochao/faceshow/signin/dialog/k;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/guochao/faceshow/signin/dialog/k;->d:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/guochao/faceshow/signin/dialog/k;->e:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/guochao/faceshow/signin/dialog/k;->f:Landroid/view/ViewGroup;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/guochao/faceshow/signin/dialog/SignInDialog;->V1(Lcom/guochao/faceshow/signin/dialog/SignInDialog;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
