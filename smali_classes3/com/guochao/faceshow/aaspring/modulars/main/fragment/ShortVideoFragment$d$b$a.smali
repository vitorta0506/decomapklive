.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->t:Z

    return-void
.end method
