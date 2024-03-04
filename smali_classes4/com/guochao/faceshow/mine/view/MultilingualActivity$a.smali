.class Lcom/guochao/faceshow/mine/view/MultilingualActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/MultilingualActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/MultilingualActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$a;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    const-class p1, Lcom/guochao/faceshow/activity/MainActivity;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/guochao/faceshow/BaseAppContext;->isChange:Z

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->killActivity(Ljava/lang/Class;)V

    .line 3
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$a;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->b0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq7/a;->o(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->y()V

    .line 5
    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->releaseAll()V

    .line 6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$a;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p1, 0x10008000

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$a;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$a;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method
