.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lwd/j;)V
    .locals 1
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;)I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;Ljava/lang/String;)V

    return-void
.end method
