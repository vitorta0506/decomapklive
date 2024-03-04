.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;->onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->j:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KEY_DATING_SQUARE_FIRST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "module_notification"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->svImage:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->ivImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->ivImage:Landroid/widget/ImageView;

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method
