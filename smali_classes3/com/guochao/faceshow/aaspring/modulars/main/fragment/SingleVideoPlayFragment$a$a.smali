.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a;->a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->R2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->H2(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->S2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;)Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->T2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->K2(Lcom/guochao/faceshow/aaspring/beans/Comment;Z)V

    return-void
.end method
