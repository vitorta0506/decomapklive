.class Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$d;
.super Lkc/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->a2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-direct {p0}, Lkc/f;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->U1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;I)I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->Q1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)V

    return-void
.end method

.method public e(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->T1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->X1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->V1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$d;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->Q1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B(Z)V

    :goto_0
    return-void
.end method
