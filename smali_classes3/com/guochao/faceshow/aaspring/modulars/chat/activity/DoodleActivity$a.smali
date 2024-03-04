.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->r0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->floatTitleBack:Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->r0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Z)Z

    return-void
.end method
