.class public final synthetic Lcom/guochao/faceshow/mine/view/fragment/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

.field public final synthetic b:I

.field public final synthetic c:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;ILcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/f;->a:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

    iput p2, p0, Lcom/guochao/faceshow/mine/view/fragment/f;->b:I

    iput-object p3, p0, Lcom/guochao/faceshow/mine/view/fragment/f;->c:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/f;->a:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

    iget v1, p0, Lcom/guochao/faceshow/mine/view/fragment/f;->b:I

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/fragment/f;->c:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;->a(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;ILcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;Landroid/view/View;)V

    return-void
.end method
