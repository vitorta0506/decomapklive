.class public final synthetic Lcom/guochao/faceshow/signin/fragment/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

.field public final synthetic b:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/fragment/e;->a:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/signin/fragment/e;->b:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/e;->a:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/fragment/e;->b:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2;->b(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Landroid/view/View;)V

    return-void
.end method
