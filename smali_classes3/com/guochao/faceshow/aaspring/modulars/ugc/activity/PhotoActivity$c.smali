.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laa/b<",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$c;->a(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Z

    move-result p1

    return p1
.end method
