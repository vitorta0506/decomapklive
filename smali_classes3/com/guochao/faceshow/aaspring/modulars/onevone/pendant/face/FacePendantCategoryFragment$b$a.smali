.class Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->d(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;Ljava/io/File;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->d:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->c:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ZipUtils;->UnZipFolder(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getFaceNXPath()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a$a;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->c:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->Q1()Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->c:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->Q1()Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-interface {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->setMotionTmpl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
