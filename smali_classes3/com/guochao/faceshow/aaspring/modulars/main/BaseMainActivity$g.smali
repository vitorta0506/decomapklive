.class Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$g$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$g$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$g;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/manager/a;->s(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-void
.end method
