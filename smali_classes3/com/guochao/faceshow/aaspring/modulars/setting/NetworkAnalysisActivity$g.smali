.class Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$g;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "1"

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$g;->a(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
