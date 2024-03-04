.class public final synthetic Lcom/guochao/faceshow/signin/fragment/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

.field public final synthetic b:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/fragment/l;->a:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/signin/fragment/l;->b:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/l;->a:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/fragment/l;->b:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$initView$2;->a(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Landroid/view/View;)V

    return-void
.end method
