.class Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->g2(Landroid/view/View;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$e;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$e;->a(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Z

    move-result p1

    return p1
.end method
