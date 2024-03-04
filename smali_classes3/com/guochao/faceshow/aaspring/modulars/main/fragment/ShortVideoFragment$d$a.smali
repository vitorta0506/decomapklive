.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->H2(Ljava/lang/String;)V

    return-void
.end method
