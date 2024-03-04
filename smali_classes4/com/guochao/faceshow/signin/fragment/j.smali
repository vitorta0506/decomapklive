.class public final synthetic Lcom/guochao/faceshow/signin/fragment/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

.field public final synthetic b:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/fragment/j;->a:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    iput-object p2, p0, Lcom/guochao/faceshow/signin/fragment/j;->b:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/j;->a:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/fragment/j;->b:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$initView$2;->b(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;Landroid/view/View;)V

    return-void
.end method
