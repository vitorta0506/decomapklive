.class Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a$a;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a$a;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->P1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a$a;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->P1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a$a;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->Q1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)V

    return-void
.end method
