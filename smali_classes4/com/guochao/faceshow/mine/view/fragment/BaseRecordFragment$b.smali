.class Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$b;


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

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->S1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->U1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;I)I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->Q1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)V

    return-void
.end method
